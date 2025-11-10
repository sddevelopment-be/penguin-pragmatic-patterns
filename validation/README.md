# Website Validation Test Suite

This directory contains the reusable validation toolchain for Penguin Pragmatic Patterns. It now bundles:

- Cypress end-to-end flows
- Linting (Stylelint, ESLint, remark-lint; cspell available as an optional manual step)
- Hugo integrity checks
- Lighthouse + Sitespeed smoke tests

Together these commands form the same pipeline that the GitHub workflow (`.github/workflows/validation.yml`) can execute on demand.

## Overview

The validation test suite covers the following areas:

- **Main Page Loading**: Verifies the homepage loads successfully with all expected elements
- **Navigation Bar and Footer**: Ensures navbar and footer are present and properly structured
- **Navigation Links**: Tests that all navigation links (main nav, dropdowns, footer) work correctly
- **Pattern Reference Sections**: Validates that practice and concept pages have proper reference sections
- **Reference Links**: Confirms all bibliography, internal, and external links function properly

## Prerequisites

Before running the tests, ensure you have:

1. **Node.js** installed (tested with v25.1.0; v20+ should work)
2. **npm** (v11.6.2 or compatible)
3. Hugo extended 0.118.2 available in `$PATH`
4. Chrome/Chromium system dependencies (for Sitespeed/Lighthouse) if you plan to run smoke tests locally

## Installation

All tooling is scoped to this directory:

```bash
cd validation
npm install
```

> If npm reports peer dependency conflicts, rerun with `npm install --legacy-peer-deps`.

The install step pulls Cypress, linting packages, Lighthouse, Sitespeed, and helper utilities such as `wait-on`.

## Automation commands

| Command | Purpose |
| --- | --- |
| `npm run lint:css` | Stylelint across `assets/styles/**/*.scss` |
| `npm run lint:js` | ESLint for Hugo JS, Cypress specs, and scripts |
| `npm run lint:md` | remark-lint (front matter + Hugo shortcodes aware) |
| `npm run lint:spell` | cspell project glossary (manual/optional while custom dictionary is prepared) |
| `npm run lint` | Runs Stylelint, ESLint, and remark-lint sequentially via `scripts/run-lints.sh` (writes `reports/npm-lint-latest.log`) |
| `npm run test:hugo` | Executes `scripts/run-hugo-tests.sh` (`hugo --panicOnWarning` + `hugo check`) |
| `npm run perf:lighthouse` | Builds + serves `public/` locally and runs a desktop Lighthouse audit via Chromium (`BASE_URL`, `PORT`, `CHROME_PATH` overridable) |
| `npm run perf:sitespeed` | Sitespeed run using `validation/sitespeed.config.json` |
| `npm run test:cypress` | Headless Cypress |
| `npm run test:smoke` | Spins up a temporary Hugo server then runs Lighthouse, Sitespeed, and Cypress in sequence |

`npm run test:smoke` accepts optional environment overrides:

```bash
BASE_URL=https://patterns.sddevelopment.be npm run test:smoke
PORT=8080 npm run test:smoke
```

The script writes logs and reports to `validation/reports/`.

> **Spell checking:** `npm run lint:spell` remains available for ad-hoc runs, but it is intentionally excluded from the default `npm run lint` chain until we finish curating allow-lists for glossary terms, personal names, and brand jargon. Capture any findings manually and feed new words into `cspell.config.yaml` once the glossary work is complete.

> `npm run perf:lighthouse` spins up a temporary static server whenever local sockets are permitted; otherwise it falls back to auditing the generated `public/` files directly. Export `CHROME_PATH` (and optionally `LIGHTHOUSE_PORT`) if Chromium lives outside `/usr/bin/chromium` or you need a custom debugging port.

## Running the Hugo Server

Before running the tests, you must have the Hugo server running locally. From the project root directory:

```bash
# Install Hugo extended version 0.118.2 (if not already installed)
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.118.2/hugo_extended_0.118.2_linux-amd64.deb
sudo dpkg -i /tmp/hugo.deb

# Download Hugo modules (first time only)
hugo mod graph

# Build the site
hugo --gc --minify --buildDrafts=false

# Start the Hugo development server (for manual browsing)
hugo server --bind 0.0.0.0 --buildDrafts=false
```

The site should now be available at `http://localhost:1313`. The smoke script automatically starts its own server, so you only need the above commands for manual verification or development.

## GitHub workflow (on-demand)

`.github/workflows/validation.yml` mirrors the local commands. It currently exposes a `workflow_dispatch` trigger so you can run the full lint → Hugo → smoke chain on demand. Uncomment the `push`/`pull_request` sections in that file once you are ready for automatic enforcement on `develop` and PRs targeting `main`/`develop`.

Tips:
- Pass a custom base URL during dispatch if you want to validate a deployed environment (input `target-url`).
- Reports are uploaded as workflow artifacts (Lighthouse JSON + Sitespeed HTML + Cypress logs).

## Running Tests

### Interactive Mode (Cypress Test Runner)

Open the Cypress Test Runner for interactive test execution:

```bash
npm run cypress:open
```

This will launch the Cypress UI where you can:
- Select and run individual test files
- Watch tests run in real-time
- Debug test failures
- See detailed error messages and screenshots

### Headless Mode (CI/Command Line)

Run all tests in headless mode (without opening a browser window):

```bash
npm test
# or
npm run cypress:run
```

### Run Tests with Browser Visible

Run tests in headed mode to see the browser:

```bash
npm run test:headed
```

### Run Tests in Specific Browsers

```bash
# Run in Chrome
npm run test:chrome

# Run in Firefox
npm run test:firefox
```

## Test Structure

