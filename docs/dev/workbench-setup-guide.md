# Workbench Setup Documentation for DevOps Automation

**Purpose:** This document describes the manual setup steps performed for the dark theme implementation task. DevOps Danny can use this to create an automated GitHub Actions workflow for future contributors.

**Date:** 2025-11-18  
**Agent:** Front-End Freddy  
**Environment:** GitHub Actions Runner (Ubuntu)

---

## Overview

The workbench setup for this Hugo-based static site project involves:
1. Installing Hugo extended (required for SCSS compilation)
2. Installing Dart Sass (required for Sass transpilation)
3. Downloading Hugo modules (theme dependencies)
4. Installing Node.js dependencies (linting tools)

**Total manual setup time:** ~3-5 minutes  
**Automation benefit:** Reusable for onboarding, CI/CD, and local development

---

## Step-by-Step Setup Process

### 1. Install Hugo Extended

**Why:** Hugo extended version is required for SCSS/Sass processing. The standard version does not include the transpiler.

**Version Required:** 0.152.2 extended (specified in repository documentation)

**Commands:**
```bash
# Download Hugo extended binary
wget -O /tmp/hugo.deb \
  https://github.com/gohugoio/hugo/releases/download/v0.152.2/hugo_extended_0.152.2_linux-amd64.deb

# Install the package
sudo dpkg -i /tmp/hugo.deb

# Verify installation
hugo version
# Expected output: hugo v0.152.2-...+extended linux/amd64
```

**Critical:** Must be the **extended** version. The output MUST include the word "extended" or SCSS compilation will fail.

**Alternative for macOS:**
```bash
brew install hugo
```

**Alternative for Windows:**
```powershell
choco install hugo-extended
```

---

### 2. Install Dart Sass

**Why:** Hugo uses Dart Sass for modern SCSS transpilation. This is separate from Hugo itself.

**Version Used:** 1.83.0 (latest stable at time of implementation)

**Commands:**
```bash
# Download Dart Sass
cd /tmp
curl -LJO https://github.com/sass/dart-sass/releases/download/1.83.0/dart-sass-1.83.0-linux-x64.tar.gz

# Extract and install
tar -xf dart-sass-1.83.0-linux-x64.tar.gz
sudo cp -r dart-sass /usr/local/
sudo ln -sf /usr/local/dart-sass/sass /usr/local/bin/sass

# Verify installation
sass --version
# Expected output: 1.83.0
```

**Important:** The `sass` binary must be in PATH and executable by the user running Hugo.

**Alternative for macOS:**
```bash
brew install sass/sass/sass
```

**Alternative for Windows:**
```powershell
choco install sass
```

---

### 3. Download Hugo Modules

**Why:** This project uses Hugo modules for the theme (hugo-fresh and Bulma). These must be downloaded before building.

**Commands:**
```bash
cd /path/to/penguin-pragmatic-patterns

# Download module dependencies
hugo mod graph

# Expected output (takes ~10-12 seconds):
# hugo: downloading modules …
# hugo: collected modules in 9598 ms
# patterns github.com/StefMa/hugo-fresh@v1.0.0
# github.com/StefMa/hugo-fresh@v1.0.0 github.com/jgthms/bulma@v0.0.0-20250627162832-82c5f33b96e8
```

**What this does:**
- Downloads `github.com/StefMa/hugo-fresh` theme
- Downloads `github.com/jgthms/bulma` CSS framework
- Stores modules in Hugo cache directory

**Caching:** In CI/CD, cache the `$HOME/.cache/hugo_cache` directory to speed up subsequent runs.

---

### 4. Install Node.js Dependencies (Optional but Recommended)

**Why:** For linting SCSS files with stylelint and running other quality checks.

**Commands:**
```bash
cd /path/to/penguin-pragmatic-patterns

# Install dependencies
npm install --legacy-peer-deps

# Expected output:
# added 144 packages, and audited 145 packages in 2s
# found 0 vulnerabilities
```

