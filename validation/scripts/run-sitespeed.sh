#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPO_ROOT="$(cd "${VALIDATION_DIR}/.." && pwd)"
REPORT_DIR="${VALIDATION_DIR}/reports"
SITESPEED_REPORT_DIR="${REPORT_DIR}/sitespeed"
LOG_FILE="${REPORT_DIR}/perf-sitespeed-latest.log"

mkdir -p "${SITESPEED_REPORT_DIR}"
: > "${LOG_FILE}"

BASE_URL="${BASE_URL:-http://127.0.0.1:1313}"
PORT="${PORT:-1313}"
HOST_FROM_BASE="${BASE_URL#*://}"
HOST="${HOST_FROM_BASE%%:*}"
HOST="${HOST:-127.0.0.1}"

cd "${REPO_ROOT}"
hugo --gc --minify --buildDrafts=false --baseURL "${BASE_URL}" \
  > "${REPORT_DIR}/sitespeed-hugo-build.log" 2>&1

SERVER_PID=""

start_server() {
  if [[ "${BASE_URL}" =~ ^https?://(127\.0\.0\.1|localhost) ]]; then
    python3 -m http.server "${PORT}" --directory "public" \
      > "${REPORT_DIR}/sitespeed-http-server.log" 2>&1 &
    SERVER_PID=$!
    sleep 1
    if ! ps -p "${SERVER_PID}" >/dev/null 2>&1; then
      echo "Failed to start temporary HTTP server; see ${REPORT_DIR}/sitespeed-http-server.log" | tee -a "${LOG_FILE}"
      SERVER_PID=""
      return 1
    fi
  fi
  return 0
}

cleanup() {
  if [[ -n "${SERVER_PID}" ]] && ps -p "${SERVER_PID}" >/dev/null 2>&1; then
    kill "${SERVER_PID}" >/dev/null 2>&1 || true
  fi
  [[ -n "${TMP_CONFIG:-}" && -f "${TMP_CONFIG}" ]] && rm -f "${TMP_CONFIG}"
  [[ -n "${TMP_BUDGET:-}" && -f "${TMP_BUDGET}" ]] && rm -f "${TMP_BUDGET}"
}
trap cleanup EXIT

start_server || {
  echo "Sitespeed requires a reachable BASE_URL; please start a server at ${BASE_URL} and rerun." | tee -a "${LOG_FILE}"
  exit 1
}

cd "${VALIDATION_DIR}"

TMP_CONFIG="$(mktemp)"
TMP_BUDGET="$(mktemp)"

SSP_BASE="${BASE_URL%/}"
export SSP_BASE VALIDATION_DIR TMP_CONFIG TMP_BUDGET

node <<'NODE'
const fs = require('fs');
const path = require('path');

const base = process.env.SSP_BASE || 'http://127.0.0.1:1313';
const rootConfig = path.join(process.env.VALIDATION_DIR, 'sitespeed.config.json');
const rootBudget = path.join(process.env.VALIDATION_DIR, 'sitespeed.budgets.json');
const replaceBase = (url) => {
  if (!url) return url;
  return url.replace(/^https?:\/\/localhost:1313/, base);
};

const config = JSON.parse(fs.readFileSync(rootConfig, 'utf8'));
config.urls = (config.urls || []).map(replaceBase);
fs.writeFileSync(process.env.TMP_CONFIG, JSON.stringify(config));

const budget = JSON.parse(fs.readFileSync(rootBudget, 'utf8'));
(budget.budget || []).forEach((entry) => {
  if (entry.url) {
    entry.url = replaceBase(entry.url);
  }
});
fs.writeFileSync(process.env.TMP_BUDGET, JSON.stringify(budget));
NODE

set +e
npx sitespeed.io \
  --config "${TMP_CONFIG}" \
  --budget.configPath "${TMP_BUDGET}" \
  --outputFolder "${SITESPEED_REPORT_DIR}" \
  > "${LOG_FILE}" 2>&1
EXIT_CODE=$?
set -e

if [[ ${EXIT_CODE} -ne 0 ]]; then
  echo "Sitespeed run failed; see ${LOG_FILE}" >&2
  exit ${EXIT_CODE}
fi

echo "Sitespeed report written to ${SITESPEED_REPORT_DIR}" | tee -a "${LOG_FILE}"
