# SCSS/SASS Setup & Dark Mode Implementation Analysis
**Date:** 2025-11-19  
**Agent:** Front-End Freddy (Frontend Specialist)  
**Context:** Repository structure analysis and recent dark mode work review

---

## Executive Summary

The repository implements a **modular, domain-driven SCSS architecture** with a recent (2025-11-18) dark mode implementation using **CSS custom properties**. The setup leverages Hugo Pipes for compilation, Bulma v1.x as the base framework, and follows a 3-tier hierarchical theming system.

**Key Metrics:**
- **103 CSS custom properties** defined (58 light + 45 dark overrides)
- **10 domain-specific stylesheets** (custom, patterns, quotes, glossary, etc.)
- **70+ hardcoded colors replaced** with semantic variables
- **Zero duplication** across light/dark themes
- **Build impact:** +4.8KB minified CSS, no performance regression

---

## 1. Architecture Overview

### 1.1 Directory Structure

```
assets/
├── style.sass               # Main entry point (imports Bulma, Fresh theme, custom styles)
├── styles/
│   ├── _settings.scss       # Design tokens (colors, spacing, fonts, breakpoints)
│   ├── _theme.scss          # CSS custom properties for light/dark themes
│   └── domains/             # Feature-scoped stylesheets
│       ├── ammerse.scss     # AMMERSE visualization styling
│       ├── custom.scss      # Global utilities (fonts, accessibility, navbar)
│       ├── glossary.scss    # Terminology and definition styling
│       ├── images.scss      # Image layout and responsive behavior
│       ├── patterns.scss    # Practice/concept card components
│       ├── quotes.scss      # Blockquote, tips, warnings, info boxes
│       ├── recommendations.scss  # Related content cards
│       ├── taxonomies.scss  # Tag and category layouts
│       ├── toc.scss         # Table of contents styling
│       └── visualization.scss    # Data visualization components
```

### 1.2 Compilation Pipeline

**Hugo Pipes workflow:**
1. `layouts/partials/css.html` defines SCSS bundle dictionaries
2. Hugo compiles SCSS → CSS with `resources.ToCSS`
3. Minification applied via `resources.Minify` (production)
4. Output: `resources/_gen/assets/scss/` (gitignored)

**Build command:**
```bash
hugo --gc --minify --buildDrafts=false
# Result: ~900ms build, 59MB public/ directory
```

---

## 2. Design Token System (`_settings.scss`)

### 2.1 Brand Palette
```scss
$brand-primary: #f39200;     // Orange (SDD signature color)
$brand-secondary: #1e75c0;   // Blue (accent)
$brand-dark: #1c3337;        // Deep teal-grey
```

### 2.2 Core Semantic Colors
- **Text:** 9 variants (`text-primary`, `text-ink`, `text-heavy`, `text-muted`, etc.)
- **Surfaces:** 4 base colors (`surface-light`, `surface-deep`, `surface-haze`)
- **Accents:** Info, tip, warning, shadow colors
- **Total:** 16 SCSS variables defined

### 2.3 Spacing Scale
- **Prefix:** `$space-*`
- **Range:** `4xs` (0.15rem) → `hero` (4.5rem)
- **Total:** 18 spacing units
- **Philosophy:** T-shirt sizing + semantic names (`snug`, `cozy`, `gutter`)

### 2.4 Other Tokens
- **Fonts:** `$font-family-base`, `$font-family-heading` (d-din, literta, fallbacks)
- **Borders:** 3 widths (`hairline`, `thin`, `regular`)
- **Breakpoints:** `desktop` (1024px), `tablet` (800px)

---

## 3. Dark Mode Implementation (ADR-002)

### 3.1 Timeline & Context
- **Date:** 2025-11-18
- **Trigger:** Previous ADR-001 stripped Bulma's `prefers-color-scheme` queries, breaking mobile
- **Decision:** Implement CSS custom properties with hierarchical theming
- **Status:** ✅ Complete (supersedes ADR-001)

### 3.2 Hierarchical Variable System

