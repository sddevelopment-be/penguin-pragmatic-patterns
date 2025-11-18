#!/bin/bash
# Copilot Agent Setup Script
# This script sets up the build environment for working on the Penguin Pragmatic Patterns site
# Usage: bash .github/scripts/setup-copilot-env.sh

set -e

HUGO_VERSION="0.152.2"
DART_SASS_VERSION="1.80.7"

echo "🔧 Setting up Penguin Pragmatic Patterns build environment..."
echo ""

# Check if Hugo is installed
if command -v hugo &> /dev/null; then
    INSTALLED_VERSION=$(hugo version | grep -oP 'v\K[0-9]+\.[0-9]+\.[0-9]+' | head -1)
    if [[ "$INSTALLED_VERSION" == "$HUGO_VERSION" ]]; then
        echo "✓ Hugo $HUGO_VERSION is already installed"
    else
        echo "⚠ Hugo $INSTALLED_VERSION found, but $HUGO_VERSION is recommended"
        read -p "Install Hugo $HUGO_VERSION? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            INSTALL_HUGO=true
        fi
    fi
else
    echo "📦 Hugo not found, installing..."
    INSTALL_HUGO=true
fi

if [[ "$INSTALL_HUGO" == "true" ]]; then
    echo "Installing Hugo Extended $HUGO_VERSION..."
    wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    sudo dpkg -i /tmp/hugo.deb
    rm /tmp/hugo.deb
    echo "✓ Hugo installed: $(hugo version)"
fi

# Check if Dart Sass is installed
if command -v sass &> /dev/null; then
    echo "✓ Dart Sass is already installed: $(sass --version)"
else
    echo "📦 Installing Dart Sass $DART_SASS_VERSION..."
    curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    tar -xzf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz -C /tmp
    sudo ln -sf /tmp/dart-sass/sass /usr/local/bin/sass
    rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    echo "✓ Dart Sass installed: $(sass --version)"
fi

# Install Node.js dependencies if needed
if [[ -f package-lock.json ]] || [[ -f npm-shrinkwrap.json ]]; then
    echo "📦 Installing Node.js dependencies..."
    npm ci
    echo "✓ Node.js dependencies installed"
else
    echo "ℹ No package-lock.json found, skipping npm install"
fi

# Download Hugo modules
echo "📦 Downloading Hugo modules..."
hugo mod graph > /dev/null 2>&1 || true
echo "✓ Hugo modules ready"

# Test build
echo ""
echo "🏗️  Testing build..."
if hugo --gc --minify --buildDrafts=false > /tmp/hugo-build.log 2>&1; then
    FILE_COUNT=$(find public -type f 2>/dev/null | wc -l)
    echo "✓ Build successful - $FILE_COUNT files generated"
else
    echo "❌ Build failed. Check /tmp/hugo-build.log for details"
    cat /tmp/hugo-build.log
    exit 1
fi

echo ""
echo "✅ Setup complete! You can now:"
echo ""
echo "  Build the site:"
echo "    hugo --gc --minify --buildDrafts=false"
echo ""
echo "  Start development server:"
echo "    hugo server --bind 0.0.0.0"
echo ""
echo "  Preview URL: http://localhost:1313"
echo ""
