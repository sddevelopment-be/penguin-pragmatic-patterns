#!/usr/bin/env bash
# Test validation setup - verifies Docker files and provides setup instructions

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATION_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Validation Setup Verification"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

cd "$VALIDATION_DIR"

# Check required files exist
echo "📋 Checking required files..."
REQUIRED_FILES=(
  "Dockerfile.validation"
  "docker-compose.validation.yml"
  "VALIDATION_DOCKER.md"
  "scripts/run-validation-docker.sh"
  "scripts/run-lints.sh"
  "scripts/run-hugo-tests.sh"
  "scripts/run-smoke-tests.sh"
  "package.json"
)

ALL_PRESENT=true
for file in "${REQUIRED_FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "  ✅ $file"
  else
    echo "  ❌ $file (missing)"
    ALL_PRESENT=false
  fi
done
echo ""

# Check Docker availability (non-fatal)
echo "🐳 Checking Docker installation..."
if command -v docker >/dev/null 2>&1; then
  DOCKER_VERSION=$(docker --version)
  echo "  ✅ Docker installed: $DOCKER_VERSION"
  
  if command -v docker-compose >/dev/null 2>&1; then
    COMPOSE_VERSION=$(docker-compose --version)
    echo "  ✅ Docker Compose installed: $COMPOSE_VERSION"
  else
    echo "  ⚠️  Docker Compose not found (install: apt-get install docker-compose)"
  fi
else
  echo "  ⚠️  Docker not installed (validation will require Docker)"
  echo "     Install: https://docs.docker.com/engine/install/"
fi
echo ""

# Check Hugo version in documentation
echo "📖 Checking Hugo version consistency..."
VALIDATION_YML="../.github/workflows/validation.yml"
if [ -f "$VALIDATION_YML" ]; then
  HUGO_VERSION=$(grep -oP "hugo-version: '\K[0-9.]+(?=')" "$VALIDATION_YML" | head -1)
  echo "  Hugo version in validation.yml: $HUGO_VERSION"
  
  EXPECTED_VERSION="0.152.2"
  if [ "$HUGO_VERSION" = "$EXPECTED_VERSION" ]; then
    echo "  ✅ Hugo version correct ($EXPECTED_VERSION)"
  else
    echo "  ⚠️  Hugo version mismatch (expected $EXPECTED_VERSION, found $HUGO_VERSION)"
  fi
else
  echo "  ⚠️  validation.yml not found"
fi
echo ""

# Check package.json scripts
echo "📦 Checking npm scripts..."
if [ -f "package.json" ]; then
  echo "  Available scripts:"
  npm run --silent 2>/dev/null | grep -E "^  " || echo "    (npm not installed or package.json invalid)"
else
  echo "  ❌ package.json not found"
fi
echo ""

# Summary and next steps
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ "$ALL_PRESENT" = true ]; then
  echo "✅ All validation files present"
  echo ""
  echo "📋 Next Steps:"
  echo ""
  echo "1. Install Docker (if not already):"
  echo "   https://docs.docker.com/engine/install/"
  echo ""
  echo "2. Run full validation:"
  echo "   cd validation"
  echo "   bash scripts/run-validation-docker.sh"
  echo ""
  echo "3. Or run individual checks:"
  echo "   docker-compose -f docker-compose.validation.yml run --rm lint"
  echo "   docker-compose -f docker-compose.validation.yml run --rm hugo-test"
  echo ""
  echo "4. Documentation:"
  echo "   validation/VALIDATION_DOCKER.md"
else
  echo "❌ Some required files are missing"
  echo "   Please check the repository structure"
fi
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
