#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPORT_FILE="${VALIDATION_DIR}/reports/npm-lint-latest.log"

mkdir -p "${VALIDATION_DIR}/reports"
: > "${REPORT_FILE}"

exec > >(tee "${REPORT_FILE}")
exec 2>&1

STEPS=(
  "lint:css"
  "lint:js"
  "lint:md"
  "lint"
)

EXIT_CODE=0

for STEP in "${STEPS[@]}"; do
  echo "\n==> npm run ${STEP}" >&2
  if ! npm run "${STEP}"; then
    echo "[lint] ${STEP} failed" >&2
    EXIT_CODE=1
  fi
done

exit ${EXIT_CODE}