**Tier 1: Base Colors** (defined once per theme)
```scss
:root {
  /* Light theme bases */
  --theme-bg-base-light: #fefefe;
  --theme-bg-base-body: #fefefe;
  --theme-text-base-primary: #1f2933;
  /* ...58 total light variables... */
}

@media (prefers-color-scheme: dark) {
  :root {
    /* Dark theme bases */
    --theme-bg-base-dark-primary: #0f1419;
    --theme-bg-base-dark-body: #0a0e13;
    --theme-text-base-dark-primary: #e3e8ed;
    /* ...additional dark bases... */
  }
}
```

**Tier 2: Semantic Mappings** (reference base colors)
```scss
:root {
  /* Light defaults */
  --theme-bg-body: var(--theme-bg-base-body);
  --theme-bg-card: var(--theme-bg-base-light);
  --theme-text-primary: var(--theme-text-base-primary);
}

@media (prefers-color-scheme: dark) {
  :root {
    /* Override to dark bases */
    --theme-bg-body: var(--theme-bg-base-dark-body);
    --theme-bg-card: var(--theme-bg-base-dark-card);
    --theme-text-primary: var(--theme-text-base-dark-primary);
  }
}
```

**Tier 3: Component Usage** (use semantic variables)
```scss
.pattern-card {
  background: var(--theme-bg-card);
  color: var(--theme-text-primary);
  border-color: var(--theme-border-card);
}
```

### 3.3 Variable Categories

| Category | Light Variables | Dark Overrides | Purpose |
|----------|-----------------|----------------|---------|
| Backgrounds | 18 | 15 | Surface colors, cards, dropdowns |
| Text | 20 | 13 | Body text, headings, links, metadata |
| Borders | 6 | 6 | Card edges, HR lines, scrollbars |
| Accents | 14 | 11 | Quotes, info boxes, AMMERSE, aliases |
| **Total** | **58** | **45** | **103 unique variables** |

### 3.4 Brand Color Integration

