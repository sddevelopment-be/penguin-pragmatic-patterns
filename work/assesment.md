# Site Quality Assessment
_Date: 2026-04-26 | Branch: primers/extensions_

## Tooling Used

| Tool | Command | Purpose |
|------|---------|---------|
| Stylelint | `npm run lint:css` | SCSS/CSS quality |
| remark-lint | `npm run lint:md` | Markdown quality |
| cspell | `npm run lint:spell` | Spelling / grammar |
| Cypress | `npm run test:cypress` | End-to-end UI tests |
| Lighthouse CLI | `npx lighthouse` | Performance, accessibility, SEO, best practices |

---

## 1. CSS Lint — 360 errors across 17 files

Most errors are in the inherited Fresh theme partials and are stylistic or auto-fixable. The breakdown:

| Category | Count | Severity |
|----------|-------|----------|
| `rule-empty-line-before` (formatting) | ~230 | Low — cosmetic |
| Vendor-prefixed properties (`-webkit-*`, `-moz-*`, `-o-*`) | ~30 | Low — obsolete but harmless |
| Legacy `rgba()` instead of modern `rgb(r g b / a)` | ~25 | Low — style |
| Comment whitespace (`// ` missing space) | ~15 | Low — cosmetic |
| CamelCase keyframe/selector names (`fadeInLeft`, `.dropOut`) | ~10 | Low — pattern |
| Shorthand redundancy, missing generic font family | ~10 | Low — style |
| **Empty block** (`custom.scss:439` — `.container p a {}`) | 1 | Medium — dead code |

**Files with the most errors** (primarily inherited theme code):
- `_animations.scss`, `_sidebar.scss`, `_utils.scss`, `_testimonials.scss` — old Fresh theme partials with obsolete conventions

**Actual bug**: `custom.scss:439` contains an empty `.container p a {}` rule — should be removed.

The 323 errors flagged as "potentially fixable with `--fix`" are all formatting/style issues. Running `stylelint --fix` would resolve them automatically.

---

## 2. Markdown Lint — Clean

No issues found across all content files. ✓

---

## 3. Spell Check — 25 flags

### Real typos (fix these)

| File | Line | Wrong | Correct |
|------|------|-------|---------|
| `glossary.toml` | 1040 | `capabilties` | `capabilities` |
| `glossary.toml` | 1103 | `Soving` | `Solving` |
| `bibliography.toml` | 732 | `atomic_habbits.webp` | image filename contains typo; actual file is also misnamed |

### Jargon / intentional (add to cspell dictionary)

| Term | Reason |
|------|--------|
| `Rebutability`, `challengeability` | Coined terms in the knowledge base |
| `solutioning`, `deprioritised` | Industry jargon / British spelling |
| `FCFS` | "First Come First Served" — common abbreviation |
| `resumés` | Accented character not in default dictionary |
| `holacracy` | Proper organizational framework name |
| `NERIS`, `Kibeom` | Proper names |
| URL-slug fields (`butunclebob`, `growsmethod`, etc.) | Domain name fragments in `tools.toml` |
| `prag`, `apprent`, `improv` | Abbreviated title fields in `bibliography.toml` |
| `slidedeck` | Site-specific compound word |
| `subfacet` | Site-specific term |

---

## 4. Cypress E2E Tests — 56/63 passing (89%)

### Summary

| Spec | Tests | Passing | Failing |
|------|-------|---------|---------|
| `01-main-page.cy.js` | 6 | 3 | 3 |
| `02-navbar-footer.cy.js` | 13 | 12 | 1 |
| `03-navigation-links.cy.js` | 21 | 20 | 1 |
| `04-pattern-references.cy.js` | 15 | 15 | 0 ✓ |
| `dark-mode-consistency.cy.js` | 8 | 6 | 0 ✓ (2 skipped) |

### Failing tests — all caused by stale expectations

**01-main-page.cy.js (3 failures)**
- Test expects title `"Pragmatic Penguin Pattern Portfolio"` — actual is `"Pragmatic Penguin Patterns"`
- Test expects subtitle `"For engineers, team leads, and knowledge workers"` — hero section has been rewritten
- Test expects a `"Start Reading"` CTA button — no longer present in current layout

