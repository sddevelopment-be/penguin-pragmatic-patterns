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

### Variant: per-domain SCSS via Hugo assets (best of both worlds)

- **Viability** — Hugo Pipes happily compiles multiple SCSS entry points. Each domain stylesheet (patterns, glossary, toc, etc.) can live under `assets/styles/domains/<name>.scss`, import shared tokens from `assets/styles/_settings.scss`, and then be compiled + fingerprinted individually inside `partials/css.html`.
- **Mechanics** — Replace the static `<link>` tags with a helper that:
  ```go-html-template
  {{ $shared := resources.Get "styles/_settings.scss" }}
  {{ range $entry := slice "domains/custom.scss" "domains/patterns.scss" "domains/glossary.scss" }}
    {{ $scss := resources.Get (printf "styles/%s" $entry) | resources.ToCSS (dict "enableSourceMap" $inServerMode) }}
    {{ $css  := cond $inServerMode $scss ($scss | minify | fingerprint) }}
    <link rel="preload" href="{{ $css.RelPermalink }}" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript><link rel="stylesheet" href="{{ $css.RelPermalink }}" {{ if not $inServerMode }}integrity="{{ $css.Data.Integrity }}"{{ end }}></noscript>
  {{ end }}
  ```
  Each compiled asset keeps its own hash, so browsers only download what changes.
- **Benefits** — Maintains locality (patterns styles live near their templates), preserves smaller downloads for pages that only need a subset, and still eliminates the hand-managed `.min.css` files. Contributors edit per-domain SCSS files but inherit shared tokens/mixins from `_settings.scss`.
- **Considerations** — Need to document naming so partials know which SCSS bundles to include. For alpha sections (visualizations) we can guard the inclusion with config flags (`if .Site.Params.visualizations.alpha`). The only runtime cost is a few extra Hugo pipeline executions during build, which is negligible for ~10 bundles.

---

## Remediation path (proposal)

1. **Establish SCSS sources in `assets/styles/`**
   - Create `assets/styles/_settings.scss` (colors, typography, spacing) plus helpers like `_mixins.scss`.
   - Move each legacy CSS file into `assets/styles/domains/<name>.scss`, cleaning up nesting and fixing `@font-face` declarations during the migration.
2. **Define per-domain entry points**
   - Each domain file becomes an independent SCSS entry (`domains/custom.scss`, `domains/patterns.scss`, etc.) that `@use`s `_settings.scss`.
   - Add `domains/visualizations.scss` but only import/compile it when `params.visualizations.alpha` is true.
3. **Compile via Hugo Pipes**
   - Update `partials/css.html` to iterate over a list of SCSS entry files, run `resources.ToCSS`, and (when not in server mode) `minify | fingerprint` each bundle. This retains per-domain downloads while delivering automatic hashing/cache busting.
4. **Update templates**
   - Replace the hard-coded `<link>` list with a loop that emits one tag per compiled domain bundle (custom, patterns, glossary, toc, images, etc.), preserving the existing load order but pointing at Hugo-generated assets.
   - Remove the dead `css/icons.css` include and conditionally emit the visualization bundle only when the feature flag is enabled.
5. **Clean up artifacts**
   - Delete legacy `.min.css` files once the pipeline emits compressed output.
   - Add linting (`stylelint` or `sass-lint`) to catch future nesting/config mistakes.

This transition directly addresses the current smells (invalid nesting, duplicated tokens, manual minification) and sets up a clearer path for gating alpha features like visualizations.

---

## Implemented pipeline (2025-11-10)

- **Sources** — All user-defined styles now live under `assets/styles/domains/`, one file per domain (`custom`, `patterns`, `glossary`, `recommendations`, `images`, `quotes`, `taxonomies`, `toc`, `ammerse`, `visualization`). Shared tokens live in `assets/styles/_settings.scss`.
- **Compilation flow** — `layouts/partials/css.html` iterates through the bundle list, runs `resources.ToCSS`, fingerprints each result, and emits `<link rel="preload">` tags. The visualization bundle is only appended when `params.visualisations.alpha` is true so it can stay in “shadow alpha”.
- **Legacy cleanup** — All redundant files under `static/css/*.css` and `*.min.css` (except the self-hosted `open-sans.css`) were removed, ensuring Hugo’s asset pipeline is the sole source of truth.
- **Contributor steps** — Edit the SCSS in `assets/styles/domains/`, run `hugo --gc --minify --buildDrafts=false` to verify, and toggle `visualisations.alpha` in `config.yaml` when that section should surface.

