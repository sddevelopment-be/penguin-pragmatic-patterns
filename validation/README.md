# Website Validation Test Suite

This directory contains a Cypress-based end-to-end (E2E) test suite for validating the Penguin Pragmatic Patterns website. These tests ensure the website functions correctly and all critical features work as expected.

## Overview

The validation test suite covers the following areas:

- **Main Page Loading**: Verifies the homepage loads successfully with all expected elements
- **Navigation Bar and Footer**: Ensures navbar and footer are present and properly structured
- **Navigation Links**: Tests that all navigation links (main nav, dropdowns, footer) work correctly
- **Pattern Reference Sections**: Validates that practice and concept pages have proper reference sections
- **Reference Links**: Confirms all bibliography, internal, and external links function properly

## Prerequisites

Before running the tests, ensure you have:

1. **Node.js** installed (version 14 or higher recommended)
2. **npm** package manager
3. The Hugo site running locally on `http://localhost:1313`

## Installation

Navigate to the validation directory and install dependencies:

```bash
cd validation
npm install
```

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

# Start the Hugo development server
hugo server --bind 0.0.0.0
```

The site should now be available at `http://localhost:1313`.

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
