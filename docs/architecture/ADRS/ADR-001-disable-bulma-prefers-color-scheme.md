# Architecture Decision Records

## ADR-001: Disable Bulma prefers-color-scheme media queries

**status**: `Accepted`  
**date**: 2025-11-14

### Context

The site inherits Bulma 1.x via the `hugo-fresh` theme. Bulma now emits large `@media (prefers-color-scheme: ...)` blocks that override the global CSS-variable palette. Even though we layered custom SCSS to reassert light colors, browsers running in dark mode still flash or keep dark variants because Bulma redefines hundreds of `--bulma-*` tokens inside those media queries. The resulting UI looks inconsistent, and we are not ready to maintain a dedicated dark palette yet.

### Decision

Strip Bulma's `prefers-color-scheme` media queries from the compiled `css/style.css` bundle during the Hugo Pipes build. The `layouts/partials/css.html` pipeline now removes both the light and dark media-query blocks immediately after Sass compilation so only the base light palette ships to browsers.

### Rationale

- Keeps the rendered site aligned with the intended light visual design regardless of system settings.
- Avoids duplicating Bulma's entire light palette inside our overrides or chasing every component-level selector affected by the dark scheme.
- Keeps Bulma upgradable without forking the dependency; we post-process the compiled resource locally.
- Implementation is localized to the CSS pipeline and does not require additional runtime JavaScript or layout hooks.

### Envisioned Consequences

- ✅ All visitors see the same light theme, preventing dark-mode heuristics from mutating colors.
- ✅ Build times only add a cheap regex replacement; no additional tooling is required.
- ⚠️ Source maps for the base bundle are not available while the stylesheet is treated as a raw resource after stripping (acceptable for now given the debugging benefits of `custom.css`).
- ⚠️ If we later want dark-mode support, we must remove this stripping step and invest in a complete dual-palette strategy.

### Considered Alternatives

- **Full dark-mode support now** — rejected due to scope; requires defining and testing all Bulma token permutations plus our custom sections.
- **Manual overrides per token** — fragile and verbose; copying hundreds of CSS variables into our bundles would be hard to maintain.
- **JavaScript toggling of `data-theme`** — still leaves Bulma's CSS variables in place and introduces FOUC and runtime complexity.

### Result

- Updated `layouts/partials/css.html` so the Hugo Pipes pipeline strips Bulma’s `@media (prefers-color-scheme: …)` blocks immediately after Sass compilation; the generated `css/style.css` now contains only the light palette and behaves consistently across browsers.
- Added a reusable ADR template under `docs/references/adr-template.md` to streamline future decisions.
