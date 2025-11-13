# Bulma Upgrade Analysis: v0.9.x → v1.0.x
## Technical Deep Dive for Penguin Pragmatic Patterns

**Date:** 2025-11-12  
**Current Version:** v0.0.0-20230818164217 (August 2023 snapshot)  
**Target Version:** v1.0.2 (Latest Stable)  
**Complexity:** Medium-High  

---

## Version History Context

### Current State (August 2023 Snapshot)
- Based on Bulma v0.9.4 codebase
- Pre-dates v1.0 release (October 2023)
- Contains legacy SASS syntax
- Missing modern CSS features

### Bulma v1.0+ Major Changes (Released Oct 2023)
1. **CSS Variables (Custom Properties)**
   - All colors now CSS variables
   - Theme customization without recompilation
   - Runtime theme switching capability

2. **Modular Architecture**
   - Sass modules instead of `@import`
   - Tree-shaking friendly
   - Better namespace management

3. **Modern CSS Features**
   - CSS Grid layouts (optional)
   - Container queries support
   - Layer cascade (`@layer`)

4. **Breaking Changes**
   - Division operator migration (`/` → `math.div()`)
   - Color function updates
   - Variable naming conventions
   - Import path changes

---

## Breaking Changes Analysis

### 1. SASS Division Operator

**Issue:** Sass deprecated `/` operator for division

**Current Code Pattern:**
```scss
// In custom domain files
.element {
  margin: $space-xl / 2;
  padding: 16px / 4;
}
```

**Required Fix:**
```scss
@use "sass:math";

.element {
  margin: math.div($space-xl, 2);
  padding: math.div(16px, 4);
}
```

**Impact Areas:**
- `/assets/styles/_settings.scss` - Spacing calculations
- Domain-specific stylesheets (10 files)
- Any custom component overrides

**Automated Fix:** Possible with regex replacement
**Manual Review:** Required for complex expressions

---

### 2. Color Functions Migration

**Issue:** Legacy color functions deprecated

**Current Pattern:**
```scss
.button-variant {
  background: lighten($brand-primary, 10%);
  border: darken($brand-secondary, 5%);
  hover: saturate($brand-primary, 20%);
}
```

**Required Fix:**
```scss
@use "sass:color";

.button-variant {
  background: color.adjust($brand-primary, $lightness: 10%);
  border: color.adjust($brand-secondary, $lightness: -5%);
  hover: color.adjust($brand-primary, $saturation: 20%);
}
```

**Impact:** Moderate - Used in domain stylesheets
**Automated Fix:** Partially (requires context-aware replacement)

---

### 3. Import System Overhaul

**Issue:** `@import` deprecated in favor of `@use` and `@forward`

**Current Pattern:**
```scss
// Legacy approach
@import "bulma/utilities/_all";
@import "bulma/base/_all";
@import "bulma/elements/button";
```

**Required Fix:**
```scss
// Modern module system
@use "bulma/utilities" as utilities;
@use "bulma/base";
@use "bulma/elements/button" as button;

// Access with namespace
.custom-button {
  @extend button.$button;
}
```

**Migration Strategy:**
1. Keep existing imports during transition
2. Add `@use` alongside `@import`
3. Gradually migrate to pure `@use`
4. Remove deprecated imports in final phase

---

### 4. CSS Variables Integration

**Opportunity:** Bulma v1.x uses CSS custom properties

**Before (Compile-time only):**
```scss
$primary: #f39200;

.button {
  background: $primary;
}
```

**After (Runtime + Compile):**
```scss
$primary: #f39200;

:root {
  --bulma-primary: #{$primary};
}

.button {
  background: var(--bulma-primary);
}
```

**Benefits:**
- Theme switching without rebuild
- Better browser DevTools integration
- Reduced CSS bundle size
- Progressive enhancement

---

## Custom Variable Compatibility

### Current Settings (`_settings.scss`)