The test suite is organized into the following files:

```
cypress/
├── e2e/
│   ├── 01-main-page.cy.js          # Main page loading tests
│   ├── 02-navbar-footer.cy.js      # Navigation and footer presence tests
│   ├── 03-navigation-links.cy.js   # All navigation links functionality
│   ├── 04-pattern-references.cy.js # Pattern reference sections tests
│   └── 05-reference-links.cy.js    # Reference links functionality tests
├── fixtures/                        # Test data files (if needed)
├── support/
│   ├── commands.js                 # Custom Cypress commands
│   └── e2e.js                      # Support file loaded before tests
└── screenshots/                     # Screenshots from failed tests
```

## Test Coverage

### 01-main-page.cy.js
- Homepage loads successfully
- Main title and subtitle are visible
- "Start Reading" button is present
- Page loads without errors

### 02-navbar-footer.cy.js
- Navigation bar is visible and contains logo
- All main navigation items are present
- Resources and Admin dropdowns exist
- Footer is visible with logo and company info
- Footer contains all expected links
- Social media links are present

### 03-navigation-links.cy.js
- Main navigation links work (Approach, Concepts, Practices, Primers)
- Resources dropdown links work (Glossary, Bibliography, Tools, Slidedecks)
- Admin dropdown links work (Helping Out, Change Log, License)
- Footer links navigate correctly
- Logo links to homepage
- Social media links are valid

### 04-pattern-references.cy.js
- Practice pages have "References and Related Patterns" section
- Further Exploration section exists
- Related Concepts section exists
- Related Patterns section exists
- Reference sections are expandable/collapsible
- Links in reference sections are valid

### 05-reference-links.cy.js
- Bibliography links are clickable and navigate correctly
- External links have proper attributes (target="_blank", rel="noreferrer")
- Related concept links navigate to concept pages
- Related pattern links navigate to practice pages
- Footnote links and back-references work
- Table of contents links function
- UUID and format links (HTML/JSON) are present
- Tag links navigate to tag pages
- AMMERSE information link is present

## Configuration

- `sitespeed.config.json` defines Browsertime/Graphite defaults. The smoke script derives target URLs from `BASE_URL`, but you can also run `npm run perf:sitespeed -- <url1> <url2>` to hit other environments.
- `sitespeed.budgets.json` raises warnings if LCP, fully loaded time, requests, or transfer sizes exceed the documented thresholds.
- `scripts/run-hugo-tests.sh` and `scripts/run-smoke-tests.sh` wrap the multi-step commands so they can run identically on developer machines and inside CI.

### Optional: Grafana/Graphite containers

If you want persistent Sitespeed dashboards locally, launch the provided compose file:

```bash
docker compose -f validation/containers/sitespeed_compose.yml up -d
```

This brings up Grafana (port 3000) and Graphite (ports 2003/8080); Sitespeed will automatically ship metrics when `GRAPHITE_HOST`/`GRAPHITE_PORT` point to those services.

The Cypress configuration is defined in `cypress.config.js`:

- **Base URL**: `http://localhost:1313` (Hugo dev server)
- **Viewport**: 1280x720 (desktop size)
- **Video Recording**: Disabled by default (enable if needed)
- **Screenshots**: Enabled on test failures

### Customizing Configuration

To modify test behavior, edit `cypress.config.js`. For example:

```javascript
// Change viewport size
viewportWidth: 1920,
viewportHeight: 1080,

// Enable video recording
video: true,

// Change timeout values
defaultCommandTimeout: 15000,
```

## Troubleshooting

### Hugo Server Not Running

**Error**: Tests fail with connection errors

**Solution**: Make sure the Hugo server is running at `http://localhost:1313`:
```bash
hugo server --bind 0.0.0.0
```

### Cypress Binary Not Installed

**Error**: "Cypress binary not found"

**Solution**: Install Cypress binary:
```bash
npx cypress install
```

### Tests Timeout

**Error**: Tests timeout waiting for elements

**Solution**: 
- Ensure the Hugo server is running and responsive
- Check if the site is fully loaded before tests start
- Increase timeout values in `cypress.config.js`

### Navigation Dropdown Tests Fail

**Error**: Dropdown menu items not found

**Solution**: Some dropdown menus require hover interactions. Tests use `trigger('mouseover')` and `click({ force: true })` to handle this.

## Best Practices

1. **Keep Hugo Server Running**: Always have the Hugo development server running before executing tests
2. **Run Tests Sequentially**: Some tests may navigate between pages; run full suite for comprehensive validation
3. **Review Screenshots**: Check the `cypress/screenshots` folder for images of failed tests
4. **Update Tests**: When site structure changes, update corresponding test files
5. **Add New Tests**: As new features are added, create corresponding test cases

## CI/CD Integration (Future)

These tests are designed to be integrated into a CI/CD pipeline in the future. Example workflow:

1. Build Hugo site
2. Start Hugo server in background
3. Run Cypress tests in headless mode
4. Generate test reports
5. Archive screenshots and videos of failures

**Note**: Tests are not yet integrated into the build cycle. This allows for validation and refinement before automation.

## Contributing

When adding new tests:

1. Follow the existing naming convention (`##-descriptive-name.cy.js`)
2. Group related tests using `describe()` blocks
3. Use clear, descriptive test names with `it()`
4. Add comments explaining complex test logic
5. Ensure tests are independent and can run in any order
6. Clean up after tests (if they modify state)

## Support

For issues or questions about the test suite:

1. Check this README for common solutions
2. Review Cypress documentation: https://docs.cypress.io
3. Check existing test files for examples
4. Consult the main project documentation

## License

This test suite is part of the Penguin Pragmatic Patterns project and follows the same license.
