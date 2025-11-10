#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

cd "$REPO_ROOT"

if command -v sass >/dev/null 2>&1; then
  export HUGO_SASS_BIN="$(command -v sass)"
fi

hugo --gc --minify --buildDrafts=false --panicOnWarning --templateMetricsHints --printI18nWarnings
hugo check --internal-links --external-links --missing --verbose