---

## Post-resolution notes

1. **Stylelint guide**
   - Install dependencies locally (once): `npm install --save-dev stylelint stylelint-config-standard-scss stylelint-config-prettier`.
   - Create/extend `.stylelintrc.json` (example):
     ```json
     {
       "extends": [
         "stylelint-config-standard-scss",
         "stylelint-config-prettier"
       ],
       "rules": {
         "color-hex-length": "short",
         "selector-class-pattern": "^[a-z0-9\\-]+$"
       }
     }
     ```
   - Lint everything: `npx stylelint "assets/styles/**/*.scss"`.
   - Recommended workflow: run `npx stylelint --fix "assets/styles/**/*.scss"` before each commit; CI can reuse the same command to keep the bundle consistent.
2. **Future guardrails**
   - Keep new domains isolated under `assets/styles/domains/` and append their entry to `layouts/partials/css.html`.
   - When promoting the visualization section, flip `params.visualisations.alpha` and add navigation hooks so the bundle is included automatically.
   - For experiments, prefer feature flags plus dedicated SCSS files to keep the production payload lean.

✅ Context captured — ready for further validation or follow-up analysis.

---

## Lighthouse desktop QA (2025-11-10)

**Scope** — Reviewed the desktop-mode Lighthouse JSON dumps under `docs/lighthouse/` (`MAINPAGE`, listing pages for Books/Glossary/Practices/Primers, and the `Manual_of_me` practice detail). All reports were generated against `hugo serve`, so networking/caching numbers reflect the development server and not Netlify.

### Score snapshot
| Page | Perf | A11y | Best | SEO | Notes |
| --- | --- | --- | --- | --- | --- |
| Home | 0.89 | 0.85 | 1.00 | 0.92 | LCP 2.2 s, multiple a11y blockers |
| Practices index | 0.77 | 0.86 | 1.00 | 0.92 | CLS spikes during nav render |
| Manual of Me | 0.72 | 0.88 | 1.00 | 0.92 | Same structural issues as listing |
| Glossary | 0.73 | 0.85 | 1.00 | 0.92 | `<title>` and heading-order failures |
| Primers | 0.75 | 0.86 | 1.00 | 0.92 | Identical nav/link contrast problems |
| Books | 0.70 | 0.85 | 1.00 | 0.92 | Worst CLS due to long card grid |

### Cross-page findings & feasibility
1. **Empty `<title>` tags (score = 0 across every page)**  
   - The rendered HTML in `public/index.html` shows `<title></title>` even though `config.yaml` defines `title: Pragmatic Penguin Patterns`. The culprit is likely a theme/head partial that renders `{{ or .Page.Title .Site.Title }}` before `.Site.Title` is set in the fresh theme context. Fixing the partial (or setting `.Title` in `layouts/_default/baseof.html`) is a **high-feasibility** change touching one template, and it closes the Lighthouse a11y and SEO warnings simultaneously.
2. **Navigation contrast + accessible names**  
   - Audit `color-contrast` flags every `.navbar-item` because the Bulma “secondary” link color (`#999` on white) only yields a 2.84 ratio. Update `assets/styles/domains/custom.scss` to use the same dark blue palette already defined in `_settings.scss`.  
   - `link-name` shows the brand link (`.navbar-item` with logo) plus the GitHub/LinkedIn icons lack discernible text. A hidden `<span class="sr-only">` or `aria-label` per anchor is enough. Both fixes are **low-effort SCSS/HTML edits**.
