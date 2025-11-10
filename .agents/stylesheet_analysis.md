## Stylesheet & Layout Inventory

### High-level observations
- Hugo site layers the [StefMa/hugo-fresh] theme with a thick set of bespoke partials under `layouts/partials`. The theme’s Bulma-based shell supplies the base `<head>`/`<body>` scaffolding while this repo overrides the content sections (hero, section1–5, taxonomy views, etc.).
- Visual identity is enforced almost entirely through static CSS under `static/css`. Each domain (patterns, glossary, recommendations, etc.) owns its own stylesheet plus a manually minified sibling (e.g., `patterns.css` + `patterns.min.css`).
- `layouts/partials/css.html` is the central hook: it preloads fonts, attempts to compile `style.sass` via Hugo Pipes, and then appends the static bundles via `partial "stylesheet.html"`. Script tags for FontAwesome (`js/23575b1502.js`) and a custom TOC script also live here, so CSS/JS order is defined in one place.

### `static/css` structure and conventions
- **File inventory** – The directory currently holds topic-specific bundles: `custom(.min).css`, `patterns(.min).css`, `glossary(.min).css`, `images(.min).css`, `recommendations(.min).css`, `quotes(.min).css`, `taxonomies(.min).css`, `toc(.min).css`, `ammerse(.min).css`, `open-sans(.min).css`, plus `visualization.css`. Every non-font file has a minified counterpart except `visualization.css`.
- **Fonts** – `open-sans.css` is a self-hosted Google Fonts export (woff2 + ttf) referenced via `<link rel="stylesheet" href="/css/open-sans.css?...">`. `custom.css` also declares local `@font-face` rules for `literta` and `d-din`, although the declarations omit `src:` (uses bare `url()`), which may explain why the site still falls back to Open Sans.
- **Scope** – Each stylesheet targets a content type:
  - `custom.css` overrides Bulma defaults (typography, hero sections, navbars, responsive adjustments) and defines shared utility classes.
  - `patterns.css` governs the card grid (`.pattern_container`, `.pattern-card`, `.item-title`, etc.) used on `/practices`.
  - `glossary.css` styles `.terminology-wrapper` and glossary popovers (also used by the `term` shortcode).
  - `quotes.css`, `recommendations.css`, `images.css`, `taxonomies.css`, `toc.css`, `ammerse.css` all map to similarly named sections/shortcodes under `layouts`.
  - `visualization.css` is a tiny helper for the `visualisations` section; it currently lacks a minified twin and is not referenced from `css.html`.
- **Distribution model** – Assets are kept under `static`, so Hugo copies them verbatim without pipeline processing. Minification is manual (files committed alongside the originals). There is no bundling step; templates include each file individually, preserving load-order control but increasing HTTP requests.

### `layouts` structure and CSS touchpoints
- **Entry points** – `layouts/index.html` composes the homepage from partials (`hero`, `section1`-`section5`, `sidebar`, `footer`). Each partial uses Bulma classes plus custom hooks defined in `custom.css`/friends.
- **Section templates** – Dedicated directories for each taxonomy/section (`layouts/practices`, `layouts/glossary`, `layouts/pillars`, `layouts/tools`, etc.) emit markup aligned with the targeted stylesheet:
  - `layouts/practices/list.html` renders `.pattern_container` sections and calls `partials/flex_cards.html`, matching selectors defined in `patterns.css`.
  - `layouts/glossary/list.html` iterates over `data/glossary.toml` and wraps each entry with `.glossary-term` markup that relies on `glossary.css`.
  - `layouts/glossary` and `layouts/tags` share `.terminology` + `.taxonomy` classes, again tied to the domain stylesheets.
- **Shortcodes/partials** – `layouts/shortcodes` contains helpers such as `note`, `tip`, `reference`, etc., which produce semantic wrappers consumed by `custom.css` (e.g., `.note-card`, `.quote-card`). `partials/flex_cards.html`, `partials/pattern.html`, and `partials/glossary_term.html` declare the structural markup for cards, glossary summaries, and AMMERSE sections; their class names map 1:1 to the CSS bundles.
- **Presentation deck tooling** – `layouts/presentations` and `partials/reveal-hugo` load Reveal.js assets from `static/js/reveal/...` plus a custom `js/reveal/theme/sdd.css`. These are separate from the Bulma-based site styles but still leverage the shared `stylesheet.html` helper for `<link>` tags.
- **Head orchestration** – `partials/css.html` (included from the theme’s `<head>`) is the only place where site CSS/JS are declared. It preloads fonts, compiles a non-existent `style.sass` (likely provided by the upstream module), and then appends the static bundles. Additional `<script>` tags for FontAwesome and TOC logic live here, so CSS/JS dependencies are tightly coupled.