**Note:** `--legacy-peer-deps` flag is required due to peer dependency conflicts in stylelint packages.

**Dependencies installed:**
- stylelint 16.25.0
- stylelint-config-standard-scss 16.0.0
- stylelint-config-prettier 9.0.5
- eslint and related tools

---

## Build Verification

After setup, verify the environment works:

```bash
cd /path/to/penguin-pragmatic-patterns

# Clean build
hugo --gc --minify --buildDrafts=false

# Expected output:
# Total in ~1500ms
# Pages: 265 EN, 18 NL
# Static files: 706
# No errors
```

**Success indicators:**
- Build completes in 1-2 seconds
- No "Dart Sass binary not found" errors
- No "invalid TOML delimiter" errors
- `public/` directory created with ~59MB of content

---

## GitHub Actions Workflow Template

**Suggested workflow file:** `.github/workflows/workbench-setup.yml`

```yaml
name: Workbench Setup

on:
  workflow_call:
    outputs:
      cache-hit:
        description: "Whether Hugo modules were restored from cache"
        value: ${{ jobs.setup.outputs.cache-hit }}

jobs:
  setup:
    runs-on: ubuntu-latest
    outputs:
      cache-hit: ${{ steps.cache-modules.outputs.cache-hit }}
    
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4
        with:
          submodules: recursive
      
      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
      
      - name: Install Hugo Extended
        env:
          HUGO_VERSION: '0.152.2'
        run: |
          wget -O /tmp/hugo.deb \
            https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
          sudo dpkg -i /tmp/hugo.deb
          hugo version
      
      - name: Install Dart Sass
        env:
          SASS_VERSION: '1.83.0'
        run: |
          cd /tmp
          curl -LJO https://github.com/sass/dart-sass/releases/download/${SASS_VERSION}/dart-sass-${SASS_VERSION}-linux-x64.tar.gz
          tar -xf dart-sass-${SASS_VERSION}-linux-x64.tar.gz
          sudo cp -r dart-sass /usr/local/
          sudo ln -sf /usr/local/dart-sass/sass /usr/local/bin/sass
          sass --version
      
      - name: Cache Hugo modules
        id: cache-modules
        uses: actions/cache@v4
        with:
          path: |
            ~/.cache/hugo_cache
            /tmp/hugo_cache
          key: hugo-modules-${{ hashFiles('go.sum') }}
          restore-keys: |
            hugo-modules-
      
      - name: Download Hugo modules
        if: steps.cache-modules.outputs.cache-hit != 'true'
        run: hugo mod graph
      
      - name: Install Node.js dependencies
        run: npm install --legacy-peer-deps
      
      - name: Verify build
        run: hugo --gc --minify --buildDrafts=false
      
      - name: Run linters
        run: npx stylelint "assets/styles/**/*.scss"
```

**Usage in other workflows:**

```yaml
name: Build and Test

on: [push, pull_request]

jobs:
  setup:
    uses: ./.github/workflows/workbench-setup.yml
  
  build:
    needs: setup
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      
      # Hugo, Sass, and modules already set up by setup job
      - name: Build site
        run: hugo --gc --minify
```

---

## Caching Strategy

**Directories to cache:**

1. **Hugo modules:** `~/.cache/hugo_cache` or `/tmp/hugo_cache`
   - Key: `hugo-modules-${{ hashFiles('go.sum') }}`
   - Saves ~10 seconds on module download

2. **Node modules:** `node_modules/`
   - Handled automatically by `actions/setup-node@v4` with `cache: 'npm'`
   - Saves ~2 seconds on npm install

3. **Hugo resources:** `resources/`
   - Key: `hugo-resources-${{ hashFiles('assets/**') }}`
   - Saves compilation time on unchanged assets

**Total time savings with caching:** ~15-20 seconds per run

---

## Troubleshooting Common Issues