3. **Heading order breaks (score = 0)**  
   - Example: section titles jump from `<h2>` to `<h1>` or `<h3>` without a sequential structure (see `section#section2` subtitle flagged in `lighthouse_MAINPAGE…`). Standardize headings in the landing partials so sections use `h2` followed by `h3`, and ensure detail pages only expose one `h1`. This is a **moderate** markup pass across `layouts/partials/section*.html`.
4. **Hero and feature images drive LCP & unsized-image issues**  
   - LCP is the hero SVG (`images/pattern_portfolio.svg`, 1.1 MB) which is lazily loaded and lacks `width`/`height`. Removing `loading="lazy"` from the LCP candidate, adding `fetchpriority="high"`, and inlining `width`/`height` constraints are straightforward.  
   - Feature art like `sense_making_meta_model.webp` currently serves the same full-size asset to every breakpoint. Use Hugo’s `resources.Get` + `Resize` inside the partial to generate real `srcset`s (tie back into the workflow described in `assets/README.md`). Both tasks are **medium effort** because they touch multiple partials but don’t require new tooling.
5. **Layout shift spikes**  
   - `layout-shifts` shows the Bulma navbar and cloned sticky navbar cause most CLS (scores up to 0.77 on Books). Two root causes: fonts swap late (custom `literta`/`d-din` declarations omit `font-display`) and the JS-driven navbar clones inject DOM without reserving space. Add `font-display: swap` to the custom `@font-face` blocks in `assets/styles/domains/custom.scss`, and replace the JS clone with a pure CSS sticky nav or pre-size the clone container (`min-height`) to eliminate jumps. This is **medium feasibility** because it needs both CSS and minor JS surgery.
6. **Legacy JavaScript + render-blocking requests**  
   - Every page loads `https://unpkg.com/feather-icons@4.29.2/dist/feather.min.js` even though only `layouts/partials/single/sidebar.html` uses one `data-feather` icon. Self-host the icon sprite or swap in inline SVGs to drop the external dependency, removing ~10 KiB of legacy JS and a blocking request. Also consider deferring the FontAwesome kit (`static/js/23575b1502.js`) since it contributes to render delay. **Feasibility: high** once we decide which icon set is canonical.
7. **CSS bloat and duplicated blocking stylesheets**  
   - `unused-css-rules` reports ~297 KiB of unused rules, mainly from the upstream `style.css` shipped by the theme. Now that our canonical sources live under `assets/styles/domains/` (see `assets/README.md`), we can progressively migrate Bulma overrides into the custom bundles and stop shipping the monolithic `style.min.*`. This is a **larger project** but aligns with the roadmap already outlined earlier in this file: migrate components, drop the theme CSS, and let Hugo Pipes fingerprint only the bundles we actually need.

### Page-specific observations
- **Books** — Highest CLS because the long cards list loads imagery without fixed dimensions. Prioritize width/height on `.book-card` thumbnails and consider paginating or virtualizing the list.
- **Glossary & Primers** — Both highlight heading-order and `<title>` gaps; once the head partial is fixed, double-check that taxonomy list templates set `title` in front matter (currently blank in several `_index.md` files).
- **Practice detail** — The “Manual of me” page inherits all global issues plus `link-name` failures for the breadcrumb/back button inside `layouts/partials/single/sidebar.html`. When adjusting nav labels, include sidebar close buttons (`data-feather="x"`).

### WONTFIX (desktop, `hugo serve` only)
- **`bf-cache` (WebSocket)** — Dev server injects LiveReload via WebSocket, blocking back/forward cache. Production builds served from Netlify don’t open sockets, so mark as `WONTFIX – dev tooling artifact`.
- **`uses-text-compression`, `uses-long-cache-ttl`, `cache-insight`, `document-latency-insight`, `font-display-insight` entries referencing `http://localhost:1313/css/*.css` and `livereload.js`** — All triggered because Hugo’s dev server disables compression/caching and streams the livereload script. Re-run Lighthouse against the production host before spending time on CDN/header tweaks. `WONTFIX – local server characteristics`.

