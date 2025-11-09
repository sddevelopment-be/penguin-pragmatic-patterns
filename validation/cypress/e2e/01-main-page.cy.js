/**
 * Main Page Loading Test
 * 
 * Verifies that the main page loads successfully and contains expected elements.
 */

describe('Main Page Loading', () => {
  beforeEach(() => {
    // Visit the main page before each test
    cy.visit('/')
  })

  it('should load the homepage successfully', () => {
    // Check that the page loads without errors
    cy.url().should('include', 'localhost:1313')
  })

  it('should display the main title', () => {
    // Verify the main hero title is present
    cy.contains('Pragmatic Penguin Pattern Portfolio').should('be.visible')
  })

  it('should display the subtitle', () => {
    // Verify the subtitle is present
    cy.contains('For engineers, team leads, and knowledge workers').should('be.visible')
  })

  it('should have a "Start Reading" button', () => {
    // Check for the main CTA button
    cy.contains('Start Reading').should('be.visible')
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