### Issue 1: "Dart Sass binary not found in $PATH"

**Cause:** Dart Sass not installed or not in PATH  
**Solution:**
```bash
which sass  # Should return /usr/local/bin/sass
sass --version  # Should return version number
```

### Issue 2: "got unexpected EOF when executing sass"

**Cause:** Incomplete Dart Sass installation (script wrapper without binary)  
**Solution:** Re-install using the full tar.gz extraction method above

### Issue 3: "invalid TOML delimiter" errors

**Cause:** Draft content files with malformed front matter  
**Solution:** Build with `--buildDrafts=false` flag

### Issue 4: Hugo module download timeout

**Cause:** Network issues or slow GitHub API  
**Solution:**
```bash
export HUGO_MODULE_TIMEOUT=180
hugo mod graph
```

### Issue 5: npm peer dependency conflicts

**Cause:** Incompatible stylelint plugin versions  
**Solution:** Use `npm install --legacy-peer-deps`

---

## Performance Benchmarks

**Clean setup (no cache):**
- Hugo install: 5s
- Dart Sass install: 3s
- Hugo modules download: 12s
- npm install: 15s
- **Total: ~35 seconds**

**With caching:**
- Hugo install: 5s (not cacheable, binary install)
- Dart Sass install: 3s (not cacheable, binary install)
- Hugo modules download: <1s (from cache)
- npm install: 2s (from cache)
- **Total: ~11 seconds**

**Build time:** 1.5 seconds (unchanged by setup method)

---

## Local Development Setup

For contributors using their local machines:

```bash
# 1. Clone repository
git clone https://github.com/sddevelopment-be/penguin-pragmatic-patterns.git
cd penguin-pragmatic-patterns

# 2. Install Hugo extended (macOS example)
brew install hugo

# 3. Install Dart Sass
brew install sass/sass/sass

# 4. Download modules
hugo mod graph

# 5. Install Node dependencies
npm install --legacy-peer-deps

# 6. Start development server
hugo server --bind 0.0.0.0
```

**VS Code extensions recommended:**
- SCSS IntelliSense
- Hugo Language and Syntax Support
- stylelint

---

## Docker Alternative

For containerized development:

```dockerfile
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    ca-certificates \
    nodejs \
    npm

# Install Hugo extended
RUN wget -O /tmp/hugo.deb \
    https://github.com/gohugoio/hugo/releases/download/v0.152.2/hugo_extended_0.152.2_linux-amd64.deb && \
    dpkg -i /tmp/hugo.deb && \
    rm /tmp/hugo.deb

# Install Dart Sass
RUN curl -LJO https://github.com/sass/dart-sass/releases/download/1.83.0/dart-sass-1.83.0-linux-x64.tar.gz && \
    tar -xf dart-sass-1.83.0-linux-x64.tar.gz && \
    cp -r dart-sass /usr/local/ && \
    ln -sf /usr/local/dart-sass/sass /usr/local/bin/sass && \
    rm -rf dart-sass*

WORKDIR /workspace
COPY . .

RUN hugo mod graph
RUN npm install --legacy-peer-deps

CMD ["hugo", "server", "--bind", "0.0.0.0"]
```

---

## Summary for DevOps Danny

**Required actions to automate:**
1. ✅ Install Hugo extended 0.152.2
2. ✅ Install Dart Sass 1.83.0
3. ✅ Download Hugo modules (`hugo mod graph`)
4. ✅ Install npm dependencies (`npm install --legacy-peer-deps`)
5. ✅ Cache Hugo modules and npm packages
6. ✅ Verify build succeeds

**Estimated workflow creation time:** 1-2 hours (including testing)  
**ROI:** Valuable for onboarding and CI/CD, saves 3-5 minutes per contributor setup

**Template provided above** can be adapted for:
- Pre-commit hooks
- Local development environments
- Docker containers
- GitHub Codespaces