**02-navbar-footer.cy.js + 03-navigation-links.cy.js (1 failure each)**
- Both tests expect `"Approach"` as a direct navbar item — it has been moved to the footer quicklinks column; it is not in the primary navbar

### Dark mode consistency (passing ✓)
All automated dark mode checks pass:
- Body background correctly dark in dark mode
- Navbar clone uses CSS variable (not hardcoded white)
- Recommendation cards use theme variables
- 2 tests are intentionally skipped (production-build-only CSS content checks)

---

## 5. Lighthouse Audit — Homepage (desktop)

| Category | Score |
|----------|-------|
| Performance | **92 / 100** |
| Accessibility | **92 / 100** |
| Best Practices | **100 / 100** |
| SEO | **100 / 100** |

### Accessibility failures

**`color-contrast` — FAIL**
- All inline links in the hero / body text (`Primers`, `Concepts`, `Practices`, `Glossary`, `Bibliography`, `Approach`) render in brand blue `#1e75c0` on a near-white background
- Measured contrast ratio: **3.43:1** (WCAG AA minimum for normal text: **4.5:1**)
- Root cause: `custom.scss:404` — `.container a { color: var(--theme-brand-primary) }` applies the brand colour directly, bypassing the amber `--theme-text-link` variable that is used elsewhere

**`link-in-text-block` — FAIL**
- Same links: contrast against surrounding body text is only **2.24:1** (minimum: **3:1**)
- Links have no underline in their default state, making them indistinguishable from surrounding text except by colour
- Same root cause as above

---

## 6. Visual / Dark Mode Assessment

### Critical: Navbar logo invisible in dark mode

The navbar logo (`ppp_logo.webp`) contains the word `PATTERNS` in near-black text (`~#1c1c1c`). Against the dark navbar background (`#0a0e13`), this text is completely invisible. The dark steel-blue half of the circular icon also blends into the background.

No CSS filter, `picture` element, or dark-mode logo variant is applied.

**Root cause**: `_navbar.scss` and `_theme.scss` have no `@media (prefers-color-scheme: dark)` rule targeting `.navbar-brand img`.

**Proposed fix**: Add to `_theme.scss` dark media block:
```scss
.navbar-brand img {
  filter: invert(1) hue-rotate(180deg);
}
```
`invert(1) hue-rotate(180deg)` approximates a round-trip for chromatic hues (gold stays gold-ish, blue stays blue-ish) while flipping near-black text to near-white.

A proper long-term fix would be to provide a dedicated light-text logo variant and use a `<picture>` element with `media="(prefers-color-scheme: dark)"`.

### Footer logo

The footer uses `LOGO_BASE_SMALL.webp` (icon-only — gold + steel blue circles). The footer background is always dark. Icon colours are bright enough to remain visible in both modes. No fix needed.

### Hardcoded white on fixed navbar

`_navbar.scss:93` — `.navbar.is-fresh.is-fixed { background: $white }` uses a hardcoded `$white` rather than `var(--theme-bg-navbar)`. In dark mode the sticky bar flashes white on scroll.

---

## 7. Recommended Fixes (priority order)

| Priority | Area | Fix |
|----------|------|-----|
| **High** | Dark mode — navbar logo | Add `filter: invert(1) hue-rotate(180deg)` to `.navbar-brand img` in dark `@media` block |
| **High** | Accessibility — link contrast | Darken `.container a` link colour to meet 4.5:1, or add `text-decoration: underline` |
| **Medium** | Stale Cypress tests | Update homepage title/subtitle/CTA expectations; update "Approach" navbar tests to look in footer |
| **Medium** | Typos | Fix `capabilties` → `capabilities`, `Soving` → `Solving` in `glossary.toml` |
| **Low** | Hardcoded navbar background | Replace `$white` with `var(--theme-bg-navbar)` in `.is-fixed` rule |
| **Low** | Dead CSS | Remove empty `.container p a {}` block in `custom.scss:439` |
| **Low** | CSS formatting | Run `stylelint --fix` on theme partials (323 auto-fixable formatting issues) |
| **Low** | cspell dictionary | Add coined/jargon terms to `validation/cspell.config.yaml` to suppress false positives |
