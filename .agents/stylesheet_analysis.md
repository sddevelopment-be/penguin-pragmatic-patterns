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

✅ Context captured — ready for further validation or follow-up analysis.
