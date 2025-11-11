#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPO_ROOT="$(cd "${VALIDATION_DIR}/.." && pwd)"
REPORT_DIR="${VALIDATION_DIR}/reports"

BASE_URL="${BASE_URL:-http://127.0.0.1:1313}"
PORT="${PORT:-1313}"
CHROME_BIN="${CHROME_PATH:-/usr/bin/chromium}"
REMOTE_DEBUGGING_PORT="${LIGHTHOUSE_PORT:-9222}"
USER_DATA_DIR="$(mktemp -d)"
TARGET_URL="${BASE_URL}"
SERVER_PID=""
CHROME_PID=""

mkdir -p "${REPORT_DIR}"

if [[ ! -x "${CHROME_BIN}" ]]; then
  echo "Chromium binary not found or not executable at ${CHROME_BIN}" >&2
  exit 1
fi

cd "${REPO_ROOT}"
hugo --gc --minify --buildDrafts=false --baseURL "${BASE_URL}" \
  > "${REPORT_DIR}/lighthouse-hugo-build.log" 2>&1

set +e
python3 -m http.server "${PORT}" --directory "public" \
  > "${REPORT_DIR}/lighthouse-http-server.log" 2>&1 &
SERVER_PID=$!
sleep 1
if ! ps -p ${SERVER_PID} > /dev/null 2>&1; then
  TARGET_URL="file://${REPO_ROOT}/public/index.html"
  SERVER_PID=""
else
  TARGET_URL="${BASE_URL}"
fi
set -e

cleanup() {
  if [[ -n "${SERVER_PID}" ]] && ps -p ${SERVER_PID} > /dev/null 2>&1; then
    kill ${SERVER_PID}
  fi
  if [[ -n "${CHROME_PID}" ]] && ps -p ${CHROME_PID} > /dev/null 2>&1; then
    kill ${CHROME_PID}
  fi
  if [[ -n "${USER_DATA_DIR}" ]] && [[ -d "${USER_DATA_DIR}" ]]; then
    rm -rf "${USER_DATA_DIR}"
  fi
}
trap cleanup EXIT

cd "${VALIDATION_DIR}"

if [[ -n "${SERVER_PID}" ]]; then
  npx wait-on "http://127.0.0.1:${PORT}" >/dev/null
elif [[ "${TARGET_URL}" =~ ^http ]]; then
  echo "Using externally supplied URL: ${TARGET_URL}" | tee "${REPORT_DIR}/lighthouse-remote.log"
else
  echo "Falling back to file-based Lighthouse run: ${TARGET_URL}" | tee "${REPORT_DIR}/lighthouse-fallback.log"
fi

CHROME_FLAGS=("--headless=new" "--remote-debugging-port=${REMOTE_DEBUGGING_PORT}" "--no-sandbox" "--disable-gpu" "--disable-dev-shm-usage" "--user-data-dir=${USER_DATA_DIR}" "about:blank")
if [[ "${TARGET_URL}" =~ ^file ]]; then
  CHROME_FLAGS+=("--allow-file-access-from-files" "--disable-web-security")
fi

set +e
"${CHROME_BIN}" "${CHROME_FLAGS[@]}" \
  > "${REPORT_DIR}/lighthouse-chrome.log" 2>&1 &
CHROME_PID=$!
sleep 2
if ! ps -p ${CHROME_PID} > /dev/null 2>&1; then
  echo "Chromium failed to start; see ${REPORT_DIR}/lighthouse-chrome.log" >&2
  exit 1
fi
set -e

npx wait-on "tcp:127.0.0.1:${REMOTE_DEBUGGING_PORT}" >/dev/null

lighthouse "${TARGET_URL}" \
  --preset=desktop \
  --only-categories=performance,accessibility,seo,best-practices \
  --output=json,html \
  --output-path "reports/lighthouse-desktop" \
  --port="${REMOTE_DEBUGGING_PORT}" \
  --hostname=127.0.0.1 \
  --quiet