### Action plan
1. **Semantic & a11y hardening (short-term)**  
   - Patch the head partial so `<title>` always resolves to `.Site.Title` + `.Title`.  
   - Update nav/footer anchors with accessible text and fix heading hierarchy within `section*.html`, `layouts/practices/list.html`, and taxonomy templates.  
   - Adjust the nav color tokens in `assets/styles/domains/custom.scss` to meet 4.5:1 contrast.
2. **Hero/media performance (short-term)**  
   - Remove `loading="lazy"` from the hero LCP image, add `fetchpriority="high"`, explicit `width`/`height`, and `decoding="async"`.  
   - Use Hugo image processing in the hero/feature partials to ship responsive `srcset`s for `sense_making_meta_model` and other large art; align with the workflow already documented in `assets/README.md`.
3. **Layout stability (mid-term)**  
   - Add `font-display: swap` to the custom `literta`/`d-din` faces and preload whichever font the nav uses first.  
   - Replace the JS navbar clone with CSS `position: sticky` or pre-sized placeholder to stop CLS spikes on long scrolling pages (Books/Glossary).
4. **JS and CSS hygiene (mid-term)**  
   - Remove the remote Feather Icons script by inlining the close icon SVG or bundling it locally; defer the FontAwesome kit or scope it to pages that need icons.  
   - Continue migrating away from the theme’s `style.css` to the scoped SCSS bundles so we can delete the unused 280 KiB stylesheet and satisfy `unused-css-rules`.
5. **Verification loop**  
   - After applying the above, rerun Lighthouse against the production domain (desktop + mobile) to validate caching/compression assumptions and capture any residual issues not observable on `hugo serve`.

These actions stay within the existing SCSS pipeline described in `assets/README.md` and mainly require partial/SCSS edits—no tooling changes beyond what is already in place.

### Additional QOL changes
#### Hugo test harness
- **Wrapper script** — Add `validation/scripts/run-hugo-tests.sh` that runs the full production build plus integrity checks in one place:
  ```bash
  #!/usr/bin/env bash
  set -euo pipefail
  hugo --gc --minify --buildDrafts=false --panicOnWarning --templateMetricsHints --printI18nWarnings
  hugo check --internal-links --external-links --missing --verbose
  ```
  This catches template warnings, missing translations, and link rot during CI instead of relying on manual `hugo serve`.
- **Node hook** — In `validation/package.json`, add a script entry `"test:hugo": "bash scripts/run-hugo-tests.sh"` and expose a meta-script `"test": "npm run lint && npm run test:hugo"` so Cypress/emulated Lighthouse runs can execute after Hugo verifies content integrity.
- **CI wiring** — Update the GitHub Actions (or Netlify prebuild hook) to call `npm run test:hugo` before Lighthouse/visual tests. This ensures template regressions, missing sections, and broken links are blocked in the same pipeline that already contains Cypress tooling inside `validation/`.

#### ESLint / Stylelint rules
- **ESLint scope** — Reuse the `validation` workspace to manage JS linting. Install `eslint`, `eslint-config-standard`, `eslint-plugin-import`, `eslint-plugin-node`, and `eslint-plugin-promise` as devDependencies; create `validation/.eslintrc.cjs` with `root: true`, `env: { browser: true, es2021: true }`, and target `static/js/**/*.js`, `assets/**/*.js`, and Cypress specs. Add `"lint:js": "eslint static/js assets/**/*.js validation/cypress/**/*.ts"` to `validation/package.json`.
- **Stylelint scope** — At the repo root (where SCSS lives), add a tiny `package.json` with `stylelint`, `stylelint-config-standard-scss`, and `stylelint-config-prettier`, or extend the `validation` package if we prefer a single workspace. Create `.stylelintrc.json` at the root (see previous recommendation) and a script `"lint:css": "stylelint 'assets/styles/**/*.scss'"`.
- **Unified command** — Wire a top-level `npm run lint` inside `validation/package.json` to call both `lint:js` and `lint:css` (the latter via `npm run --prefix .. lint:css` if CSS linting lives at the repo root). This keeps every lint/test entry under the existing `validation/` automation umbrella, so CI and contributors can run `npm run lint && npm run test:hugo` before pushing changes.