**Spacing Scale:**
- All custom-defined (no Bulma conflict)
- Uses rem units (compatible)
- ✅ **No migration required**

**Brand Colors:**
```scss
$brand-primary: #f39200;    // Custom
$brand-secondary: #1e75c0;  // Custom
$brand-dark: #1c3337;       // Custom
```
- ✅ **No naming conflict with Bulma v1.x**
- Can coexist with `--bulma-*` variables

**Breakpoints:**
```scss
$breakpoint-desktop: 1024px;
$breakpoint-tablet: 800px;
```
- ⚠️ **Potential conflict** with Bulma's built-in breakpoints
- Recommendation: Namespace as `$custom-breakpoint-*`

---

## Domain-Specific Stylesheet Analysis

### Impact Assessment by File

| File | Deprecated Syntax | Color Functions | Import Issues | Priority |
|------|-------------------|-----------------|---------------|----------|
| `ammerse.scss` | Low | None | Low | P3 |
| `custom.scss` | Medium | Medium | Medium | P1 |
| `glossary.scss` | Low | Low | Low | P3 |
| `images.scss` | Low | None | Low | P4 |
| `patterns.scss` | Medium | Medium | High | P1 |
| `quotes.scss` | Low | Low | Low | P3 |
| `recommendations.scss` | Low | None | Low | P4 |
| `taxonomies.scss` | Medium | Medium | Medium | P2 |
| `toc.scss` | Low | Low | Low | P3 |
| `visualization.scss` | Low | None | Low | P4 |

**Legend:**
- **P1:** Critical path, migrate first
- **P2:** Important, migrate second wave
- **P3:** Minor impact, batch process
- **P4:** Minimal risk, migrate last

---

## Hugo-Fresh Theme Compatibility

### Theme Module Dependencies

**Current Setup:**
```go
// go.mod
require (
    github.com/StefMa/hugo-fresh v1.0.0
    github.com/jgthms/bulma v0.0.0-20230818164217
)
```

### Theme Override Strategy

**Option A: Fork hugo-fresh**
- Clone and maintain custom fork
- Apply Bulma v1.x compatibility
- Submit upstream PR

**Option B: Local Theme Override**
```
/themes/local-fresh/  (New)
├── layouts/
│   └── partials/
│       └── overrides/  (Bulma v1.x compatible)
└── assets/
    └── bulma/  (v1.0.2)
```

**Option C: Hybrid (RECOMMENDED)**
- Keep hugo-fresh for layout logic
- Override only style includes
- Maintain in `/layouts/partials/custom/`

---

## Migration Roadmap

### Phase 1: Preparation (Day 1)
**Goal:** Non-breaking foundation

Tasks:
- [ ] Create git branch: `feature/bulma-v1-upgrade`
- [ ] Install Sass migration tool: `sass-migrator`
- [ ] Audit all SCSS files for deprecated syntax
- [ ] Create deprecation report
- [ ] Set up parallel builds (old + new)

**Deliverable:** Complete audit report with line-by-line fixes needed

---

### Phase 2: Core Migration (Days 2-3)
**Goal:** Update base dependencies

Tasks:
- [ ] Update `go.mod`: Bulma → v1.0.2
- [ ] Create compatibility shim: `_bulma-compat.scss`
- [ ] Migrate `_settings.scss`:
  - Add `@use "sass:math"` import
  - Replace `/` division operators
  - Add CSS variable exports
- [ ] Test compilation without errors

**Deliverable:** Clean Bulma v1.x build

**Compatibility Shim Example:**
```scss
// _bulma-compat.scss
@use "sass:math";
@use "sass:color";

// Legacy function wrappers
@function lighten($color, $amount) {
  @return color.adjust($color, $lightness: $amount);
}

@function darken($color, $amount) {
  @return color.adjust($color, $lightness: -$amount);
}

// Division helper
@function divide($a, $b) {
  @return math.div($a, $b);
}
```

---

### Phase 3: Domain Stylesheet Migration (Days 3-4)
**Goal:** Migrate custom styles

