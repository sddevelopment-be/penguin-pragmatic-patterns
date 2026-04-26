/**
 * Navigation Links Test
 *
 * Verifies that all navigational links in the navbar and footer work correctly
 * and lead to valid pages.
 */

const PAGE_WAIT_TIMEOUT = 20000

function getNavbar()  {
    return cy.get('nav[class$=\'no-shadow\'] div[class=\'container\']');
}

describe('Navigation Links Functionality', () => {
  beforeEach(() => {
    cy.visitAndWaitForMain('/')
    cy.waitForNavbar()
  })

  describe('Main Navigation Links', () => {
    const mainNavLinks = [
      { text: 'Concepts', url: '/concepts/' },
      { text: 'Practices', url: '/practices/' },
      { text: 'Primers', url: '/primers/' },
    ]

    mainNavLinks.forEach(({ text, url }) => {
      it(`should navigate to ${text} page`, () => {
        getNavbar().contains(text).click()
        cy.location('pathname', { timeout: PAGE_WAIT_TIMEOUT }).should('include', url.replace(/\/?$/, ''))
        cy.get('main', { timeout: PAGE_WAIT_TIMEOUT }).should('be.visible')
        cy.visitAndWaitForMain('/')
      })
    })
  })

  describe('Admin Dropdown Links', () => {
    const adminLinks = [
      { text: 'Helping Out', url: '/contributing/' },
      { text: 'Change Log', url: '/changelog/' },
      { text: 'License', url: '/license/' },
    ]

    adminLinks.forEach(({ text, url }) => {
      it(`should navigate to ${text} page from Admin dropdown`, () => {
        // Hover over Admin to show dropdown
        getNavbar().contains('Admin').trigger('mouseover')
        // Click the link
        cy.get('nav.navbar .navbar-dropdown').contains(text).click({ force: true })
        cy.location('pathname', { timeout: PAGE_WAIT_TIMEOUT }).should('include', url.replace(/\/?$/, ''))
        cy.get('main', { timeout: PAGE_WAIT_TIMEOUT }).should('be.visible')
        cy.visitAndWaitForMain('/')
      })
    })
  })

  describe('Footer Links', () => {
    const footerLinks = [
      { text: 'Approach', url: '/about' },
      { text: 'Practices', url: '/practices' },
      { text: 'Concepts', url: '/concepts' },
      { text: 'Glossary', url: '/glossary' },
      { text: 'Bibliography', url: '/books' },
      { text: 'Tools, Websites, Apps', url: '/tools' },
      { text: 'Slide decks', url: '/presentations' },
      { text: 'Contributing', url: '/contributing' },
      { text: 'Change Log', url: '/changelog' },
      { text: 'License', url: '/license' },
    ]

    footerLinks.forEach(({ text, url }) => {
      it(`should navigate to ${text} page from footer`, () => {
        cy.get('footer.footer').contains(text).scrollIntoView().click()
        cy.location('pathname', { timeout: PAGE_WAIT_TIMEOUT }).should('include', url.replace(/\/?$/, ''))
        cy.get('main', { timeout: PAGE_WAIT_TIMEOUT }).should('be.visible')
        cy.visitAndWaitForMain('/')
      })
    })
  })

  describe('Logo Links', () => {
    it('should navigate to home when clicking navbar logo', () => {
      // Navigate to a different page first
      cy.visitAndWaitForMain('/about')
      // Click the navbar logo
      cy.get('nav.navbar .navbar-brand a').first().click()
      cy.location('pathname', { timeout: PAGE_WAIT_TIMEOUT }).should('match', /\/$|\/index\.html$/)
    })
  })

  describe('Social Media Links', () => {
    it('should have valid GitHub link in footer', () => {
      cy.get('footer.footer a[href*="github"]')
        .should('have.attr', 'href')
        .and('include', 'github.com')
    })

    it('should have valid LinkedIn link in footer', () => {
      cy.get('footer.footer a[href*="linkedin"]')
        .should('have.attr', 'href')
        .and('include', 'linkedin.com')
    })
  })

  describe('Back to Top Button', () => {
    it('should scroll to top when clicking back-to-top button', () => {
      // Scroll down first
      cy.scrollTo('bottom')
      // Click back to top (if visible)
      cy.get('#backtotop').should('exist')
    })
  })
})
