// ***********************************************
// Custom Cypress Commands
// ***********************************************

const PAGE_LOAD_TIMEOUT = 20000
const VISIT_TIMEOUT = 120000

Cypress.Commands.add('visitAndWaitForMain', (url, options = {}) => {
  cy.visit(url, { timeout: VISIT_TIMEOUT, ...options })
  cy.get('body ', { timeout: PAGE_LOAD_TIMEOUT }).should('be.visible')
})

Cypress.Commands.add('waitForNavbar', () => {
  cy.get('nav[class$=\'no-shadow\'] div[class=\'container\']', { timeout: PAGE_LOAD_TIMEOUT }).should('be.visible')
})


Cypress.Commands.add('waitForFooter', () => {
  cy.get('footer.footer', { timeout: PAGE_LOAD_TIMEOUT }).should('be.visible')
})

Cypress.Commands.add('ensureDetailsOpen', (selector = 'details.related') => {
  cy.get(selector, { timeout: PAGE_LOAD_TIMEOUT })
    .should('exist')
    .then(($details) => {
      if (!$details.prop('open')) {
        cy.wrap($details).find('summary').click()
        cy.wrap($details).should('have.attr', 'open')
      }
    })
})
