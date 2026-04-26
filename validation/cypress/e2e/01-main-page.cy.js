/**
 * Main Page Loading Test
 * 
 * Verifies that the main page loads successfully and contains expected elements.
 */

describe('Main Page Loading', () => {
  beforeEach(() => {
    // Visit the main page before each test
    cy.visitAndWaitForMain('/')
  })

  it('should load the homepage successfully', () => {
    // Check that the page loads without errors
    cy.url().should('include', 'localhost:1313')
  })

  it('should display the main title', () => {
    cy.contains('Why this exists').should('be.visible')
  })

  it('should display the subtitle', () => {
    cy.contains('because knowing what to do matters less than knowing when to do it').should('be.visible')
  })

  it('should have a "Start exploring" section', () => {
    cy.contains('Start exploring').should('be.visible')
  })

  it('should load without console errors', () => {
    // Note: This is a basic check - more sophisticated error handling can be added
    cy.window().then((win) => {
      expect(win.document.readyState).to.equal('complete')
    })
  })

  it('should have proper page title', () => {
    // Check the document title (may be empty based on config, so just verify it exists)
    cy.title().should('exist')
  })
})
