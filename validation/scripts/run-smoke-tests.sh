#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPO_ROOT="$(cd "${VALIDATION_DIR}/.." && pwd)"
REPORT_DIR="${VALIDATION_DIR}/reports"

mkdir -p "${REPORT_DIR}"

BASE_URL="${BASE_URL:-http://127.0.0.1:1313}"
PORT="${PORT:-1313}"

cd "$REPO_ROOT"

hugo server \
  --bind 127.0.0.1 \
  --port "${PORT}" \
  --baseURL "${BASE_URL}" \
  --renderToDisk \
  --buildDrafts=false \
  --disableFastRender \
  --gc \
  --minify \
  > "${REPORT_DIR}/hugo-server.log" 2>&1 &
HUGO_PID=$!

cleanup() {
  if ps -p $HUGO_PID >/dev/null 2>&1; then
    kill $HUGO_PID
  fi
}
trap cleanup EXIT

cd "$VALIDATION_DIR"

wait-on "http://127.0.0.1:${PORT}"

npm_config_lighthouse_url="${BASE_URL}" npm run perf:lighthouse
npm run test:cypress