### Integration notes & open questions
- Because all CSS lives under `static/`, Hugo’s asset pipeline (fingerprinting, cache-busting) is unused except for the attempted `style.sass` compilation. Any changes require editing both the readable and minified copies or regenerating the minified set manually.
- The partial references `css/icons.css`, but that file is not present in `static/css`. Either Hugo Pipes produces it elsewhere (not checked in) or the link currently 404s.
- Layout partials assume the Bulma grid (classes like `section`, `hero`, `columns`) and then layer custom hooks (e.g., `.pattern_container`). Any refactor must preserve those hooks or update both markup and CSS concurrently.
- There is no shared variables/mixins layer; color tokens (`#f39200`, `#1f3c48`, etc.) are duplicated across files. Moving to `assets/` + SCSS would enable centralizing tokens and generating the minified outputs automatically before publishing.

---

## CSS smell log (current state)

- **Missing assets** — `layouts/partials/css.html` hardcodes `css/icons.css`, but that file does not exist anywhere in the repo (`rg --files -g 'icons.css'` returns nothing). The link currently yields a 404 and costs an HTTP request per page.
- **Shadow visualizations** — `static/css/visualization.css` defines `.visualization_container` helpers, yet no layout imports it and the `layouts/visualisations` directory is empty. The style lives in “shadow alpha” mode: accessible if manually linked, but disconnected from any public section.
- **Invalid nesting left uncompiled** — Several files contain Sass-style nesting that browsers ignore:
  - `static/css/custom.css:16-24` and `:210` nest selectors inside `.pattern` and `.has-text-centered` blocks, so the `.pattern h3::before` and `.has-text-centered .title` rules never apply.
  - `static/css/toc.css:19-70` nests `h2`, `ul`, `li` inside `.tableOfContentContainer`; these declarations are silently dropped in browsers that do not implement the experimental CSS Nesting Module.
  - `static/css/patterns.css` mixes Sass-style placeholders (e.g., `.pattern-card { @media ... }` ), which makes the cascade hard to reason about.
- **Broken `@font-face` declarations** — `static/css/custom.css:1-12` defines `@font-face` blocks without `src:` properties, so the browser ignores them and the site falls back to Open Sans. The minified file carries the same issue.
- **Manual dual-file maintenance** — Every functional stylesheet has a hand-maintained `.min` twin with no build provenance. Risks:
  - Easy to forget to regenerate the minified copy → production and dev styles drift.
  - Adds clutter to diffs and git history.
- **Color tokens & typography duplicated** — `#f39200`, `#1e75c0`, `#1f3c48`, and font stacks (`'d-din', "Gill Sans", 'Open Sans'`) are repeated across `custom.css`, `patterns.css`, `glossary.css`, `quotes.css`, `recommendations.css`, `toc.css`, etc. Any rebrand requires N edits.
- **Layout/CSS drift** — Partial markup sometimes expects classes that no longer exist in CSS. Example: glossary cards add `.term-references` lists but the CSS only styles `.term-references .term-reference`, leading to default bullets outside the intended container.
- **Ampersand vs. dash naming** — The CSS alternates between `pattern_container`, `pattern-card`, and `pattern-card-title`, making it difficult to search and increases class name collisions.
- **Font loading duplication** — `open-sans.css` lives in `static/css/` and includes local files, but `css.html` still appends a `?family=...&display=swap` query to the URL. That query mimics Google Fonts parameters but provides no value, so requests are uncached (different query string for each weight combination).

---

## Visualizations “shadow alpha” note

- Content authors can reach visualization pages via direct URLs under `content/en/visualizations`, but no menu/section renders them and the matching layout directory is empty. Likewise, the CSS (`static/css/visualization.css`) is never loaded because `partials/css.html` omits it.
- Recommendation: keep the file in `static/css/visualization.css` but gate inclusion behind a feature flag in `config.yaml` (e.g., `params.visualizations.alpha = true`). Until then, annotate the stylesheet header with a warning so contributors know it is intentionally disconnected.

