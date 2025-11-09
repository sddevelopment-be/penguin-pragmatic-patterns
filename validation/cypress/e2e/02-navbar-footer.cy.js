/**
 * Navigation Bar and Footer Presence Test
 * 
 * Verifies that the navigation bar and footer are present on the main page
 * and contain the expected elements.
 */

function getNavbar() {
    return cy.get('nav[class$=\'no-shadow\'] div[class=\'container\']');
}

describe('Navigation Bar and Footer Presence', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  describe('Navigation Bar', () => {
    it('should display the navigation bar', () => {
      // Check for navbar element
      getNavbar().should('be.visible')
    })

    it('should display the logo in the navbar', () => {
      // Check for logo image in navbar
      cy.get('nav.navbar .navbar-brand img').should('be.visible')
        .and('have.attr', 'src')
        .and('include', 'ppp_logo.webp')
    })

    it('should have main navigation links', () => {
      // Verify presence of main navigation items from config
      getNavbar().within(() => {
        cy.contains('Approach').should('be.visible')
        cy.contains('Concepts').should('be.visible')
        cy.contains('Practices').should('be.visible')
        cy.contains('Primers').should('be.visible')
        cy.contains('Resources').should('be.visible')
        cy.contains('Admin').should('be.visible')
      })
    })

    it('should have Resources dropdown menu', () => {
      // Check Resources dropdown exists and contains expected items
      cy.get('nav.navbar').contains('Resources').should('be.visible')
    })

    it('should have Admin dropdown menu', () => {
      // Check Admin dropdown exists
      cy.get('nav.navbar').contains('Admin').should('be.visible')
    })

    it('should have a mobile menu burger button', () => {
      // Check for mobile burger menu
      cy.get('nav.navbar .navbar-burger').should('exist')
    })
  })

  describe('Footer', () => {
    it('should display the footer', () => {
      // Check for footer element
      cy.get('footer.footer').should('exist')
    })

    it('should display footer logo', () => {
      // Check for logo in footer
      cy.get('footer.footer img').should('exist')
        .and('have.attr', 'src')
        .and('include', 'LOGO_BASE_SMALL.webp')
    })

    it('should display company information', () => {
      // Check for company name
      cy.get('footer.footer').contains('SD Development BV').should('be.visible')
    })

    it('should have main content links in footer', () => {
      // Verify footer contains main navigation links
      cy.get('footer.footer').within(() => {
        cy.contains('Approach').should('be.visible')
        cy.contains('Practices').should('be.visible')
        cy.contains('Concepts').should('be.visible')
        cy.contains('Primers').should('be.visible')
      })
    })

    it('should have resource links in footer', () => {
      // Verify footer contains resource links
      cy.get('footer.footer').within(() => {
        cy.contains('Glossary').should('be.visible')
        cy.contains('Bibliography').should('be.visible')
      })
    })

    it('should have admin links in footer', () => {
      // Verify footer contains admin links
      cy.get('footer.footer').within(() => {
        cy.contains('Contributing').should('be.visible')
        cy.contains('Change Log').should('be.visible')
        cy.contains('License').should('be.visible')
      })
    })

    it('should have social media links', () => {
      // Check for social media icons/links
      cy.get('footer.footer').within(() => {
        cy.get('a[href*="github"]').should('exist')
        cy.get('a[href*="linkedin"]').should('exist')
      })
    })
  })
})