**Priority 1 Files:**
1. `custom.scss`
   - [ ] Convert division operators
   - [ ] Update color functions
   - [ ] Test component rendering

2. `patterns.scss`
   - [ ] Migrate module imports
   - [ ] Update Bulma component extensions
   - [ ] Verify layout integrity

**Priority 2-4 Files:**
- [ ] Batch process with `sass-migrator`
- [ ] Manual review of complex logic
- [ ] Incremental testing per file

---

### Phase 4: Hugo-Fresh Integration (Day 5)
**Goal:** Connect upgraded styles to theme

Tasks:
- [ ] Update layout head includes
- [ ] Modify asset pipeline configuration
- [ ] Test all page templates:
  - Home page
  - Concept pages
  - Practice pages
  - Taxonomy pages
  - List pages
- [ ] Cross-browser testing

---

### Phase 5: Visual QA & Regression Testing (Day 6-7)
**Goal:** Ensure zero visual breakage

Tasks:
- [ ] Screenshot comparison (before/after)
- [ ] Component-level testing:
  - Navigation
  - Hero sections
  - Card layouts
  - Forms (if applicable)
  - Footer
- [ ] Responsive design verification
- [ ] Print stylesheet testing

Tools:
- Percy for visual regression
- BackstopJS for screenshot comparison
- Manual testing on:
  - Chrome (latest)
  - Firefox (latest)
  - Safari (latest)
  - Mobile viewports

---

## Automated Migration Tools

### 1. Sass Migrator (Official Tool)

**Installation:**
```bash
npm install -g sass-migrator
```

**Usage:**
```bash
# Division operator migration
sass-migrator division assets/styles/**/*.scss

# Module system migration
sass-migrator module assets/styles/**/*.scss \
  --migrate-deps --forward=all
```

**Limitations:**
- Cannot handle complex custom functions
- May break carefully formatted code
- Requires manual review of output

### 2. Custom Migration Script

**Create:** `/validation/scripts/migrate-bulma.sh`

```bash
#!/bin/bash
# Bulma v1.x migration helper

echo "🔄 Starting Bulma migration..."

# Backup current files
cp -r assets/styles assets/styles.backup

# Run sass-migrator
sass-migrator division assets/styles/**/*.scss --no-unicode

# Custom regex replacements
find assets/styles -name "*.scss" -type f -exec sed -i '' \
  's/@import "bulma\//@use "bulma\//g' {} +

echo "✅ Migration complete. Review changes carefully."
```

---

## Testing Strategy

### Unit Tests (Per File)
```scss
// Test file structure
@use "sass:meta";
@use "../_settings" as settings;
@use "../domains/custom" as custom;

// Verify compilation
$test-spacing: settings.$space-xl;
$test-color: custom.$brand-primary;

.test-element {
  margin: $test-spacing;
  color: $test-color;
}
```

### Integration Tests
1. **Build Tests:**
   ```bash
   hugo --gc --minify --buildDrafts=false
   # Should exit with code 0
   ```

2. **Style Tests:**
   ```bash
   cd validation
   npm run lint:css
   # Should report 0 errors
   ```

3. **Visual Regression:**
   ```bash
   npm run test:visual
   # Compare against baseline screenshots
   ```

---

## Rollback Plan

### Quick Rollback (< 5 minutes)
```bash
# Revert go.mod
git checkout go.mod go.sum

# Restore asset files
git checkout assets/

# Rebuild
hugo --gc
```

### Partial Rollback (Compatibility Layer)
- Keep Bulma v1.x
- Restore compatibility shim
- Disable CSS variables temporarily

### Full Rollback with Learning
- Document what broke
- Create issue tracker for problems
- Plan incremental retry

---

## Success Criteria

### Technical Validation
- [ ] Zero SASS compilation warnings
- [ ] Zero SASS deprecation errors
- [ ] All stylelint rules pass
- [ ] Hugo build completes < 2 seconds
- [ ] No console errors in browser

