# Copilot Agent Scripts

This directory contains helper scripts for Copilot agents and contributors working on the Penguin Pragmatic Patterns site.

## Setup Script

### `setup-copilot-env.sh`

Automated setup script that installs and configures the complete build environment.

**Usage:**
```bash
bash .github/scripts/setup-copilot-env.sh
```

**What it does:**
- Installs Hugo Extended v0.152.2
- Installs Dart Sass v1.80.7
- Installs Node.js dependencies (if needed)
- Downloads Hugo modules
- Verifies the build works

**Prerequisites:**
- Linux/Ubuntu environment (tested on GitHub Actions runners)
- `sudo` access for package installation
- Internet connection

## GitHub Actions Workflow

### `copilot-setup.yml`

Reusable GitHub Actions workflow that sets up the build environment in CI.

**Usage in another workflow:**
```yaml
jobs:
  setup:
    uses: ./.github/workflows/copilot-setup.yml
```

**Usage as a standalone workflow:**
Run manually from the Actions tab in GitHub.

## Quick Reference

### Build Commands

```bash
# Clean production build
hugo --gc --minify --buildDrafts=false

# Build with drafts (for development)
hugo --gc --minify --buildDrafts=true

# Start development server
hugo server --bind 0.0.0.0

# Watch and rebuild (same as server)
hugo server --watch
```

### Required Versions

| Tool | Version | Type |
|------|---------|------|
| Hugo | 0.152.2 | Extended (required for SCSS) |
| Dart Sass | 1.80.7 | Standalone binary |
| Node.js | Any recent version | Optional (only if package-lock.json exists) |

### Environment Variables

The setup script uses these versions (defined at the top of the script):
- `HUGO_VERSION="0.152.2"`
- `DART_SASS_VERSION="1.80.7"`

To upgrade versions, update these variables in both:
- `.github/scripts/setup-copilot-env.sh`
- `.github/workflows/copilot-setup.yml`

## Troubleshooting

### Build Errors

**Symptom:** `error calling Sass: no Dart Sass binary found in $PATH`

**Solution:** Install Dart Sass:
```bash
curl -LJO https://github.com/sass/dart-sass/releases/download/1.80.7/dart-sass-1.80.7-linux-x64.tar.gz
tar -xzf dart-sass-1.80.7-linux-x64.tar.gz -C /tmp
sudo ln -sf /tmp/dart-sass/sass /usr/local/bin/sass
```

**Symptom:** `hugo: command not found`

**Solution:** Install Hugo Extended:
```bash
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.152.2/hugo_extended_0.152.2_linux-amd64.deb
sudo dpkg -i /tmp/hugo.deb
```

**Symptom:** Build works but uses wrong Hugo version

**Solution:** Verify you have the extended version:
```bash
hugo version  # Should show "extended" in output
```

### Module Download Issues

**Symptom:** `hugo: downloading modules ...` takes a long time or fails

**Solution:** Pre-download modules:
```bash
hugo mod graph
```

This caches the theme and other dependencies.

## For Copilot Agents

### Quick Start

When starting work on this repository:

1. **Run the setup script first:**
   ```bash
   bash .github/scripts/setup-copilot-env.sh
   ```

2. **Verify the build works:**
   ```bash
   hugo --gc --minify --buildDrafts=false
   ```

3. **Start a development server if needed:**
   ```bash
   hugo server --bind 0.0.0.0
   ```

The setup script is idempotent—safe to run multiple times.

### For Creating GitHub Workflows

**Instead of duplicating setup code, use the composite action:**

```yaml
steps:
  - name: Checkout
    uses: actions/checkout@v4
    with:
      submodules: recursive
  
  - name: Setup Hugo Environment
    uses: ./.github/actions/setup-hugo
    # Automatically uses Hugo 0.152.2, Dart Sass, and npm deps
  
  - name: Build site
    run: hugo --gc --minify
```

**Key points:**
- ✅ Action is discoverable at `.github/actions/setup-hugo/action.yml`
- ✅ Provides Hugo 0.152.2 extended by default
- ✅ Handles Dart Sass and Node.js dependencies
- ✅ See `.github/actions/setup-hugo/README.md` for full documentation

### Discovery Methods

Agents can find Hugo setup tools by:

1. **File system scan:**
   ```bash
   ls -la .github/actions/  # Find: setup-hugo/
   ls -la .github/scripts/  # Find: setup-copilot-env.sh
   ```

2. **Workflow analysis:**
   ```bash
   grep -r "setup-hugo" .github/workflows/
   # Shows usage in hugo.yml and hugo_build_site.yml
   ```

3. **Documentation search:**
   ```bash
   find .github -name "README.md" -exec grep -l "Hugo" {} \;
   # Finds this file and action README
   ```
