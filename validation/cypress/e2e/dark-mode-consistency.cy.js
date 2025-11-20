/**
 * Dark Mode Consistency Tests
 * 
 * Validates that all visible elements use CSS custom properties
 * and respect dark mode preferences without hardcoded color overrides.
 */

describe('Dark Mode Consistency', () => {
  beforeEach(() => {
    // Visit the page first, then emulate dark mode
    cy.visit('/');

    // Emulate dark mode preference using Chrome DevTools Protocol
    cy.wrap(Cypress.automation('remote:debugger:protocol', {
      command: 'Emulation.setEmulatedMedia',
      params: {
        media: '',
        features: [{
          name: 'prefers-color-scheme',
          value: 'dark'
        }]
      }
    }), { log: false });

    // Wait for CSS to apply
    cy.wait(500);
  });

  context('Navigation Elements', () => {
    it('should apply theme variables to main navbar', () => {
      cy.get('nav.navbar').should('exist');
      
      // Check that navbar uses CSS variables for background and color
      cy.get('nav.navbar').then(($nav) => {
        const bgColor = $nav.css('background-color');
        const color = $nav.css('color');
        
        // In dark mode, these should NOT be pure white (#fff or rgb(255, 255, 255))
        expect(bgColor).not.to.equal('rgb(255, 255, 255)');
        expect(bgColor).not.to.equal('#ffffff');
      });
    });

    it('should apply theme variables to navbar clone', () => {
      cy.get('#navbar-clone').should('exist');
      
      cy.get('#navbar-clone').then(($clone) => {
        const bgColor = $clone.css('background-color');
        
        // navbar-clone should NOT have hardcoded white background in dark mode
        expect(bgColor).not.to.equal('rgb(255, 255, 255)');
        expect(bgColor).not.to.equal('#ffffff');
      });
    });

    it('should have dark background in navbar-clone in dark mode', () => {
      cy.get('#navbar-clone').then(($clone) => {
        const cloneBg = $clone.css('background-color');

        // In dark mode, should NOT be white
        expect(cloneBg).not.to.equal('rgb(255, 255, 255)');
        expect(cloneBg).not.to.equal('#ffffff');

        // Should have some dark color (not fully transparent)
        expect(cloneBg).not.to.equal('rgba(0, 0, 0, 0)');
      });
    });
  });

  context('Recommendation Cards', () => {
    it('should use theme variables for recommendation section', () => {
      cy.visit('/bibliography/');
      
      cy.get('.recommendation-item').first().should('exist');
      
      cy.get('.recommendation-item').first().then(($card) => {
        const bgColor = $card.css('background-color');
        const color = $card.css('color');
        
        // Should not have hardcoded light theme colors
        expect(bgColor).not.to.equal('rgb(255, 255, 255)');
        expect(bgColor).not.to.equal('rgb(254, 254, 254)');
      });
    });

    it('should use theme variables for recommendation text elements', () => {
      cy.visit('/bibliography/');
      
      // Check title colors
      cy.get('.recommendation-title h3').first().then(($title) => {
        const color = $title.css('color');
        
        // Should not be hardcoded dark text color in dark mode
        expect(color).not.to.equal('rgb(11, 29, 39)'); // $color-text-ink
        expect(color).not.to.equal('rgb(3, 13, 18)'); // $color-text-heavy
      });
      
      // Check meta text colors
      cy.get('.recommendation-item b').first().then(($meta) => {
        const color = $meta.css('color');
        
        // Should use CSS variable, not hardcoded value
        expect(color).not.to.equal('rgb(125, 75, 1)'); // $color-earth-amber
      });
    });
  });

  context('No Hardcoded Color Overrides', () => {
    it.skip('should not contain hardcoded SCSS color variables in compiled CSS (production only)', () => {
      // NOTE: This test is skipped in development mode because Hugo server
      // may serve CSS differently than production builds.
      // Run this test against a production build with: hugo --gc --minify

      // Check that compiled CSS uses CSS custom properties
      // Hugo generates CSS files with hashes, so we need to find them dynamically
      cy.visit('/');
      cy.document().then((doc) => {
        const cssLink = Array.from(doc.querySelectorAll('link[rel="stylesheet"]'))
          .find(link => link.href.includes('custom.min'));

        if (!cssLink) {
          cy.log('CSS file not found - likely running in dev mode');
          return;
        }

        return cy.request(cssLink.href);
      }).then((response) => {
        if (!response) return;

        const css = response.body;
        
        // These hardcoded colors should NOT appear in the final CSS
        // They should all be replaced with var(--theme-*) references
        
        // Check for specific hardcoded values that should be replaced
        expect(css).not.to.match(/color:\s*#0b1d27/); // $color-text-ink
        expect(css).not.to.match(/color:\s*#7d4b01/); // $color-earth-amber
        expect(css).not.to.match(/color:\s*#9c671a/); // $color-amber-shadow
        expect(css).not.to.match(/color:\s*#3c5d79/); // $color-navy-muted (in recommendations)
      });
    });

    it.skip('should use CSS variables for all color properties in recommendations (production only)', () => {
      // NOTE: This test is skipped in development mode
      cy.visit('/');
      cy.document().then((doc) => {
        const cssLink = Array.from(doc.querySelectorAll('link[rel="stylesheet"]'))
          .find(link => link.href.includes('custom.min'));

        if (!cssLink) {
          cy.log('CSS file not found - likely running in dev mode');
          return;
        }

        return cy.request(cssLink.href);
      }).then((response) => {
        if (!response) return;

        const css = response.body;
        
        // Extract recommendation-related CSS rules
        const recommendationCSS = css.match(/\.recommendation[^{]*{[^}]*}/g) || [];
        
        recommendationCSS.forEach((rule) => {
          // Check that color properties use variables
          const colorMatches = rule.match(/color:\s*([^;]+);/g) || [];
          
          colorMatches.forEach((colorRule) => {
            // Should contain var(--theme-*) or be a brand color
            expect(colorRule).to.match(/var\(--theme-|#f39200|#1e75c0/);
          });
        });
      });
    });
  });

  context('Light/Dark Mode Toggle', () => {
    it('should display dark backgrounds when dark mode is enabled', () => {
      // NOTE: Testing the reverse (dark → light) is unreliable in Cypress
      // because the beforeEach hook always sets dark mode for all tests.
      // Manual testing or browser-based E2E tests are better for light mode.

      cy.get('body').should(($body) => {
        const darkBg = $body.css('background-color');
        
        // Should be dark background (test is run with dark mode emulation from beforeEach)
        expect(darkBg, 'Dark mode body background').not.to.match(/rgb\(254, 254, 254\)|rgb\(255, 255, 255\)/);

        // Verify it's actually a dark color
        expect(darkBg, 'Dark mode should have low RGB values').to.match(/rgb\(\d+, \d+, \d+\)/);

        // Parse RGB values and check they're all low (dark)
        const rgbMatch = darkBg.match(/rgb\((\d+), (\d+), (\d+)\)/);
        if (rgbMatch) {
          const [, r, g, b] = rgbMatch.map(Number);
          expect(r, 'Red channel should be low in dark mode').to.be.lessThan(50);
          expect(g, 'Green channel should be low in dark mode').to.be.lessThan(50);
          expect(b, 'Blue channel should be low in dark mode').to.be.lessThan(50);
        }
      });

      // Verify navbar-clone also has dark styling
      cy.get('#navbar-clone').should(($clone) => {
        const cloneBg = $clone.css('background-color');
        // Navbar clone should not be pure white in dark mode
        expect(cloneBg).not.to.equal('rgb(255, 255, 255)');
        expect(cloneBg).not.to.equal('rgb(254, 254, 254)');
      });
    });
  });
});