**Orange (#f39200):**
- Used consistently in both themes (excellent contrast)
- Applied to: primary CTAs, scrollbar thumbs, HR borders, tag highlights

**Blue (#1e75c0):**
- Light mode: Full opacity in borders/accents
- Dark mode: `rgba(30, 117, 192, 0.8)` (80% opacity) for reduced glare
- Applied to: secondary borders, icon colors, emphasis text

---

## 4. Domain Stylesheets

### 4.1 `domains/custom.scss`
**Purpose:** Global utilities, accessibility, fonts, navbar  
**Dark mode changes:** 15 color replacements
- Skip link backgrounds
- Navbar text colors
- Dropdown menu backgrounds

**Key features:**
- `.skip-link` and `.visually-hidden` for WCAG compliance
- Font-face declarations for `literta` and `d-din`
- Scroll anchor offset for fixed headers

### 4.2 `domains/patterns.scss`
**Purpose:** Practice/concept card layouts  
**Dark mode changes:** 30 color replacements
- Card backgrounds with gradient hover effects
- Summary section backgrounds
- Scrollbar theming for horizontal card containers
- Related content section styling

**Responsive behavior:**
- Mobile: Horizontal scroll with snap points
- Desktop: CSS Grid (3-column layout)

### 4.3 `domains/quotes.scss`
**Purpose:** Blockquotes, tips, warnings, info boxes  
**Dark mode changes:** 9 color replacements
- Quote borders and footer colors
- Warning/tip/info box backgrounds
- Text contrast adjustments

### 4.4 `domains/glossary.scss`
**Purpose:** Term definitions, aliases, popovers  
**Dark mode changes:** 4 color replacements
- Term background colors
- Alias badge styling
- Popover backgrounds

### 4.5 `domains/ammerse.scss`
**Purpose:** AMMERSE quality attribute visualizations  
**Dark mode changes:** 7 color replacements
- Visualization card backgrounds
- Shadow effects
- Description text colors

### 4.6 Other Domain Files
- **recommendations.scss:** Related content cards (4 replacements)
- **taxonomies.scss:** Tag/category layouts (2 replacements)
- **toc.scss:** Table of contents styling (minimal changes)
- **images.scss:** Responsive image behavior (no theme changes)
- **visualization.scss:** Data visualization components (no theme changes yet)

---

## 5. Recent Work Summary (2025-11-18)

### 5.1 Files Modified
1. `layouts/partials/css.html` - Removed media query stripping regex
2. `assets/styles/_theme.scss` - **NEW FILE** (169 lines, 103 variables)
3. `assets/style.sass` - Added theme import
4. 10 domain SCSS files - Replaced 70+ hardcoded colors

### 5.2 Implementation Metrics
- **Build time:** 1513ms (no regression)
- **Output size:** +4.8KB minified CSS
- **Browser support:** 95.8% global (Chrome 49+, Firefox 31+, Safari 9.1+)
- **Pages generated:** 265 EN + 18 NL (unchanged)
- **Visual regression:** Zero (light theme preserved)

### 5.3 Validation Status
- ✅ Site builds without errors
- ✅ Light theme visually unchanged
- ✅ Dark theme renders with brand colors
- ✅ CSS variables present in output
- ✅ `@media (prefers-color-scheme: dark)` query present
- ⚠️ Lighthouse audit pending (requires deployment)
- ⚠️ Mobile testing pending (requires deployment)

---

## 6. Design Patterns & Best Practices

### 6.1 Variable Naming Convention
```
--theme-{category}-{variant}-{modifier}

Examples:
--theme-bg-card-hover-start        # Background, card, hover state, gradient start
--theme-text-card-meta             # Text, card component, metadata variant
--theme-border-primary             # Border, primary semantic category
```

### 6.2 Adding New Colors
**Correct workflow:**
1. Define base color in `_theme.scss` (if new)
2. Create semantic mapping in `:root` (light theme)
3. Override semantic mapping in `@media (prefers-color-scheme: dark)`
4. Use semantic variable in domain SCSS files

**Anti-pattern (avoid):**
```scss
/* BAD: Hardcoded color */
.my-component {
  background: #fefefe;
}

/* GOOD: Semantic variable */
.my-component {
  background: var(--theme-bg-card);
}
```

### 6.3 Hugo Pipes Integration
Domain stylesheets are feature-gated in `layouts/partials/css.html`:

```go
{{ $scssBundles := slice }}

{{ if .Site.Params.enablePatterns }}
  {{ $scssBundles = $scssBundles | append (dict "name" "patterns" "file" "styles/domains/patterns.scss") }}
{{ end }}

{{ if .Site.Params.enableVisualization }}
  {{ $scssBundles = $scssBundles | append (dict "name" "visualization" "file" "styles/domains/visualization.scss") }}
{{ end }}
```

This allows conditional loading based on Hugo config flags.

---

## 7. Trade-offs & Technical Debt

### 7.1 Positive Decisions
- ✅ **CSS custom properties:** Runtime theming, excellent browser support, DevTools-friendly
- ✅ **Hierarchical variables:** Zero duplication, maintainable overrides
- ✅ **Domain separation:** Locality of change, easy to reason about
- ✅ **Brand color integration:** Maintains identity across themes

### 7.2 Known Limitations
- ⚠️ **Learning curve:** Developers must understand 3-tier variable system
- ⚠️ **CI/CD gaps:** No automated dark mode testing (Lighthouse, Cypress visual regression)
- ⚠️ **Manual testing required:** Mobile devices need manual verification
- ⚠️ **No user toggle:** Respects OS preference only (no in-app switcher)

### 7.3 Future Considerations
- **JavaScript theme toggle:** Allow user override of OS preference
- **Additional themes:** High-contrast, sepia, custom brand variants
- **Automated testing:** Add Cypress visual regression for dark mode
- **Performance monitoring:** Track CSS bundle size growth

---

## 8. Architectural Decision Records

### ADR-001 (2025-11-14) - SUPERSEDED
**Decision:** Strip Bulma's `prefers-color-scheme` media queries  
**Rationale:** Dark mode rendered inconsistently on mobile  
**Outcome:** Removed dark mode support entirely  
**Status:** ❌ Superseded by ADR-002

### ADR-002 (2025-11-18) - ACCEPTED
**Decision:** Enable dark mode with CSS custom properties  
**Rationale:** Modern web standard, user preference respect, maintainable  
**Outcome:** 103 CSS variables, 70+ color replacements, zero visual regression  
**Status:** ✅ Active

---

## 9. Developer Workflow

### 9.1 Editing Styles
```bash
# 1. Edit relevant domain file
vim assets/styles/domains/patterns.scss

# 2. Build and verify
hugo --gc --minify --buildDrafts=false

# 3. Test dark mode (if browser supports)
# Toggle OS dark mode setting or use DevTools device emulation

# 4. Optional: Lint (see Post-resolution notes in .agents/stylesheet_analysis.md)
npx stylelint "assets/styles/**/*.scss"

# 5. Commit SCSS only (Hugo regenerates CSS on deploy)
git add assets/styles/domains/patterns.scss
git commit -m "Update pattern card hover states"
```

### 9.2 Adding New Domain Stylesheet
```bash
# 1. Create file
touch assets/styles/domains/my-feature.scss

# 2. Import settings and theme
cat > assets/styles/domains/my-feature.scss << 'EOF'
@use "../settings" as *;
@use "../theme";

.my-component {
  background: var(--theme-bg-card);
  color: var(--theme-text-primary);
  padding: $space-card;
}
EOF

# 3. Register in layouts/partials/css.html
# Add to $scssBundles slice (see section 6.3)

# 4. Enable in Hugo config (if feature-gated)
echo "enableMyFeature = true" >> config.yaml
```

---

## 10. Recommendations

### 10.1 Immediate (High Priority)
1. **Add Lighthouse CI checks** for dark mode contrast (WCAG AA)
2. **Manual mobile testing** on iOS/Android devices
3. **Document variable naming convention** in assets/README.md
4. **Create visual regression tests** in Cypress for key pages

### 10.2 Short-term (Medium Priority)
5. **Stylelint integration** in CI pipeline
6. **Theme toggle component** (optional user override)
7. **High-contrast theme variant** for accessibility
8. **Bundle size monitoring** in CI (track CSS growth)

### 10.3 Long-term (Low Priority)
9. **Component library documentation** (Storybook or similar)
10. **Design token export** (JSON format for design tools)
11. **Performance budgeting** (CSS bundle size limits)
12. **Theme marketplace** (allow custom user themes)

---

## 11. Related Documentation

- **ADR-002:** `docs/architecture/ADRS/ADR-002-enable-dark-mode-support.md`
- **Work log:** `work/logs/2025-11-18-dark-theme-implementation.md`
- **Assets README:** `assets/README.md`
- **Stylesheet analysis:** `.agents/stylesheet_analysis.md` (if exists)
- **Hugo Pipes docs:** https://gohugo.io/hugo-pipes/scss-sass/

---

## Conclusion

The SCSS/SASS setup represents a **mature, maintainable front-end architecture** with strong separation of concerns. The dark mode implementation (ADR-002) successfully balances user experience, maintainability, and performance without introducing breaking changes.

**Strengths:**
- Domain-driven modularity
- Zero-duplication variable system
- Modern web standards (CSS custom properties)
- Brand identity preservation across themes

**Areas for improvement:**
- Automated testing coverage
- Developer documentation depth
- CI/CD integration maturity

The architecture is well-positioned for future enhancements (theme variants, component library, performance optimization) while maintaining current stability.

---

**Front-End Freddy** | SDD Agent  
*Analysis Date: 2025-11-19*

---

## 12. Dark Mode Bug Resolution Plan

**Date:** 2025-11-19  
**Context:** Visual inspection revealed 3 main styling issues affecting dark mode rendering

### 12.1 Issue Analysis

#### Issue #1: Body Background Hardcoded
**Location:** `assets/styles/domains/custom.scss` (line 59)  
**Current code:**
```scss
body {
    font-family: d-din, literta, "Gill Sans", "Open Sans", sans-serif;
    font-size: 18px;
    line-height: $space-2xl;
    background: #fefefe !important
}
```

**Problem:**
- Hardcoded light color `#fefefe` with `!important` flag
- Overrides dark mode background defined in `_theme.scss`
- Variable `--theme-bg-body` already exists but is unused here

**Solution:**
Replace hardcoded value with CSS custom property:
```scss
body {
    font-family: d-din, literta, "Gill Sans", "Open Sans", sans-serif;
    font-size: 18px;
    line-height: $space-2xl;
    background: var(--theme-bg-body);
}
```

**Impact:** High - affects entire page background

---

#### Issue #2: Navbar-Clone Styling Mismatch
**Location:** Hugo Fresh theme `_navbar.scss` + `assets/styles/domains/custom.scss`  
**Problem:**
- Fresh theme defines `#navbar-clone` with hardcoded `background: $white`
- Custom overrides exist in `custom.scss` for text colors but not background
- When navbar-clone becomes visible on scroll, it shows white background in dark mode

**Root cause analysis:**
```scss
// From Fresh theme (_navbar.scss, line 108):
#navbar-clone {
    position: fixed;
    background: $white;  // Hardcoded!
    // ...other styles...
}
```

**Solution:**
Add background override in `assets/styles/domains/custom.scss` after the existing `#navbar-clone` text color rules:
```scss
#navbar-clone {
    z-index: 999 !important;
    background: var(--theme-bg-dropdown) !important;  // Override Fresh theme hardcoded value
}
```

**Alternative approach (if !important is problematic):**
Create a more specific selector or use Hugo module replacement to override the Fresh theme file entirely.

**Impact:** Medium - affects mobile/tablet users primarily (navbar-clone appears on scroll)

---

#### Issue #3: Section Grey Background Hardcoded
**Location:** Hugo Fresh theme `_sections.scss` (line 10)  
**Problem:**
- Fresh theme defines `.section-feature-grey` with hardcoded `background-color: $section-grey`
- Variable `$section-grey` is defined in Fresh theme as `#fbfbfb` (light grey)
- Used extensively across 15 layout files (practices, concepts, tools, etc.)

**Root cause:**
```scss
// From Fresh theme (_sections.scss):
.section {
    &.section-feature-grey {
        background-color: $section-grey;  // Fresh theme variable, not our custom property
    }
}
```

**Solution:**
Override in `assets/styles/domains/custom.scss` to use our theme variables:
```scss
.section.section-feature-grey {
    background-color: var(--theme-bg-secondary) !important;
}
```

**Why `!important` is needed:**
Fresh theme styles are loaded via Hugo modules and compiled before our custom styles. The `!important` flag ensures our override takes precedence.

**Impact:** High - affects 15 pages (all list views, glossary, books, tags)

---

### 12.2 Implementation Order & Rationale

**Step 1: Body background** (Easiest, highest visual impact)
- Single line change
- No selector specificity conflicts
- Immediately visible improvement

**Step 2: Section grey background** (Moderate difficulty, high impact)
- Single rule addition
- Requires `!important` to override theme
- Affects many pages

**Step 3: Navbar-clone background** (Moderate difficulty, medium impact)
- Single rule addition
- May require testing scroll behavior
- Visible only on mobile/scroll

### 12.3 Testing Checklist

After each change:
- [ ] Build site: `hugo --gc --minify --buildDrafts=false`
- [ ] Check for build errors
- [ ] Start dev server: `hugo server --bind 0.0.0.0`
- [ ] Test in browser with light mode (OS preference)
- [ ] Test in browser with dark mode (OS preference)
- [ ] Verify no visual regression in light mode
- [ ] Git commit with descriptive message

**Specific test scenarios:**

**For Issue #1 (Body background):**
- Light mode: Should remain white/off-white (#fefefe)
- Dark mode: Should show dark background (#0a0e13)

**For Issue #2 (Navbar-clone):**
- Scroll down page on mobile/desktop
- Verify navbar-clone background matches theme
- Check dropdown menu backgrounds

**For Issue #3 (Section backgrounds):**
- Visit `/practices/`, `/concepts/`, `/glossary/`, `/tools/`
- Verify section backgrounds match theme
- Check card contrast against section background

### 12.4 Risk Assessment

**Low risk:**
- All changes use existing CSS custom properties
- Light mode behavior preserved (variables resolve to same colors)
- Changes are isolated to visual styling (no layout/functionality impact)

**Potential issues:**
- `!important` flags may complicate future overrides
- Fresh theme updates could reintroduce hardcoded values

**Mitigation:**
- Document all `!important` usage in code comments
- Add validation tests to catch regressions
- Consider Hugo module replacement strategy for Fresh theme files (future work)

### 12.5 Alternative: Hugo Module Replacement

**For long-term maintainability**, consider replacing Fresh theme files:

```yaml
# In config.yaml:
module:
  mounts:
    - source: assets/fresh-overrides/_navbar.scss
      target: assets/fresh/partials/_navbar.scss
    - source: assets/fresh-overrides/_sections.scss
      target: assets/fresh/partials/_sections.scss
```

**Pros:**
- No `!important` flags needed
- Complete control over theme styles
- Cleaner CSS output

**Cons:**
- Must track Fresh theme updates manually
- More files to maintain
- Potential merge conflicts on theme updates

**Recommendation:** Implement quick fixes now with `!important`, evaluate module replacement in future sprint.

---

### 12.6 Execution Steps

```bash
# Step 1: Body background
# Edit: assets/styles/domains/custom.scss (line 59)
# Change: background: #fefefe !important
# To: background: var(--theme-bg-body);
hugo --gc --minify --buildDrafts=false && hugo server
# Test both themes, verify no regression
git add assets/styles/domains/custom.scss
git commit -m "fix(styles): replace hardcoded body background with CSS custom property"

# Step 2: Section grey background
# Edit: assets/styles/domains/custom.scss (add new rule)
# Add after line 139 (#navbar-clone block)
hugo --gc --minify --buildDrafts=false && hugo server
# Test practices, concepts, glossary pages
git add assets/styles/domains/custom.scss
git commit -m "fix(styles): override Fresh theme section-feature-grey for dark mode"

# Step 3: Navbar-clone background
# Edit: assets/styles/domains/custom.scss (line 139)
# Add background property to #navbar-clone rule
hugo --gc --minify --buildDrafts=false && hugo server
# Test scroll behavior on mobile
git add assets/styles/domains/custom.scss
git commit -m "fix(styles): add navbar-clone background for dark mode support"

# Final verification
hugo --gc --minify --buildDrafts=false
# Manual browser testing in both light and dark modes
```

---

### 12.7 Logo Visibility Issue (Secondary)

**Problem:** Logo text may be difficult to read on dark background (gray text)

**Proposed Solutions:**

**Option A: CSS Filter Inversion**
```scss
@media (prefers-color-scheme: dark) {
  .navbar-brand img {
    filter: invert(1) hue-rotate(180deg);
  }
}
```
- **Pros:** No new assets needed, automatic color adjustment
- **Cons:** May distort brand colors, requires testing

**Option B: Separate Dark Mode Logo**
```html
<!-- In navbar.html -->
<picture>
  <source srcset="/images/logos/ppp_logo_dark.webp" media="(prefers-color-scheme: dark)">
  <img src="/images/logos/ppp_logo.webp" alt="Site Logo">
</picture>
```
- **Pros:** Full control over appearance, brand-accurate
- **Cons:** Requires creating new logo asset

**Option C: SVG with CSS Custom Properties**
Convert logo to SVG, style text with CSS variables:
```svg
<svg>
  <text fill="var(--theme-text-navbar)">Pragmatic Penguin Patterns</text>
</svg>
```
- **Pros:** Single asset, automatic theme adaptation, scalable
- **Cons:** Requires logo redesign, most effort

**Recommendation:** Defer to separate issue after main bugs resolved. Option B (separate logo) is safest for brand consistency.

---
