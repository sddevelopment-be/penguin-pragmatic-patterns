#!/usr/bin/env bash
# Automated Docker-based validation script
# Replicates GitHub Actions validation workflow locally

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
COMPOSE_FILE="${VALIDATION_DIR}/docker-compose.validation.yml"

cd "$VALIDATION_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Penguin Pragmatic Patterns - Validation Suite"
echo "  Docker-based CI/CD Replication"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

EXIT_CODE=0

# Cleanup function
cleanup() {
  echo ""
  echo "🧹 Cleaning up containers..."
  docker-compose -f "$COMPOSE_FILE" down -v >/dev/null 2>&1 || true
}
trap cleanup EXIT

# Step 1: Linting
echo "📋 Step 1/4: Running lint checks (CSS, JS, Markdown)..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if docker-compose -f "$COMPOSE_FILE" run --rm lint; then
  echo "✅ Linting passed"
else
  echo "❌ Linting failed"
  EXIT_CODE=1
fi
echo ""

# Step 2: Hugo build test
echo "🏗️  Step 2/4: Testing Hugo build..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if docker-compose -f "$COMPOSE_FILE" run --rm hugo-test; then
  echo "✅ Hugo build passed"
else
  echo "❌ Hugo build failed"
  EXIT_CODE=1
fi
echo ""

# Step 3: Start Hugo server and run smoke tests
echo "🚀 Step 3/4: Starting Hugo server for smoke tests..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
docker-compose -f "$COMPOSE_FILE" up -d hugo-server

echo "⏳ Waiting for Hugo server to be ready..."
if docker-compose -f "$COMPOSE_FILE" run --rm smoke bash -c "npx wait-on http://hugo-server:1313 --timeout 60000"; then
  echo "✅ Hugo server is ready"
  
  echo ""
  echo "🧪 Running Cypress smoke tests..."
  if docker-compose -f "$COMPOSE_FILE" run --rm smoke; then
    echo "✅ Smoke tests passed"
  else
    echo "❌ Smoke tests failed"
    EXIT_CODE=1
  fi
else
  echo "❌ Hugo server failed to start"
  EXIT_CODE=1
fi
echo ""

# Step 4: Lighthouse performance testing
echo "💡 Step 4/4: Running Lighthouse performance audit..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if docker-compose -f "$COMPOSE_FILE" run --rm lighthouse; then
  echo "✅ Lighthouse audit completed"
  if [ -f "reports/lighthouse-desktop.report.html" ]; then
    echo "📊 Report available at: validation/reports/lighthouse-desktop.report.html"
  fi
else
  echo "⚠️  Lighthouse audit failed (non-critical)"
fi
echo ""

# Summary
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ $EXIT_CODE -eq 0 ]; then
  echo "✅ All validation checks passed!"
  echo ""
  echo "📊 Reports generated:"
  echo "   - validation/reports/npm-lint-latest.log"
  echo "   - validation/reports/lighthouse-desktop.report.html"
  echo "   - validation/reports/lighthouse-desktop.report.json"
else
  echo "❌ Some validation checks failed (exit code: $EXIT_CODE)"
  echo ""
  echo "🔍 Review logs above for details"
  echo "📋 Check validation/reports/ for detailed reports"
fi
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

exit $EXIT_CODE