### Visual Validation
- [ ] All pages render identically
- [ ] No layout shifts (CLS unchanged)
- [ ] Responsive breakpoints intact
- [ ] Print styles preserved

### Performance Validation
- [ ] CSS bundle size ≤ current + 5%
- [ ] First Paint timing unchanged
- [ ] LCP maintained or improved
- [ ] No new render-blocking resources

---

## Alternative: Custom Theme Approach

### When to Consider Full Custom Build

**Triggers:**
- hugo-fresh abandoned/unmaintained
- Extensive customization already present
- Performance requirements exceed theme capability
- Brand identity requires unique structure

### Custom Theme Structure
```
/themes/ppp-custom/
├── layouts/
│   ├── _default/
│   │   ├── baseof.html (Clean HTML5)
│   │   ├── list.html
│   │   └── single.html
│   ├── partials/
│   │   ├── head.html (Critical CSS inline)
│   │   ├── header.html
│   │   ├── footer.html
│   │   └── meta/ (SEO optimized)
│   └── shortcodes/
├── assets/
│   ├── scss/
│   │   ├── base/ (Reset + base styles)
│   │   ├── components/ (Bulma-inspired, tailored)
│   │   ├── layouts/ (Grid systems)
│   │   └── utilities/ (Helper classes)
│   └── js/ (Minimal, deferred)
└── static/
    └── fonts/ (Subset, WOFF2 only)
```

### Custom Theme Benefits
- **Performance:** 
  - Eliminate unused Bulma components (potential 40% reduction)
  - Inline critical CSS automatically
  - Optimize for Core Web Vitals from ground up

- **Maintainability:**
  - No theme dependency conflicts
  - Direct control over HTML output
  - Easier long-term updates

- **SEO:**
  - Semantic HTML structure
  - Microdata integration native
  - Optimal heading hierarchy

### Custom Theme Effort
**Estimated Time:** 5-7 days (1 developer)
**Breakdown:**
- Day 1: Architecture + base templates
- Day 2-3: Component library (buttons, cards, nav)
- Day 4: Layout system (grid, containers)
- Day 5: Page templates (home, single, list)
- Day 6-7: Testing + refinement

---

## Recommendation Summary

### Recommended Path: **Hybrid Approach**

**Phase 1:** Upgrade Bulma (This Sprint)
- Immediate compatibility fixes
- Maintain hugo-fresh dependency
- Create local overrides

**Phase 2:** Incremental Custom Components (Next Sprint)
- Replace high-impact components
- Build component library
- Keep theme as fallback

**Phase 3:** Full Custom Theme (Future)
- Evaluate after Phase 2 metrics
- Decision point: 90 days from Phase 1 completion

**Rationale:**
- Balances risk and reward
- Delivers quick wins (performance)
- Preserves optionality
- Allows learning period

---

## Questions to Resolve Before Starting

1. **Build System:** Current Hugo pipeline capacity for Sass compilation?
2. **CI/CD:** Will automated tests catch SCSS regressions?
3. **Staging Environment:** Available for pre-production validation?
4. **Browser Support:** Minimum supported versions?
5. **Timeline:** Hard deadline or flexible schedule?

---

## Appendix: Bulma v1.0 New Features

### Worth Adopting

**CSS Layers:**
```scss
@layer bulma, custom-overrides;

@layer custom-overrides {
  .button {
    // Higher specificity without !important
  }
}
```

**Container Queries:**
```scss
@container (min-width: 400px) {
  .card {
    grid-template-columns: 1fr 1fr;
  }
}
```

**Color Scheme Support:**
```css
:root {
  color-scheme: light dark;
}

@media (prefers-color-scheme: dark) {
  --bulma-text: #fff;
}
```

---

**Document Owner:** Front-End Specialist  
**Next Action:** Review with team, approve migration path  
**Dependencies:** Hugo build environment, staging server  
**Last Updated:** 2025-11-12
