+++
title = "CSS Frameworks Primer"
subtitle = "Bootstrap, Tailwind CSS, and Materialize — choosing and using the right styling system"
aliases = ["css-frameworks-primer", "markup-and-diagramming/css-frameworks"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2026-04-26T00:00:00+00:00"
tags = ["css", "bootstrap", "tailwind", "materialize", "frontend", "frameworks", "primer", "reference"]
summary = """
CSS frameworks provide pre-built layout systems, design tokens, and UI components so teams
can move quickly without authoring everything from scratch. Three paradigms dominate: Bootstrap
(component-based, mobile-first), Tailwind CSS (utility-first, JIT-compiled), and Materialize
CSS (Material Design system). Choosing between them is a question of project constraints,
team skills, and how much design freedom the product requires.
"""
further_exploration = [
    { type = "raw", author = "Bootstrap Team", year = "2024", title = "Bootstrap v5 Documentation", site = "getbootstrap.com", link = "https://getbootstrap.com/docs/5.3/" },
    { type = "raw", author = "Tailwind Labs", year = "2024", title = "Tailwind CSS Documentation", site = "tailwindcss.com", link = "https://tailwindcss.com/" },
    { type = "raw", author = "Materialize Team", year = "2024", title = "Materialize CSS Documentation", site = "materializecss.com", link = "https://materializecss.com/" },
    { type = "raw", author = "ng-bootstrap Team", year = "2024", title = "ng-bootstrap — Angular widgets for Bootstrap", site = "ng-bootstrap.github.io", link = "https://ng-bootstrap.github.io/" },
    { type = "raw", author = "Google", year = "2024", title = "Material Design Guidelines", site = "m3.material.io", link = "https://m3.material.io/" },
    { type = "raw", author = "CSS-Tricks", year = "2024", title = "A Complete Guide to CSS Grid", site = "css-tricks.com", link = "https://css-tricks.com/snippets/css/complete-guide-grid/" }
]
+++

## 1. Purpose and Philosophy

CSS frameworks trade authoring freedom for development speed. Instead of building a grid system, component library, and design token scale from scratch, a framework provides these ready-made. The cost is accepting a set of conventions and, in some cases, a recognizable visual language.

**Three paradigms:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Paradigm | Representative | Core idea |
|---|---|---|
| Component-based | Bootstrap | Pre-built components with semantic class names (`.btn`, `.card`, `.navbar`) |
| Utility-first | Tailwind CSS | Single-purpose atomic classes composed in HTML (`flex`, `pt-4`, `text-blue-500`) |
| Design-language | Materialize CSS | Material Design component implementations with built-in interaction patterns |
{{< /bootstrap-table >}}

**When to skip a framework entirely:**

- The project has a strict brand identity that diverges from any framework's defaults
- The team already maintains a well-structured custom SCSS design system
- Bundle size is critical and tree-shaking a framework would leave little behind
- The project is long-lived and framework upgrade cycles are a maintenance burden

For the underlying CSS/SCSS language and authoring patterns, see the companion [CSS & SCSS Primer]({{< ref "primers/markup-and-diagramming/css-sass" >}}).

---

## 2. Bootstrap

Bootstrap is a **mobile-first, component-based framework** originally created at Twitter. Version 5 (2021) removed the jQuery dependency, migrated from Less to SCSS, and introduced CSS custom properties for runtime theming.

**Core features:**

- 12-column responsive grid with six breakpoints
- Pre-styled components: buttons, cards, modals, navbars, forms, alerts, carousels, tooltips, and more
- Utility classes for spacing, color, display, sizing, and flex
- CSS custom property theme layer (`--bs-primary`, `--bs-body-font-family`, etc.)
- Dark mode via `data-bs-theme="dark"` attribute (v5.3+)
- Zero external JavaScript dependencies; 12 vanilla JS plugins included

### Installation

```bash
# npm
npm install bootstrap@5

# Or CDN (quick start, no build step)
```

```html
<!-- CDN — HTML head -->
<link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<script defer
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>
```

### Grid System

Bootstrap's grid uses flexbox under the hood. Columns respond to breakpoints (`xs`, `sm`, `md`, `lg`, `xl`, `xxl`):

```html
<div class="container">
  <div class="row g-4">                      <!-- g-4: gap -->
    <div class="col-12 col-md-8">
      <main>Main content (full width → 8/12 at md+)</main>
    </div>
    <div class="col-12 col-md-4">
      <aside>Sidebar (full width → 4/12 at md+)</aside>
    </div>
  </div>
</div>
```

### Components

Bootstrap ships semantic component classes that carry default styling and, where relevant, JavaScript behaviour:

```html
<!-- Button variants -->
<button class="btn btn-primary">Primary</button>
<button class="btn btn-outline-secondary">Outline</button>

<!-- Card -->
<div class="card shadow-sm" style="max-width: 20rem;">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text.</p>
    <a href="#" class="btn btn-primary btn-sm">Go somewhere</a>
  </div>
</div>

<!-- Modal trigger (JS activated via data attributes) -->
<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch modal
</button>
```

### SCSS Customisation

Override Bootstrap's Sass variables *before* importing Bootstrap, then import only the partials you need:

```scss
// styles.scss
$primary:         hsl(215, 60%, 40%);
$border-radius:   0.5rem;
$enable-shadows:  true;
$font-family-base: 'Inter', sans-serif;

@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/variables-dark";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";

// Only import what the project uses
@import "bootstrap/scss/grid";
@import "bootstrap/scss/utilities";
@import "bootstrap/scss/buttons";
@import "bootstrap/scss/card";
@import "bootstrap/scss/modal";
```

Custom utility classes via the Utilities API:

```scss
$utilities: map-merge(
  $utilities,
  (
    "cursor": (
      property: cursor,
      values: auto pointer grab not-allowed,
    )
  )
);
```

### Runtime Theming with CSS Custom Properties

Bootstrap 5 exposes its tokens as CSS custom properties, enabling runtime overrides:

```css
body {
  --bs-body-font-family: 'Inter', sans-serif;
  --bs-body-bg: hsl(210, 20%, 98%);
}

/* Dark mode toggle (v5.3+) */
[data-bs-theme="dark"] {
  --bs-body-bg: hsl(220, 15%, 10%);
  --bs-body-color: hsl(220, 15%, 85%);
}
```

### Angular Integration

Use **[ng-bootstrap](https://ng-bootstrap.github.io/)** for Angular-native Bootstrap components. It reimplements Bootstrap's interactive components (modals, tooltips, datepicker, pagination) as proper Angular directives — no Bootstrap JavaScript, no jQuery:

```bash
ng add @ng-bootstrap/ng-bootstrap
```

```typescript
// app.component.ts
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({ ... })
export class AppComponent {
  constructor(private modal: NgbModal) {}

  open(content: TemplateRef<unknown>) {
    this.modal.open(content);
  }
}
```

---

## 3. Tailwind CSS

Tailwind CSS is a **utility-first framework** — instead of component classes like `.btn`, it provides thousands of single-purpose atomic classes (`flex`, `items-center`, `px-4`, `text-blue-500`). Designs are composed in HTML. The **JIT (Just-in-Time) compiler** scans source files for class names and emits only those that are actually used, keeping production CSS bundles very small (typically under 10 KB for most projects).

**Core features:**

- Responsive prefixes: `sm:`, `md:`, `lg:`, `xl:`, `2xl:`
- Dark mode via `dark:` prefix (class or `prefers-color-scheme` strategy)
- Arbitrary values for one-off overrides: `w-[37px]`, `bg-[hsl(215,60%,40%)]`
- Container queries: `@container` + `@sm:`, `@md:` prefixes
- CSS cascade layers (`@layer base`, `@layer components`, `@layer utilities`)
- Full design token configuration via `tailwind.config.js`

### Installation

```bash
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p        # creates tailwind.config.js and postcss.config.js
```

```js
// tailwind.config.js
export default {
  content: [
    './index.html',
    './src/**/*.{js,ts,jsx,tsx,html}',   // scan these files for class names
  ],
  darkMode: 'class',            // or 'media' for prefers-color-scheme
  theme: {
    extend: {
      colors: {
        brand: {
          DEFAULT: 'hsl(215, 60%, 40%)',
          light:   'hsl(215, 60%, 55%)',
          dark:    'hsl(215, 60%, 25%)',
        },
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      },
    },
  },
}
```

```css
/* Entry point CSS */
@tailwind base;        /* Preflight reset */
@tailwind components;  /* @layer components definitions */
@tailwind utilities;   /* Utility classes */
```

### Composing UI in HTML

```html
<!-- Equivalent of the BEM card example in custom SCSS -->
<article class="flex flex-col gap-4 rounded-lg bg-white p-6
                shadow-sm hover:shadow-md transition-shadow duration-200
                border-l-4 border-brand">
  <h2 class="text-xl font-semibold text-gray-900">Hello</h2>
  <p class="flex-1 text-gray-600 leading-relaxed">Content here.</p>
  <a href="#"
     class="inline-flex items-center gap-2 self-start rounded px-4 py-2
            bg-brand text-white font-medium
            hover:brightness-90 transition-colors
            focus:outline-none focus-visible:ring-2 focus-visible:ring-brand focus-visible:ring-offset-2">
    Read more
  </a>
</article>
```

### Extracting Reusable Components

When a pattern repeats, extract it with `@apply` or abstract it into a component in your JS framework — not into a CSS class:

```css
/* @layer components in styles.css — use sparingly */
@layer components {
  .btn-primary {
    @apply inline-flex items-center rounded px-4 py-2 bg-brand text-white
           font-medium hover:brightness-90 transition-colors
           focus:outline-none focus-visible:ring-2 focus-visible:ring-brand;
  }
}
```

Prefer Angular/React/Vue components over `@apply` for most abstractions — components carry behaviour and template logic alongside styling.

### Responsive and Dark Mode

```html
<!-- Stacked on mobile, side-by-side at md+ -->
<div class="flex flex-col md:flex-row gap-4">
  <main class="flex-1">...</main>
  <aside class="w-full md:w-64">...</aside>
</div>

<!-- Dark mode with class strategy -->
<div class="bg-white text-gray-900 dark:bg-gray-950 dark:text-gray-100">
  ...
</div>
```

### Angular Integration

```bash
ng add tailwindcss   # official schematic — configures everything automatically
```

Tailwind's `content` array must include Angular's HTML templates and TypeScript files that contain class strings:

```js
content: ['./src/**/*.{html,ts}']
```

---

## 4. Materialize CSS

Materialize CSS is a **component framework built on Google's Material Design** guidelines. It provides a complete UI component library with built-in elevation, ripple effects, and transition patterns that match the Material Design visual language.

> ⚠️ **Maintenance note:** The original Materialize CSS project (v1.0.0, 2018) has seen limited active development in recent years. A community-maintained fork continues to provide updates and bug fixes. Evaluate the current maintenance state of both before adopting for a new long-lived project, and factor framework longevity into your decision.

**Core features:**

- 12-column responsive grid
- Material Design components: buttons, cards, chips, FABs, navbars, sidenav, modals, toasts
- Ripple and elevation animation effects baked in
- SCSS customisation of the Material color palette and typography scale
- JavaScript plugin system (vanilla JS, no jQuery)
- Icon integration via Material Icons font

### Installation

```bash
npm install materialize-css
```

```html
<!-- CDN (quick start) -->
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js">
</script>

<!-- Material Icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
```

### Grid and Layout

Materialize uses a 12-column grid with three breakpoints (`s`, `m`, `l`) — simpler than Bootstrap but less granular:

```html
<div class="container">
  <div class="row">
    <div class="col s12 m8">Main content (full → 8/12 at m+)</div>
    <div class="col s12 m4">Sidebar (full → 4/12 at m+)</div>
  </div>
</div>
```

### Components

```html
<!-- Floating Action Button -->
<a class="btn-floating btn-large waves-effect waves-light red">
  <i class="material-icons">add</i>
</a>

<!-- Card -->
<div class="card blue-grey darken-1">
  <div class="card-content white-text">
    <span class="card-title">Card Title</span>
    <p>Content goes here.</p>
  </div>
  <div class="card-action">
    <a href="#">This is a link</a>
  </div>
</div>

<!-- Toast notification (JavaScript) -->
<script>
  M.toast({ html: 'Item saved successfully!', classes: 'rounded' });
</script>
```

### SCSS Customisation

```scss
// Override Material color variables before importing
$primary-color: hsl(215, 60%, 40%);
$secondary-color: hsl(340, 70%, 50%);
$link-color: $primary-color;

@import "materialize-css/sass/materialize";
```

### Angular Integration

Materialize does not have an official Angular component library. Common approaches:

- Import `materialize-css` and initialize JavaScript components manually in `ngAfterViewInit`
- Use the community package `ngx-materialize` (note: maintenance state varies — verify before adopting)
- Use [Angular Material](https://material.angular.io/) instead — the official Angular implementation of Material Design, actively maintained by the Angular team and significantly more Angular-idiomatic

```bash
# Angular Material (recommended over Materialize for Angular projects)
ng add @angular/material
```

---

## 5. Framework Comparison

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| | Bootstrap v5 | Tailwind CSS | Materialize CSS |
|---|---|---|---|
| **Philosophy** | Component-based | Utility-first | Material Design system |
| **Design language** | Bootstrap's own (neutral) | None — you define it | Google Material Design |
| **Learning curve** | Low — copy components | Medium — compose utilities | Low–Medium |
| **HTML verbosity** | Low (`.btn btn-primary`) | High (many classes per element) | Low (`.btn waves-effect`) |
| **CSS bundle (production)** | Medium (~30 KB min+gzip) | Very small (<10 KB typical) | Medium (~27 KB min+gzip) |
| **SCSS customisation** | Yes — variable overrides | Yes — `theme.extend` in config | Yes — variable overrides |
| **Dark mode** | Built-in (`data-bs-theme`) | Built-in (`dark:` prefix) | Manual/limited |
| **Angular support** | ng-bootstrap (excellent) | Official schematic | Limited (prefer Angular Material) |
| **Maintenance status** | Active | Active | ⚠️ Limited original; community fork |
| **Best for** | Admin tools, dashboards, standard UI | Bespoke design systems, product UI | Material Design-aligned projects |
{{< /bootstrap-table >}}

### Decision Criteria

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Situation | Recommended |
|---|---|
| Admin dashboard or internal tooling | Bootstrap — rich ready-made components, fast to wire up |
| Public product with bespoke brand identity | Tailwind CSS — design freedom with systematic constraints |
| Material Design specification required | Angular Material (Angular) or Materialize CSS (other stacks) |
| Long-lived Angular application | Bootstrap (ng-bootstrap) or Angular Material — both actively maintained |
| Rapid proof-of-concept | Bootstrap CDN or Tailwind Play CDN — both work with no build step |
| Small bundle size is critical | Tailwind CSS JIT — only ships used classes |
| Team is unfamiliar with CSS architecture | Bootstrap — the lower conceptual overhead reduces risk |
{{< /bootstrap-table >}}

---

## 6. Integration

### Angular

| Framework | Angular integration |
|---|---|
| Bootstrap | `npm install bootstrap` + `ng add @ng-bootstrap/ng-bootstrap` |
| Tailwind | `ng add tailwindcss` (official schematic) |
| Materialize | Manual JS init in `ngAfterViewInit`; prefer Angular Material instead |

Add global stylesheets in `angular.json`:

```json
"styles": [
  "node_modules/bootstrap/dist/css/bootstrap.min.css",
  "src/styles.scss"
]
```

### Vite

```bash
# Bootstrap
npm install bootstrap
# Import in main entry
import 'bootstrap/dist/css/bootstrap.min.css';

# Tailwind — automatic via postcss plugin
npm install -D tailwindcss postcss autoprefixer
```

### webpack

Bootstrap and Materialize work with `css-loader` + `MiniCssExtractPlugin`. Tailwind requires the PostCSS pipeline:

```js
// postcss.config.js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
```

---

## 7. Accessibility Considerations

All three frameworks provide accessible component markup by default, but accessibility requires conscious effort from the author:

**Bootstrap:** Accessible ARIA patterns are documented per component. Interactive components (`Modal`, `Dropdown`) manage focus trapping and `aria-expanded` automatically when using the data attribute API. Verify colour contrast when overriding the default palette — `$primary` must maintain 4.5:1 contrast against white/black text.

**Tailwind CSS:** No default components means no built-in ARIA patterns. Authors must write semantic HTML and manage focus, `aria-` attributes, and keyboard interactions manually — or use a headless component library ([Headless UI](https://headlessui.com/), [Radix UI](https://www.radix-ui.com/)) alongside Tailwind for accessible interactive components.

**Materialize CSS:** Material Design includes motion and ripple effects. Always provide `prefers-reduced-motion` overrides:

```css
@media (prefers-reduced-motion: reduce) {
  .waves-effect .waves-ripple { display: none; }
  .btn, .card { transition: none !important; }
}
```

Run Lighthouse accessibility audits and `axe-core` checks across all three regardless of which framework is chosen — frameworks reduce visual effort but do not automate WCAG compliance.

---

## 8. Example and Reference

**The same card component in each framework:**

**Bootstrap:**

```html
<div class="card border-start border-primary border-4 shadow-sm">
  <div class="card-body">
    <h5 class="card-title fw-semibold">Hello</h5>
    <p class="card-text text-muted">Content here.</p>
    <a href="#" class="btn btn-primary btn-sm">Read more</a>
  </div>
</div>
```

**Tailwind CSS:**

```html
<article class="flex flex-col gap-3 rounded-lg bg-white p-5 shadow-sm
                border-l-4 border-brand hover:shadow-md transition-shadow">
  <h2 class="text-lg font-semibold text-gray-900">Hello</h2>
  <p class="flex-1 text-sm text-gray-600 leading-relaxed">Content here.</p>
  <a href="#"
     class="self-start rounded px-3 py-1.5 bg-brand text-white text-sm font-medium
            hover:brightness-90 focus-visible:ring-2 focus-visible:ring-brand">
    Read more
  </a>
</article>
```

**Materialize CSS:**

```html
<div class="card">
  <div class="card-content">
    <span class="card-title">Hello</span>
    <p>Content here.</p>
  </div>
  <div class="card-action">
    <a href="#" class="btn waves-effect waves-light">Read more</a>
  </div>
</div>
```

**Further reading:**

- [Bootstrap Migration Guide (v4 → v5)](https://getbootstrap.com/docs/5.3/migration/) — key breaking changes
- [Tailwind CSS: Reusing Styles](https://tailwindcss.com/docs/reusing-styles) — when and how to extract components
- [Angular Material](https://material.angular.io/) — official Angular Material Design component library; preferred over Materialize in Angular projects
- [Headless UI](https://headlessui.com/) — unstyled, accessible components designed for Tailwind CSS integration
- [Open Props](https://open-props.style/) — design token library as an alternative to full frameworks
