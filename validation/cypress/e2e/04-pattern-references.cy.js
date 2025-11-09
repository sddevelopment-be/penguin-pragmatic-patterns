/**
 * Pattern Reference Sections Test
 * 
 * Verifies that pattern pages (practices and concepts) have proper reference sections
 * including Further Exploration, Related Concepts, and Related Patterns.
 */

describe('Pattern Reference Sections', () => {
  describe('Practice Pages - Reference Sections', () => {
    // Test with the "Wax on, wax off" practice as a representative example
    beforeEach(() => {
      cy.visit('/practices/wax_on_wax_off/')
    })

    it('should have a References and Related Patterns section', () => {
      // Check for the references section
      cy.contains('References and Related Patterns').should('be.visible')
    })

    it('should have Further Exploration section', () => {
      // The section is within details/summary element
      cy.get('details.related').within(() => {
        cy.contains('Further Exploration').should('exist')
      })
    })

    it('should have Related Concepts section', () => {
      cy.get('details.related').within(() => {
        cy.contains('Related Concepts').should('exist')
      })
    })

    it('should have Related Patterns section', () => {
      cy.get('details.related').within(() => {
        cy.contains('Related Patterns').should('exist')
      })
    })

    it('should display bibliography references in Further Exploration', () => {
      // Open the details element if needed
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })
      
      // Check for bibliography entries
      cy.get('details.related').within(() => {
        cy.get('h2').contains('Further Exploration').should('exist')
        // Should have at least one list item
        cy.contains('Further Exploration').parent().find('ul li').should('have.length.gt', 0)
      })
    })

    it('should have clickable links in Further Exploration', () => {
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })

      // Check that links exist and have proper attributes
      cy.get('details.related').within(() => {
        cy.contains('Further Exploration').parent().find('a')
          .should('have.length.gt', 0)
          .first()
          .should('have.attr', 'href')
      })
    })

    it('should have links to related concepts', () => {
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })

      cy.get('details.related').within(() => {
        // Related Concepts section should have links
        cy.contains('Related Concepts').parent().find('a')
          .should('have.length.gt', 0)
      })
    })

    it('should have links to related patterns', () => {
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })

      cy.get('details.related').within(() => {
        // Related Patterns section should have links
        cy.contains('Related Patterns').parent().find('a')
          .should('have.length.gt', 0)
      })
    })
  })

  describe('Multiple Practice Pages - Reference Sections Present', () => {
    // Test a few different practice pages to ensure consistency
    const practiceUrls = [
      '/practices/wax_on_wax_off/',
      '/practices/personal_productivity_flow/',
    ]

    practiceUrls.forEach((url) => {
      it(`should have reference section on ${url}`, () => {
        cy.visit(url)
        cy.contains('References and Related Patterns').should('exist')
      })
    })
  })

  describe('Concept Pages - Reference Sections', () => {

      beforeEach(() => {
          cy.visit('/concepts/chain_of_accountability/')
      })

      it('should have a References and Related Patterns section', () => {
          // Check for the references section
          cy.contains('References and Related Patterns').should('be.visible')
      })

      it('should have Further Exploration section', () => {
          // The section is within details/summary element
          cy.get('details.related').within(() => {
              cy.contains('Further Exploration').should('exist')
          })
      })
  })

  describe('Reference Section Expandability', () => {
    beforeEach(() => {
      cy.visit('/practices/wax_on_wax_off/')
    })

    it('should be able to expand/collapse the references section', () => {
      // Check if details element can be toggled
      cy.get('details.related').should('exist')
      
      // Click the summary to expand
      cy.get('details.related summary').click()
      cy.get('details.related').should('have.attr', 'open')
      
      // Click again to collapse
      cy.get('details.related summary').click()
      cy.get('details.related').should('not.have.attr', 'open')
    })
  })

  describe('Reference Links Validity', () => {
    beforeEach(() => {
      cy.visit('/concepts/chain_of_accountability/')
    })

    it('should have valid internal links in Related Concepts', () => {
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })

      // Get first related concept link and verify it's valid
      cy.get('details.related').contains('Related Concepts')
        .parent()
        .find('a')
        .first()
        .should('have.attr', 'href')
        .then((href) => {
          // Verify the href is a valid URL structure
          expect(href).to.match(/\/concepts\/|\/practices\//)
        })
    })

    it('should have valid internal links in Related Patterns', () => {
      cy.get('details.related').then($details => {
        if (!$details.prop('open')) {
          cy.wrap($details).find('summary').click()
        }
      })

      // Get first related pattern link and verify it's valid
      cy.get('details.related').contains('Related Patterns')
        .parent()
        .find('a')
        .first()
        .should('have.attr', 'href')
        .then((href) => {
          expect(href).to.match(/\/practices\/|\/concepts\//)
        })
    })
  })
})
