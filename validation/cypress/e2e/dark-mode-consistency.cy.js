/**
 * Dark Mode Consistency Tests
 * 
 * Validates that all visible elements use CSS custom properties
 * and respect dark mode preferences without hardcoded color overrides.
 */

describe('Dark Mode Consistency', () => {
  beforeEach(() => {
    // Force dark mode preference
    cy.visit('/', {
      onBeforeLoad(win) {
        cy.stub(win, 'matchMedia')
          .withArgs('(prefers-color-scheme: dark)')
          .returns({
            matches: true,
            media: '(prefers-color-scheme: dark)',
            addEventListener: cy.stub(),
            removeEventListener: cy.stub(),
          });
      },
    });
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

    it('should match navbar and navbar-clone backgrounds', () => {
      let navBg, cloneBg;
      
      cy.get('nav.navbar').then(($nav) => {
        navBg = $nav.css('background-color');
      });
      
      cy.get('#navbar-clone').then(($clone) => {
        cloneBg = $clone.css('background-color');
        expect(cloneBg).to.equal(navBg);
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
    it('should not contain hardcoded SCSS color variables in compiled CSS', () => {
      // Check that compiled CSS uses CSS custom properties
      cy.request('/css/custom.min.css').then((response) => {
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

    it('should use CSS variables for all color properties in recommendations', () => {
      cy.request('/css/custom.min.css').then((response) => {
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
    it('should properly switch between light and dark themes', () => {
      // Test in light mode
      cy.visit('/', {
        onBeforeLoad(win) {
          cy.stub(win, 'matchMedia')
            .withArgs('(prefers-color-scheme: dark)')
            .returns({
              matches: false,
              media: '(prefers-color-scheme: light)',
              addEventListener: cy.stub(),
              removeEventListener: cy.stub(),
            });
        },
      });

      cy.get('body').then(($body) => {
        const lightBg = $body.css('background-color');
        
        // Should be light background
        expect(lightBg).to.match(/rgb\(254, 254, 254\)|rgb\(255, 255, 255\)/);
      });
      
      // Test in dark mode
      cy.visit('/', {
        onBeforeLoad(win) {
          cy.stub(win, 'matchMedia')
            .withArgs('(prefers-color-scheme: dark)')
            .returns({
              matches: true,
              media: '(prefers-color-scheme: dark)',
              addEventListener: cy.stub(),
              removeEventListener: cy.stub(),
            });
        },
      });

      cy.get('body').then(($body) => {
        const darkBg = $body.css('background-color');
        
        // Should be dark background
        expect(darkBg).not.to.match(/rgb\(254, 254, 254\)|rgb\(255, 255, 255\)/);
      });
    });
  });
});

