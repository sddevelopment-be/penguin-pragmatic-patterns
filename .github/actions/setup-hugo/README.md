# Setup Hugo Build Environment

A composite GitHub Action that sets up the complete Hugo build environment for the Penguin Pragmatic Patterns repository.

## Purpose

This action provides a **single source of truth** for Hugo tooling versions and setup steps, eliminating duplication across multiple workflows and making version upgrades easier.

## What It Does

- ✅ Installs Hugo Extended (required for SCSS support)
- ✅ Installs Dart Sass (required for stylesheet compilation)
- ✅ Installs Node.js dependencies (if needed)
- ✅ Provides version outputs for downstream steps

## Usage

### Basic Usage

```yaml
steps:
  - name: Checkout
    uses: actions/checkout@v4
    with:
      submodules: recursive
      fetch-depth: 0

  - name: Setup Hugo Environment
    uses: ./.github/actions/setup-hugo
    with:
      hugo-version: '0.152.2'
```

### With All Options

```yaml
steps:
  - name: Setup Hugo Environment
    uses: ./.github/actions/setup-hugo
    with:
      hugo-version: '0.152.2'        # Hugo version to install
      install-dart-sass: 'true'       # Install Dart Sass (default: true)
      install-node-deps: 'true'       # Install npm dependencies (default: true)
```

### Using Outputs

```yaml
steps:
  - name: Setup Hugo Environment
    id: hugo-setup
    uses: ./.github/actions/setup-hugo

  - name: Display versions
    run: |
      echo "Hugo version: ${{ steps.hugo-setup.outputs.hugo-version }}"
      echo "Dart Sass: ${{ steps.hugo-setup.outputs.dart-sass-installed }}"
```

## Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| `hugo-version` | Hugo version to install | No | `0.152.2` |
| `install-dart-sass` | Whether to install Dart Sass | No | `true` |
| `install-node-deps` | Whether to install Node.js dependencies | No | `true` |

## Outputs

| Output | Description |
|--------|-------------|
| `hugo-version` | Hugo version that was installed |
| `dart-sass-installed` | Whether Dart Sass was installed (`true`/`false`) |

## Version Management

To upgrade Hugo across all workflows:

1. Update the default version in `action.yml`:
   ```yaml
   hugo-version:
     default: '0.152.2'  # Change this
   ```

2. Update workflows that explicitly specify the version:
   - `.github/workflows/hugo.yml`
   - `.github/workflows/hugo_build_site.yml`
   - `.github/workflows/validation.yml` (if applicable)

3. Test with the validation workflow:
   ```bash
   # Trigger manually from Actions tab
   gh workflow run copilot-setup.yml
   ```

## Requirements

- **OS**: Ubuntu (tested on ubuntu-latest)
- **Permissions**: `sudo` access for package installation
- **Network**: Internet access to download Hugo and Dart Sass

## Used By

This action is used by the following workflows:

- `.github/workflows/hugo.yml` - GitHub Pages deployment
- `.github/workflows/hugo_build_site.yml` - Production build
- `.github/workflows/copilot-setup.yml` - Environment validation

## Benefits

✅ **Single source of truth** - Version defined in one place  
✅ **DRY principle** - No duplicated setup code  
✅ **Easy upgrades** - Change version in one location  
✅ **Consistent environments** - Same setup across all workflows  
✅ **Faster workflows** - Optimized installation steps  
✅ **Better maintainability** - Clear separation of concerns

## Troubleshooting

### Hugo version mismatch

**Symptom:** Build works locally but fails in CI

**Solution:** Verify the Hugo version matches:
```bash
hugo version  # Should show 0.152.2 extended
```

### Dart Sass not found

**Symptom:** `error calling Sass: no Dart Sass binary found`

**Solution:** Ensure `install-dart-sass: 'true'` in your workflow

### Node dependencies not installed

**Symptom:** Missing npm packages

**Solution:** Ensure `install-node-deps: 'true'` and `package-lock.json` exists

## For Copilot Agents

When creating new workflows that need Hugo:

1. **Always use this action** instead of manual setup steps
2. **Checkout first** - The action needs the repository checked out
3. **Use default version** unless you have a specific reason to override
4. **Test locally** using `.github/scripts/setup-copilot-env.sh`

Example for new workflow:
```yaml
name: My New Workflow
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: recursive
      - uses: ./.github/actions/setup-hugo
      - run: hugo --gc --minify
```

## Related Files

- `.github/scripts/setup-copilot-env.sh` - Local setup script (mirrors this action)
- `.github/workflows/copilot-setup.yml` - Validation workflow for testing this action
- `docs/dev/workbench-setup-guide.md` - Developer setup documentation
