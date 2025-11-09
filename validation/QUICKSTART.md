# Validation Test Suite - Quick Start

## What is this?

A comprehensive Cypress-based testing framework for the Penguin Pragmatic Patterns website to ensure:
- Main page loads correctly
- Navigation and footer are present and functional
- All links work (nav, footer, internal, external)
- Pattern pages have proper reference sections
- All reference links are functional

## Quick Setup

1. **Install dependencies** (one time):
   ```bash
   cd validation
   npm install
   ```

2. **Start Hugo server** (required before tests):
   ```bash
   cd .. # Back to project root
   hugo server --bind 0.0.0.0
   ```

3. **Run tests**:
   ```bash
   cd validation
   npm test                 # Headless mode
   npm run cypress:open     # Interactive UI mode
   ```

## Test Files

| File | Purpose |
|------|---------|
| `01-main-page.cy.js` | Main page loading and basic elements |
| `02-navbar-footer.cy.js` | Navigation bar and footer presence |
| `03-navigation-links.cy.js` | All navigation links functionality |
| `04-pattern-references.cy.js` | Pattern reference sections |
| `05-reference-links.cy.js` | Reference links functionality |

## Common Commands

```bash
npm test                    # Run all tests (headless)
npm run cypress:open        # Open Cypress UI (interactive)
npm run test:headed         # Run with visible browser
npm run test:chrome         # Run in Chrome
npm run test:firefox        # Run in Firefox
```

## Prerequisites

- Node.js 14+
- Hugo extended 0.118.2
- Hugo server running on http://localhost:1313

## Notes

- Tests are **NOT** integrated into CI/CD yet - this is intentional for validation
- The Hugo server must be running before executing tests
- Tests use localhost:1313 as configured in `cypress.config.js`
- Cypress binary may need to be installed separately: `npx cypress install`

## Directory Structure

```
validation/
├── README.md              # Detailed documentation
├── QUICKSTART.md         # This file
├── cypress.config.js     # Cypress configuration
├── package.json          # NPM dependencies and scripts
├── cypress/
│   ├── e2e/             # Test files (*.cy.js)
│   ├── fixtures/        # Test data (if needed)
│   ├── support/         # Support files and custom commands
│   ├── screenshots/     # Failed test screenshots (auto-generated)
│   └── videos/          # Test videos (if enabled)
└── .gitignore           # Excludes node_modules, screenshots, etc.
```

## Troubleshooting

**Tests fail with connection errors?**
→ Ensure Hugo server is running: `hugo server --bind 0.0.0.0`

**Cypress binary not found?**
→ Install it: `npx cypress install`

**Tests timeout?**
→ Check Hugo server is responsive: `curl http://localhost:1313`

**Dropdown tests fail?**
→ This is expected in some environments; tests use `force: true` to handle it

## Next Steps

After validation:
1. Review test results
2. Fix any failing tests
3. Add more tests as needed
4. Integrate into CI/CD pipeline when ready

For full documentation, see [README.md](README.md)
