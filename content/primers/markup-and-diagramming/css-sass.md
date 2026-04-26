+++
title = "CSS & SCSS Primer"
subtitle = "Structured styling with cascade mastery, programmable authoring, and quality tooling"
aliases = ["css-primer", "scss-primer", "sass-primer", "markup-and-diagramming/css-scss"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2026-04-26T00:00:00+00:00"
tags = ["css", "scss", "sass", "frontend", "styling", "primer", "reference", "markup"]
summary = """
CSS describes what elements look like; SCSS makes that description programmable — adding
variables, logic, modules, and reusable abstractions. Beyond authoring, the frontend styling
ecosystem includes frameworks (Bootstrap, Tailwind CSS), linting tools (Stylelint), and
browser-based quality audits (Lighthouse, Playwright) for accessibility and performance.
Fluency requires understanding the cascade's resolution rules, knowing when to reach for a
framework, and embedding quality checks into the development workflow.
"""
further_exploration = [
    { type = "raw", author = "MDN Web Docs", year = "2024", title = "CSS Cascade", site = "MDN Web Docs", link = "https://developer.mozilla.org/en-US/docs/Web/CSS/Cascade" },
    { type = "raw", author = "Sass Team", year = "2024", title = "Sass Language Documentation", site = "sass-lang.com", link = "https://sass-lang.com/documentation/" },
    { type = "raw", author = "Roberts, Harry", year = "2024", title = "CSS Guidelines", site = "cssguidelin.es", link = "https://cssguidelin.es/" },
    { type = "raw", author = "Giraudel, Kitty", year = "2024", title = "Sass Guidelines", site = "sass-guidelin.es", link = "https://sass-guidelin.es/" },
    { type = "raw", author = "Google", year = "2024", title = "Learn CSS", site = "web.dev", link = "https://web.dev/learn/css/" },
    { type = "raw", author = "CSS-Tricks", year = "2024", title = "A Complete Guide to CSS Grid", site = "css-tricks.com", link = "https://css-tricks.com/snippets/css/complete-guide-grid/" },
    { type = "raw", author = "CSS-Tricks", year = "2024", title = "A Complete Guide to Flexbox", site = "css-tricks.com", link = "https://css-tricks.com/snippets/css/a-guide-to-flexbox/" },
    { type = "raw", author = "Tailwind Labs", year = "2024", title = "Tailwind CSS Documentation", site = "tailwindcss.com", link = "https://tailwindcss.com/" },
    { type = "raw", author = "Bootstrap Team", year = "2024", title = "Bootstrap Documentation", site = "getbootstrap.com", link = "https://getbootstrap.com/" },
    { type = "raw", author = "Stylelint Team", year = "2024", title = "Stylelint Documentation", site = "stylelint.io", link = "https://stylelint.io/" },
    { type = "raw", author = "Google Chrome Team", year = "2024", title = "Lighthouse Documentation", site = "developer.chrome.com", link = "https://developer.chrome.com/docs/lighthouse/" },
    { type = "raw", author = "Microsoft", year = "2024", title = "Playwright Documentation", site = "playwright.dev", link = "https://playwright.dev/" },
    { type = "raw", author = "W3C", year = "2023", title = "WCAG 2.1 — Contrast Minimum", site = "w3.org", link = "https://www.w3.org/WAI/WCAG21/Understanding/contrast-minimum.html" },
    { type = "raw", author = "Yandex", year = "2024", title = "BEM Methodology", site = "getbem.com", link = "https://getbem.com/" }
]
+++

## 1. Purpose and Philosophy

> "Sass should be kept as simple as it can be." — *Sass Guidelines*

CSS describes what HTML elements look like. SCSS (the curly-brace variant of SASS) adds the programming constructs CSS historically lacked: typed variables, nesting, reusable mixins, functions, and a proper module system. Any valid CSS file is valid SCSS, so adoption is gradual.

Understanding CSS starts with three interlocking concepts:

**The Cascade** determines which declaration wins when multiple rules target the same property on the same element. Priority resolves in this order: origin and `!important` weighting → specificity → source order. Later rules win ties.

**Specificity** is a three-part score calculated per selector:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Selector type | Score | Example |
|---|---|---|
| Inline `style=""` | (1,0,0) | — |
| ID selector | (0,1,0) | `#header` |
| Class / attribute / pseudo-class | (0,0,1) | `.card`, `[type="text"]`, `:hover` |
| Element / pseudo-element | (0,0,1)* | `div`, `::before` |
{{< /bootstrap-table >}}

> *Element selectors contribute to a fourth slot, lower than class-level. The rule of thumb: IDs beat classes beat elements. A single ID outranks 1,000 chained classes — avoid IDs in stylesheets entirely.

**Inheritance** means certain properties (`color`, `font-family`, `line-height`) automatically flow from parent to child; others (`margin`, `padding`, `border`) do not. Use `inherit`, `initial`, or `unset` to control this explicitly.

**What SCSS adds:**

- **Variables** (`$color-brand: #3d5a99`) — named, reusable compile-time values
- **Nesting** — expresses parent–child relationships visually, generating flat CSS selectors
- **Mixins** — parameterized blocks of declarations, callable with `@include`
- **Functions** — return computed values; built-ins live in `sass:color`, `sass:math`
- **Modules** — `@use` and `@forward` replace the deprecated `@import`, scoping variables to namespaces

Keep Sass pragmatic. Add an abstraction only when it clearly earns its weight. Sass is a tool for writing better CSS, not for writing a second language on top of it.

**Strengths:**

- The cascade enables global theming with minimal markup changes (override a custom property at `:root`, everything updates)
- SCSS makes design tokens, breakpoints, and colour palettes maintainable as data
- BEM + SCSS nesting maps cleanly onto component architecture
- Modern CSS (Grid, container queries, custom properties) reduces the need for preprocessor workarounds

**Limitations:**

- Specificity is invisible until it causes bugs — inconsistent selector strategies compound over time
- SCSS abstraction can obscure the generated CSS; check output during code review
- `@import` (deprecated in Dart Sass) and `@use` have different scoping semantics; migrating large codebases is non-trivial
- Deep nesting in SCSS generates high-specificity selectors that are hard to override later

**Use CSS/SCSS for:**

- Component and page styling in any web project
- Design token systems (colors, spacing, typography scales)
- Responsive layouts with Grid and Flexbox
- Theme variations and dark-mode support

**Avoid CSS/SCSS for:**

- Business logic that belongs in JavaScript or a backend service
- Layout that could be expressed as semantic HTML (prefer structural HTML over layout hacks)

**Authoritative References:**

- [MDN Web Docs — CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) — canonical reference for every property, selector, and concept
- [Sass Language Documentation](https://sass-lang.com/documentation/) — official Dart Sass reference including the `@use`/`@forward` module system
- [CSS Guidelines](https://cssguidelin.es/) — Harry Roberts' architectural and stylistic guidance
- [Sass Guidelines](https://sass-guidelin.es/) — Kitty Giraudel's opinionated best practices

---

## 2. Getting Started

### Quickest start (no installation)

- [CodePen](https://codepen.io) — live CSS/SCSS editor in the browser; toggle the CSS preprocessor to SCSS in the pen settings
- Browser DevTools — inspect and live-edit computed styles directly on any page

### Recommended local setup

**Option A: Angular project (SCSS built-in)**

```bash
ng new my-app --style=scss
# Angular CLI compiles SCSS automatically via Dart Sass; no extra config needed
```

**Option B: Standalone Dart Sass CLI**

```bash
npm install -g sass           # Dart Sass global CLI
sass --version                # verify: 1.x.x
sass src/styles.scss dist/styles.css   # compile once
sass --watch src/:dist/       # watch mode
```

**Option C: Vite project**

```bash
npm install --save-dev sass   # Dart Sass JS API
# Vite detects .scss files automatically; no plugin needed
```

**Quick verification:**

```scss
/* test.scss */
$color: hsl(220, 60%, 50%);

.test {
  color: $color;
  font-family: sans-serif;
}
```

```bash
sass test.scss test.css
# Expected output: .test { color: hsl(220, 60%, 50%); font-family: sans-serif; }
```

---

## 3. Core Syntax

### CSS Fundamentals

A CSS ruleset consists of one or more selectors and a block of property–value declarations:

```css
/* Selector: .card  |  Declaration block: { ... } */
.card {
  display: flex;
  flex-direction: column;
  padding: 1rem;
  border-radius: 0.5rem;
}
```

**Selector types:**

```css
/* Element */      div { }
/* Class */        .card { }
/* ID */           #main { }     /* avoid in stylesheets — prefer classes */
/* Attribute */    [type="text"] { }
/* Pseudo-class */ .card:hover { }
/* Pseudo-elem. */ .card::before { }
/* Combinator */   .card > .card__title { }   /* direct child */
```

**CSS Custom Properties (runtime variables):**

```css
:root {
  --color-brand: #3d5a99;
  --spacing-md: 1rem;
}

.button {
  background: var(--color-brand);
  padding: var(--spacing-md);
}

/* Override per-scope — cascade applies */
.card--dark {
  --color-brand: #6b8ecf;
}
```

Custom properties differ from SCSS variables: they cascade, can be changed by JavaScript, and work inside media/container queries at runtime.

### SCSS Additions

**Variables** (compile-time, not runtime):

```scss
// _tokens.scss
$color-brand: hsl(220, 50%, 40%);
$color-on-brand: hsl(0, 0%, 100%);
$spacing-sm: 0.5rem;
$spacing-md: 1rem;
$font-body: 'Inter', sans-serif;
```

**Nesting** — the `&` refers to the parent selector:

```scss
.card {
  padding: $spacing-md;
  background: white;

  &__title {          // → .card__title
    font-size: 1.25rem;
    font-weight: 600;
  }

  &:hover {           // → .card:hover
    box-shadow: 0 2px 8px rgb(0 0 0 / 15%);
  }

  &--featured {       // → .card--featured
    border-left: 4px solid $color-brand;
  }
}
```

Keep nesting to three levels maximum. Deeper nesting generates highly specific selectors that create override problems later.

**Mixins:**

```scss
@mixin flex-center($direction: row) {
  display: flex;
  flex-direction: $direction;
  align-items: center;
  justify-content: center;
}

.hero { @include flex-center(column); }
```

**Modules (`@use` / `@forward`)** — replaces the deprecated `@import`:

```scss
// _tokens.scss  (the source module)
$color-brand: hsl(220, 50%, 40%);

// _button.scss  (consumer)
@use 'tokens';

.button {
  background: tokens.$color-brand;   // namespaced access
}

// index.scss  (barrel re-export)
@forward 'tokens';
@forward 'button';
```

**Built-in modules** (always prefer over deprecated global functions):

```scss
@use 'sass:color';
@use 'sass:math';

.button--hover {
  // color.adjust replaces deprecated darken()/lighten()
  background: color.adjust($color-brand, $lightness: -10%);
}

.sidebar {
  width: math.percentage(1 / 3);   // replaces deprecated percentage()
}
```

---

## 4. Patterns and Idioms

### BEM Naming

BEM (Block, Element, Modifier) encodes component structure in class names using only flat class selectors, eliminating specificity conflicts.

```
.block {}
.block__element {}
.block--modifier {}
```

All three selector types share equal specificity `(0,0,1,0)`, so source order is the only tiebreaker.

```html
<article class="card card--featured">
  <h2 class="card__title">Hello</h2>
  <p class="card__body">Content here.</p>
  <a class="card__action card__action--primary">Read more</a>
</article>
```

```scss
.card { /* block */ }
.card__title { /* element */ }
.card__body { /* element */ }
.card__action { /* element */ }
.card--featured { /* modifier on block */ }
.card__action--primary { /* modifier on element */ }
```

Never nest BEM names beyond their semantic meaning. Elements don't require the full DOM path: use `.card__eye`, not `.card__head__eye`.

### ITCSS Layer Order

ITCSS (Inverted Triangle CSS) orders imports from lowest to highest specificity, working *with* the cascade rather than fighting it:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Layer | Purpose | Selector examples |
|---|---|---|
| Settings | Variables, config — no output | `$color-brand` |
| Tools | Mixins, functions — no output | `@mixin respond-to` |
| Generic | Resets, box-sizing | `*, html` |
| Elements | Bare HTML elements | `h1`, `a`, `p` |
| Objects | Layout abstractions (OOCSS) | `.o-container`, `.o-grid` |
| Components | UI components | `.c-card`, `.c-button` |
| Utilities | Single-purpose overrides | `.u-hidden`, `.u-sr-only` |
{{< /bootstrap-table >}}

Higher-specificity rules always come later in the file order, preventing the cascade from surprising you.

### 7-1 Architecture Pattern

For larger projects, the Sass Guidelines 7-1 pattern organises SCSS into seven folders plus one main entry file:

```
sass/
├── abstracts/      # _variables, _functions, _mixins, _placeholders
├── vendors/        # third-party CSS (_bootstrap, _fontawesome)
├── base/           # _reset, _typography, _base-elements
├── layout/         # _grid, _header, _footer, _navigation
├── components/     # _button, _card, _modal, _form
├── pages/          # _home, _about, _contact
├── themes/         # _default, _dark
└── main.scss       # only @forward/@use statements; no declarations
```

`main.scss` contains nothing but imports in ITCSS layer order — all declarations live in partials.

### Responsive Breakpoints Mixin

Name breakpoints by magnitude, not device type:

```scss
// abstracts/_breakpoints.scss
@use 'sass:map';

$breakpoints: (
  'sm': 640px,
  'md': 768px,
  'lg': 1024px,
  'xl': 1280px,
);

@mixin respond-to($breakpoint) {
  $query: map.get($breakpoints, $breakpoint);

  @if $query {
    @media (min-width: #{$query}) { @content; }
  } @else {
    @error 'Breakpoint "#{$breakpoint}" not defined in $breakpoints.';
  }
}
```

```scss
// usage
.card {
  flex-direction: column;

  @include respond-to('md') {
    flex-direction: row;
  }
}
```

### JavaScript Hooks

Separate styling concerns from behavioural hooks using a `.js-` prefix:

```html
<button class="button  js-submit-form">Submit</button>
```

The `.button` class handles all styling. `.js-submit-form` is the JavaScript target. Refactoring either layer cannot accidentally break the other.

### Using `!important` Correctly

Use `!important` *proactively* in utility classes that must always win; never *reactively* to fix a specificity problem:

```scss
// Correct — utility intent is always to override
.u-hidden    { display: none !important; }
.u-sr-only   { position: absolute; clip: rect(0,0,0,0); overflow: hidden; width: 1px; height: 1px; }

// Incorrect — using !important because selectors are fighting
.sidebar .card { color: red !important; } // fix the architecture instead
```

### Light, Dark, and Auto Colour Schemes

A common failure mode in frontend projects is designing only one colour scheme and shipping to users whose OS preference is the other. The result: washed-out text, invisible icons, or unreadable contrast in the mode you didn't test.

Modern browsers expose the user's OS preference via the `prefers-color-scheme` media feature (`light`, `dark`). An auto-responsive design reacts to this without requiring the user to find a toggle.

**The three-tier model:**

1. **Auto (OS-driven)** — default for most users; the design follows whatever the OS is set to
2. **Manual override** — the user explicitly sets the site to light or dark via a toggle
3. **Forced** — the design hard-codes one scheme and ignores the OS (the failure mode)

**Implementation with CSS custom properties:**

CSS custom properties are the correct primitive for theming — they cascade and can be overridden at any scope, so a single token change at `:root` propagates everywhere.

```scss
// abstracts/_themes.scss

:root {
  // Light theme (default)
  --color-surface:     hsl(0, 0%, 100%);
  --color-on-surface:  hsl(210, 10%, 15%);
  --color-brand:       hsl(215, 60%, 40%);
  --color-on-brand:    hsl(0, 0%, 100%);
  --color-muted:       hsl(210, 10%, 45%);
  --color-border:      hsl(210, 15%, 88%);
  --shadow-sm:         0 1px 3px rgb(0 0 0 / 12%);
}

// Auto: follow OS preference
@media (prefers-color-scheme: dark) {
  :root {
    --color-surface:     hsl(220, 15%, 12%);
    --color-on-surface:  hsl(220, 15%, 88%);
    --color-brand:       hsl(215, 60%, 65%);   // lighter for dark bg contrast
    --color-on-brand:    hsl(220, 15%, 10%);
    --color-muted:       hsl(220, 10%, 55%);
    --color-border:      hsl(220, 15%, 22%);
    --shadow-sm:         0 1px 3px rgb(0 0 0 / 40%);
  }
}

// Manual override: user-toggled class on <html>
html[data-theme="light"] { /* force light — same values as :root defaults */ }
html[data-theme="dark"]  { /* force dark — same values as @media block above */ }
```

```scss
// components/_card.scss — zero theme-specific logic needed
.card {
  background: var(--color-surface);
  color: var(--color-on-surface);
  border: 1px solid var(--color-border);
  box-shadow: var(--shadow-sm);
}
```

**Manual theme toggle (JavaScript):**

```ts
// theme-toggle.ts
type Theme = 'light' | 'dark' | 'auto';

function applyTheme(theme: Theme): void {
  const root = document.documentElement;
  if (theme === 'auto') {
    root.removeAttribute('data-theme');
  } else {
    root.setAttribute('data-theme', theme);
  }
  localStorage.setItem('theme-preference', theme);
}

// Restore preference on load (before first paint to avoid flash)
const saved = localStorage.getItem('theme-preference') as Theme | null;
if (saved) applyTheme(saved);
```

**Dark mode image handling:**

Provide dark-mode-appropriate images using the `<picture>` element or CSS:

```html
<picture>
  <source srcset="logo-dark.svg" media="(prefers-color-scheme: dark)">
  <img src="logo-light.svg" alt="Company logo">
</picture>
```

```scss
// Or via CSS content / filter as a simpler fallback
@media (prefers-color-scheme: dark) {
  .logo { filter: invert(1) hue-rotate(180deg); }
}
```

**Common failure modes:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Failure | Symptom | Fix |
|---|---|---|
| Hard-coded colours in components | White text on white background in light mode (or vice versa) | Replace all colour literals with CSS custom property tokens |
| Insufficient contrast in one mode | Text readable in light mode, illegible in dark | Verify both modes with Lighthouse Accessibility audit and WCAG contrast check |
| Images designed for one background | Logo invisible in dark mode | Use `<picture>` with scheme-specific sources or SVG `currentColor` |
| Flash of incorrect theme on load | Page briefly shows wrong theme before JS runs | Read and apply the saved preference in a `<script>` in `<head>` (before first paint) |
| Ignoring system preference entirely | Users with OS dark mode forced into light | Add `prefers-color-scheme` media query as the auto baseline |
{{< /bootstrap-table >}}

**Testing both modes:**

- Chrome DevTools → Rendering tab → "Emulate CSS media feature `prefers-color-scheme`" — switch between light/dark without changing OS settings
- Run Lighthouse in both modes; contrast errors often appear only in dark mode
- Playwright can set the `colorScheme` per test:

```ts
// playwright.config.ts
projects: [
  { name: 'light', use: { colorScheme: 'light' } },
  { name: 'dark',  use: { colorScheme: 'dark' } },
]
```

### Responsive Design for Exotic Screen Sizes

Mobile, tablet, and ultrawide desktop monitors are no longer edge cases — they span the realistic user population. A layout that looks correct at 1280 px can break at 375 px (iPhone SE), scroll awkwardly at 768 px (iPad), or leave vast empty margins at 2560 px (27-inch iMac or ultrawide).

**The realistic viewport landscape:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Category | Typical widths | Example devices |
|---|---|---|
| Small mobile | 320–390 px | iPhone SE, budget Android |
| Standard mobile | 390–430 px | iPhone 14/15, Pixel 7 |
| Large mobile / phablet | 430–600 px | iPhone Max, Galaxy S Ultra |
| Tablet portrait | 600–900 px | iPad 9th gen, Surface Go |
| Tablet landscape / small laptop | 900–1280 px | iPad Pro landscape, 13-inch MacBook |
| Standard desktop | 1280–1920 px | Most laptop and monitor setups |
| Large/ultrawide | 1920–3440 px | 27-inch iMac, ultrawide 21:9 monitors |
{{< /bootstrap-table >}}

**Core techniques:**

**1. Mobile-first breakpoints** — write base styles for the smallest viewport and use `min-width` media queries to add complexity for wider screens:

```scss
.card-grid {
  display: grid;
  grid-template-columns: 1fr;                          // 1 column: mobile
  gap: 1rem;

  @include respond-to('sm')  { grid-template-columns: repeat(2, 1fr); }  // 2 columns
  @include respond-to('lg')  { grid-template-columns: repeat(3, 1fr); }  // 3 columns
  @include respond-to('xl')  { grid-template-columns: repeat(4, 1fr); }  // 4 columns
}
```

**2. Constrain maximum width for readability** — prose and content lines become illegible at ultrawide widths. Use `max-width` with `margin: auto` to keep content centred:

```scss
.page-content {
  width: 100%;
  max-width: 75rem;    // ~1200px — readable on ultrawide without stretching
  margin-inline: auto;
  padding-inline: clamp(1rem, 5vw, 3rem);  // fluid padding that scales with viewport
}

.prose {
  max-width: 65ch;    // character-width constraint — optimal line length for reading
}
```

**3. Fluid typography with `clamp()`** — eliminates the need for breakpoint-based font-size overrides:

```scss
:root {
  --font-size-body:    clamp(1rem, 0.9rem + 0.25vw, 1.125rem);
  --font-size-heading: clamp(1.5rem, 1.2rem + 1.5vw, 2.5rem);
}
```

The `clamp(min, preferred, max)` function scales smoothly between the min and max without media query jumps.

**4. Container queries for component-level responsiveness** — components respond to their container width rather than the viewport:

```scss
.card-container {
  container-type: inline-size;
  container-name: card;
}

// Card layout changes when its container is wide enough, regardless of viewport
@container card (min-width: 400px) {
  .card {
    display: grid;
    grid-template-columns: 1fr 2fr;
  }
}
```

Container queries are supported in all modern evergreen browsers (Chrome 105+, Firefox 110+, Safari 16+).

**5. Fluid layouts with `min()`, `max()`, and `clamp()`** — avoids brittle pixel thresholds:

```scss
.sidebar-layout {
  display: grid;
  // Sidebar: at least 240px but no more than 30% of the container
  grid-template-columns: min(30%, 280px) 1fr;

  @media (max-width: 768px) {
    grid-template-columns: 1fr;  // stack on mobile
  }
}
```

**Testing across screen sizes:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool | What to test | How |
|---|---|---|
| Chrome DevTools Device Mode | Any viewport size including custom | Toggle with Ctrl+Shift+M; enter exact px width |
| Playwright device emulation | Automated cross-device visual regression | `use: { viewport: { width: 375, height: 812 } }` |
| Playwright device presets | iPhone, iPad, desktop in one run | `use: devices['iPhone 14']` |
| Lighthouse mobile preset | Core Web Vitals on simulated 4G mobile | Lighthouse tab → Mode: Navigation → Device: Mobile |
| Chrome DevTools Performance | Layout shifts, reflows during resize | Record a session while dragging the viewport |
{{< /bootstrap-table >}}

**Playwright multi-device test configuration:**

```ts
// playwright.config.ts
import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  projects: [
    { name: 'Desktop Chrome',   use: { ...devices['Desktop Chrome'] } },
    { name: 'Desktop Firefox',  use: { ...devices['Desktop Firefox'] } },
    { name: 'iPhone 14',        use: { ...devices['iPhone 14'] } },
    { name: 'iPad Pro',         use: { ...devices['iPad Pro 11'] } },
    { name: 'Ultrawide',        use: { viewport: { width: 2560, height: 1440 } } },
  ],
});
```

This runs your entire test suite across all configured devices, surfacing layout breakages automatically.

**Common responsive failure modes:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Failure | Symptom | Fix |
|---|---|---|
| Overflow on small screens | Horizontal scrollbar at 375 px | Use `overflow-x: hidden` on `body` or fix the offending element with `max-width: 100%` |
| Too-small touch targets | Buttons hard to tap on mobile | Minimum 44×44 px touch target (WCAG 2.5.5); use `min-height`/`padding` not `height` |
| Text unreadably small at mobile | Body text below 16 px | Use fluid type with `clamp()` or set base font-size on `:root` |
| Vast empty space on ultrawide | Content floats left in a sea of white | Set `max-width` on the content wrapper and `margin-inline: auto` |
| Images overflowing containers | Images wider than viewport | Global reset: `img { max-width: 100%; height: auto; }` |
| Fixed pixel widths breaking layout | A sidebar or card with `width: 300px` pushes content off-screen | Replace with `width: min(300px, 100%)` or percentage-based sizing |
{{< /bootstrap-table >}}

---

## 5. Tooling and Rendering

The only maintained SASS implementation is **Dart Sass**. Ruby Sass is retired; LibSass (C++) was deprecated in 2020. Do not use them for new work.

### CLI Tools

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool | Role | Install |
|---|---|---|
| `sass` (Dart Sass) | Compile `.scss` to `.css` | `npm i -g sass` |
| `stylelint` | Lint CSS/SCSS for errors and convention | `npm i -D stylelint` |
| PostCSS + `autoprefixer` | Add vendor prefixes post-compilation | `npm i -D postcss autoprefixer` |
| `cssnano` | Minify CSS in production builds | `npm i -D cssnano` |
{{< /bootstrap-table >}}

Key Dart Sass CLI flags:

```bash
sass --style=compressed          # minified output
sass --source-map                # generate .css.map for debugging
sass --no-source-map             # suppress source maps (production)
sass --watch src/:dist/          # watch entire directory
sass --load-path=src/styles      # resolve @use paths relative to this root
```

### IDE / Editor Integration

- **VS Code:** [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss) — autocompletion and variable hints; [Stylelint](https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint) for inline diagnostics
- **JetBrains (WebStorm / IDEA):** Built-in SCSS support with file watcher for auto-compilation
- **Browser DevTools:** The Sources panel maps compiled CSS back to original `.scss` lines when source maps are enabled

### Linting with Stylelint

```bash
npm install --save-dev stylelint stylelint-config-standard-scss
```

```json
// .stylelintrc.json
{
  "extends": "stylelint-config-standard-scss",
  "rules": {
    "color-no-invalid-hex": true,
    "declaration-block-no-duplicate-properties": true,
    "max-nesting-depth": 3,
    "selector-class-pattern": "^[a-z][a-z0-9-]*(__[a-z0-9-]+)?(--[a-z0-9-]+)?$",
    "scss/no-global-function-names": true,
    "custom-property-pattern": "^[a-z][a-z0-9-]*$"
  }
}
```

The `selector-class-pattern` above enforces BEM naming. `max-nesting-depth: 3` prevents specificity creep from over-nesting.

---

## 6. CSS Frameworks

Custom SCSS gives full control but requires building layout systems, component patterns, and design tokens from scratch. CSS frameworks provide those systems ready-made. Three major approaches exist: component-based (Bootstrap), utility-first (Tailwind CSS), and design-language-driven (Materialize CSS).

For a detailed comparison and integration guides, see the companion [CSS Frameworks Primer]({{< ref "primers/markup-and-diagramming/css-frameworks" >}}).

**Rule of thumb for choosing:**

- **Bootstrap** — admin tools, dashboards, rapid prototyping with standard UI patterns
- **Tailwind CSS** — bespoke products and design systems where full design freedom matters
- **Materialize CSS** — projects aligned with Google's Material Design language
- **Custom SCSS** — design systems with strict brand requirements or when framework overhead outweighs benefit

Avoid mixing Tailwind utilities and Bootstrap components in the same project — their reset layers and specificity conventions conflict.

---

## 7. Integration

### Angular CLI

Angular CLI uses Dart Sass natively. Configure the default style format at project creation or in `angular.json`:

```bash
ng new my-app --style=scss

# Per-component generation
ng generate component my-feature --style=scss
```

```json
// angular.json — global stylesheet + load paths for @use without relative paths
"styles": ["src/styles.scss"],
"stylePreprocessorOptions": {
  "includePaths": ["src/styles"]
}
```

With `includePaths` set, components can write `@use 'tokens'` instead of `@use '../../../styles/tokens'`.

### Vite

```bash
npm install --save-dev sass
```

```js
// vite.config.js
export default {
  css: {
    preprocessorOptions: {
      scss: {
        // Inject a global import into every SCSS file
        additionalData: `@use "@/styles/tokens" as tokens;`
      }
    }
  }
}
```

### webpack

```bash
npm install --save-dev sass sass-loader css-loader mini-css-extract-plugin
```

```js
// webpack.config.js (production)
module: {
  rules: [{
    test: /\.scss$/,
    use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader']
  }]
}
```

### Version Control

- Commit `.scss` source files; never commit compiled `.css` output in projects using a build step
- Add `dist/` or `public/css/` to `.gitignore` if CSS is generated at build time

### CI/CD Integration

```yaml
# GitHub Actions — lint SCSS and build
- name: Lint SCSS
  run: npx stylelint "src/**/*.scss"

- name: Build
  run: npm run build   # runs ng build / vite build / sass compile
```

---

## 8. Accessibility, Performance, and Testing

Frontend quality extends beyond code correctness — it includes how accessible the UI is for all users and how fast it loads. Embed these checks in your development and CI workflow.

### Accessibility Testing

**WCAG 2.1 minimum contrast ratios (for AA compliance):**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Text type | Minimum (AA) | Enhanced (AAA) |
|---|---|---|
| Normal text (< 18pt) | 4.5:1 | 7:1 |
| Large text (≥ 18pt or 14pt bold) | 3:1 | 4.5:1 |
| UI components / icons | 3:1 | — |
{{< /bootstrap-table >}}

**Focus styles** — never remove the default focus outline without providing a visible alternative. Use `:focus-visible` so indicators appear only for keyboard navigation:

```scss
:focus { outline: none; }

:focus-visible {
  outline: 3px solid var(--color-brand);
  outline-offset: 2px;
  border-radius: 2px;
}
```

**Motion preferences** — always respect `prefers-reduced-motion`:

```scss
.card {
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

@media (prefers-reduced-motion: reduce) {
  .card { transition: none; }
}
```

**Automated accessibility tools:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool | What it checks | How to use |
|---|---|---|
| [axe DevTools](https://www.deque.com/axe/) | WCAG violations in rendered HTML | Browser extension; also `axe-core` for CI |
| [WAVE](https://wave.webaim.org/) | Alt text, form labels, contrast, ARIA | Browser extension or online tool |
| Lighthouse (Accessibility audit) | ARIA roles, heading order, color contrast | Chrome DevTools → Lighthouse tab |
| Screen readers (NVDA, VoiceOver) | Real-world assistive technology behaviour | Manual testing; essential for interactive components |
{{< /bootstrap-table >}}

Automated tools catch roughly 30–40% of WCAG issues. Manual keyboard navigation testing and screen reader testing are required for full coverage.

### Lighthouse Audits

[Lighthouse](https://developer.chrome.com/docs/lighthouse/) is Google's open-source automated auditing tool built into Chrome DevTools. It scores pages across five categories:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Category | What it measures |
|---|---|
| **Performance** | Core Web Vitals (LCP, INP, CLS), FCP, TTFB |
| **Accessibility** | WCAG 2.1 automated checks, ARIA usage, keyboard traps |
| **Best Practices** | HTTPS, deprecated APIs, console errors |
| **SEO** | Meta tags, crawlability, structured data |
| **PWA** | Service worker, manifest, offline behaviour |
{{< /bootstrap-table >}}

**Running Lighthouse:**

```bash
# In Chrome DevTools: open DevTools → Lighthouse tab → Analyze page load

# CLI (for CI integration)
npm install -g lighthouse
lighthouse https://example.com --output=json --output-path=./report.json

# Programmatic (Node.js)
npm install lighthouse
```

**Core Web Vitals thresholds (Google's "good" targets):**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Metric | Good | Needs Improvement | Poor |
|---|---|---|---|
| LCP (Largest Contentful Paint) | ≤ 2.5s | 2.5–4.0s | > 4.0s |
| INP (Interaction to Next Paint) | ≤ 200ms | 200–500ms | > 500ms |
| CLS (Cumulative Layout Shift) | ≤ 0.1 | 0.1–0.25 | > 0.25 |
{{< /bootstrap-table >}}

Integrate Lighthouse into CI to enforce a **performance budget** — fail the build when scores drop below a threshold:

```yaml
# GitHub Actions
- name: Lighthouse CI
  run: |
    npm install -g @lhci/cli
    lhci autorun --collect.url=http://localhost:4200
  env:
    LHCI_GITHUB_APP_TOKEN: ${{ secrets.LHCI_GITHUB_APP_TOKEN }}
```

### Performance Testing

Performance testing for frontend goes beyond Lighthouse (which measures a single page load) to cover user interaction and rendering under load.

**Key tools:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool | Purpose | When to use |
|---|---|---|
| [Lighthouse](https://developer.chrome.com/docs/lighthouse/) | Page load performance, Core Web Vitals | Every build — CI integration |
| [WebPageTest](https://www.webpagetest.org/) | Detailed waterfall, geographic testing, film strip | Deep investigation of load regression |
| [Chrome DevTools Performance panel](https://developer.chrome.com/docs/devtools/performance/) | Runtime rendering, layout thrashing, long tasks | Diagnosing jank during interaction |
| [k6](https://k6.io/) | Load testing API endpoints under concurrent users | Backend and API performance |
{{< /bootstrap-table >}}

**CSS-specific performance considerations:**

- **Avoid layout thrashing** — reading and writing DOM geometry in alternation forces multiple reflows. Read all layout values first, then write them.
- **Use `will-change` sparingly** — hints the browser to promote an element to a compositor layer; overuse increases memory consumption.
- **Prefer `transform` and `opacity` for animations** — these run on the GPU compositor layer and do not trigger layout or paint.
- **Audit unused CSS** — Chrome DevTools Coverage tab (`Cmd+Shift+P` → "Show Coverage") identifies CSS rules never applied on a given page; configure Tailwind's `content` array or PurgeCSS to eliminate dead styles in production.

### Playwright for End-to-End and Accessibility Testing

[Playwright](https://playwright.dev/) is Microsoft's browser automation framework supporting Chromium, Firefox, and WebKit. It is commonly used for end-to-end tests that include visual and accessibility assertions.

```bash
npm init playwright@latest
```

**Accessibility assertions using ARIA roles** (Playwright's `getByRole` aligns with the accessibility tree, testing what screen reader users experience):

```ts
// tests/card.spec.ts
import { test, expect } from '@playwright/test';

test('card renders accessible content', async ({ page }) => {
  await page.goto('/');

  // Use ARIA roles — tests the semantic structure, not class names
  const heading = page.getByRole('heading', { name: 'Hello' });
  const link = page.getByRole('link', { name: 'Read more' });

  await expect(heading).toBeVisible();
  await expect(link).toBeFocused(); // keyboard navigation test
});
```

**Visual regression testing** — Playwright's screenshot comparison catches unintended style changes:

```ts
test('card matches snapshot', async ({ page }) => {
  await page.goto('/');
  await expect(page.locator('.card')).toHaveScreenshot('card.png');
});
```

**Accessibility audit with axe-core inside Playwright:**

```bash
npm install @axe-core/playwright
```

```ts
import { checkA11y } from '@axe-core/playwright';

test('page passes axe accessibility audit', async ({ page }) => {
  await page.goto('/');
  await checkA11y(page, undefined, {
    axeOptions: { runOnly: ['wcag2a', 'wcag2aa'] }
  });
});
```

### Common Pitfalls

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Pitfall | Prevention |
|---|---|
| Specificity wars from inconsistent selector strategies | Adopt BEM; avoid IDs and element qualifiers in component styles |
| Deep nesting generating overly specific selectors | Limit nesting to 3 levels; enforce with Stylelint `max-nesting-depth` |
| Using `@import` (deprecated in Dart Sass) | Migrate to `@use` / `@forward`; enable `scss/no-global-function-names` in Stylelint |
| Using `darken()` / `lighten()` global functions | Use `color.adjust()` from `sass:color` module instead |
| Removing focus outlines without replacement | Use `:focus-visible` to provide keyboard-only focus styles |
| Skipping Lighthouse/performance budgets in CI | Add `@lhci/cli` to your CI pipeline; fail on score regressions |
| Mixing Tailwind and Bootstrap in one project | Choose one CSS strategy per project; their reset layers conflict |
{{< /bootstrap-table >}}

---

## 9. Example and Reference

**Complete component example: featured card with BEM + SCSS modules**

```scss
// abstracts/_tokens.scss
$color-brand:   hsl(215, 60%, 35%);
$color-surface: hsl(0, 0%, 100%);
$color-text:    hsl(210, 10%, 15%);
$radius-md:     0.5rem;
$spacing-sm:    0.5rem;
$spacing-md:    1rem;
```

```scss
// components/_card.scss
@use '../abstracts/tokens' as t;
@use 'sass:color';

.card {
  display: flex;
  flex-direction: column;
  background: t.$color-surface;
  border-radius: t.$radius-md;
  padding: t.$spacing-md;
  box-shadow: 0 1px 3px rgb(0 0 0 / 12%);
  transition: box-shadow 0.2s ease;

  &:hover {
    box-shadow: 0 4px 12px rgb(0 0 0 / 18%);
  }

  &__title {
    font-size: 1.25rem;
    font-weight: 600;
    color: t.$color-text;
    margin: 0 0 t.$spacing-sm;
  }

  &__body {
    flex: 1;
    color: color.adjust(t.$color-text, $lightness: 15%);
    line-height: 1.6;
  }

  &__action {
    display: inline-flex;
    align-items: center;
    margin-top: t.$spacing-md;
    padding: t.$spacing-sm t.$spacing-md;
    border-radius: calc(t.$radius-md / 2);
    text-decoration: none;
    font-weight: 500;
    transition: background 0.15s ease;

    &--primary {
      background: t.$color-brand;
      color: hsl(0, 0%, 100%);

      &:hover {
        background: color.adjust(t.$color-brand, $lightness: -8%);
      }
    }
  }

  &--featured {
    border-left: 4px solid t.$color-brand;
  }
}

// Keyboard focus: visible only for keyboard, not mouse
.card__action:focus { outline: none; }
.card__action:focus-visible {
  outline: 3px solid t.$color-brand;
  outline-offset: 2px;
}

// Respect user motion preference
@media (prefers-reduced-motion: reduce) {
  .card,
  .card__action { transition: none; }
}
```

**Best practices demonstrated:**

- BEM naming keeps all selectors at equal specificity `(0,0,1,0)`
- `@use` with namespace avoids polluting global scope
- `sass:color` module replaces deprecated `lighten()` / `darken()` globals
- `:focus-visible` for accessible keyboard focus without mouse interference
- `prefers-reduced-motion` block honours user accessibility preferences

**Further reading:**

- [Sass `@use` documentation](https://sass-lang.com/documentation/at-rules/use/) — module system reference
- [MDN: Using CSS custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) — runtime variables, cascade scoping
- [MDN: Container queries](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment/Container_queries) — component-level responsive design
- [web.dev: prefers-reduced-motion](https://web.dev/articles/prefers-reduced-motion) — motion accessibility guidance
- [Lighthouse CI documentation](https://github.com/GoogleChrome/lighthouse-ci) — automating performance budgets
- [axe-core Playwright integration](https://github.com/dequelabs/axe-core-npm/tree/develop/packages/playwright) — automated WCAG testing in E2E suites
- [SassDoc](http://sassdoc.com/) — documentation generator for public SCSS APIs