---

## SCSS migration assessment (using `src/` + precompile)

**Why the current approach strains maintainability**
1. **Invalid syntax** — The presence of Sass-style nesting inside `.css` files proves that past edits expected a preprocessor. Browsers ignore the nested portions, so the intended selectors never run.
2. **Duplication & drift** — Redundant `.min.css` files and repeated color tokens add review overhead and increase the chance of stale styles.
3. **No composition** — Without variables/mixins/maps it is impossible to share spacing rules between `patterns`, `glossary`, `recommendations`, etc., so tweaks have to be copy-pasted.

**Feasibility of an SCSS pipeline rooted in `src/`**
- The repo already uses Hugo Pipes (the `style.sass` hook in `partials/css.html`), so Hugo can compile SCSS without extra tooling. Alternatively, we can store SCSS sources under `src/styles/` and run `npm run build:css` (using `sass` or `dart-sass`) before `hugo`. Both approaches avoid committing minified artifacts.
- Recommended hierarchy:
  ```
  src/styles/
  ├── _settings.scss      # colors, typography, spacing scales
  ├── _mixins.scss
  ├── domains/
  │   ├── _custom.scss    # global overrides
  │   ├── _patterns.scss
  │   ├── _glossary.scss
  │   ├── _toc.scss
  │   └── _visualizations.scss (alpha)
  └── site.scss           # orchestrates imports
  ```
- Hugo-compatible option: symlink or copy `src/styles` into `assets/styles`, then update `partials/css.html` to compile `assets/styles/site.scss`. That keeps sources in `src/` (as requested) yet lets Hugo handle fingerprinting and cache busting.
- Build pipeline suggestion:
  ```bash
  # package.json
  "scripts": {
    "build:css": "sass --no-source-map src/styles/site.scss static/css/site.css && postcss static/css/site.css --use autoprefixer --replace"
  }
  ```
  The script can run pre-commit or inside Netlify before `hugo`.

**Maintenance impact**
- ✅ Pros: single source of truth, variables/mixins, Hugo fingerprinting, no `.min` twins, easier theming, ability to gate alpha sections via feature flags or separate entry points (e.g., only import `_visualizations.scss` when `params.visualizations.alpha` is true).
- ⚠️ Cons: introduces a build prerequisite (Sass/Pnpm). Contributors who only edit Markdown will need docs for installing the toolchain. Need to ensure Netlify/GitHub actions install the Sass compiler before builds.

---

## Remediation path (proposal)

1. **Establish SCSS sources**
   - Move each existing CSS file into `src/styles/domains/_<name>.scss`. Clean up nesting so selectors compile correctly, add missing `src:` declarations to `@font-face`, and normalize class naming (prefer BEM-ish dashes).
   - Create `_variables.scss` for shared tokens (brand colors, neutrals, font stacks).
2. **Define entry points**
   - `src/styles/site.scss` should `@use` the settings/mixins plus each domain module (patterns, glossary, toc, etc.).
   - Add `src/styles/visualizations.scss` but keep it behind a feature flag or separate import so the “shadow alpha” CSS is opt-in.
3. **Compile before Hugo**
   - Option A: rely on Hugo Pipes — copy the `src/styles` tree into `assets/styles` (or update `partials/css.html` to `resources.Get "styles/site.scss"`). Hugo will output a single fingerprinted CSS file; remove the manual `<link>` tags for each static bundle.
   - Option B: keep SCSS under `src/` and add an NPM/scripted build step that writes `static/css/site.css` + `static/css/site.min.css` before `hugo`. Document this in `README` and CI scripts.
4. **Update templates**
   - Replace the series of `partial "stylesheet.html"` includes with a single link to the compiled `site.css`. Keep section-specific classes unchanged so content stays stable.
   - Remove the dead `css/icons.css` include and conditionally include `visualization.css` only when the feature flag is enabled.
5. **Clean up artifacts**
   - Delete legacy `.min.css` files once the pipeline emits compressed output.
   - Add linting (`stylelint` or `sass-lint`) to catch future nesting/config mistakes.

This transition directly addresses the current smells (invalid nesting, duplicated tokens, manual minification) and sets up a clearer path for gating alpha features like visualizations.

✅ Context captured — ready for further validation or follow-up analysis.
