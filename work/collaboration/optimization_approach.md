# Lighthouse Optimization Approach

## Current Metrics (Desktop audit — `validation/reports/lighthouse-desktop.report.json`)

- Scores: Performance 91, Accessibility 86, Best Practices 100, SEO 92.
- Core vitals: First Contentful Paint 0.6 s, Largest Contentful Paint 1.9 s, Speed Index 0.9 s, Time to Interactive 1.9 s.
- Audit timestamp: 2025‑11‑11 12:56 UTC via Lighthouse 13.0.1, desktop preset, Chrome 142.

- Recent desktop audit (`validation/reports/lighthouse-desktop.report.json:1`) scored Performance 91 / Accessibility 86, with key failures around document metadata, headings, link names, color contrast, unsized images, and overly large CSS bundles.
- The presentation head partial (`layouts/partials/layout/head.html:1`) is currently the only template that constructs a `<title>` tag, so non-presentation pages inherit the theme defaults and trigger Lighthouse’s “Document doesn’t have a `<title>` element” finding.
- Homepage sections emit mismatched heading levels and image markup (`layouts/partials/section1.html:6`, `layouts/partials/section2.html:13`), and navigation links lack discernible labels (`layouts/partials/navbar.html:1`), which explains the accessibility findings.
- Global SCSS tokens live in `assets/styles/_settings.scss:4`, yet color contrast violations persist because the partials still hardcode low-contrast combinations; CSS bundles (`layouts/partials/css.html:1`) eagerly load every domain stylesheet, inflating unused CSS totals.

## Remediation Steps (not executed yet)

1. **Restore document metadata**
   - Introduce a site-wide `layouts/_default/baseof.html` (or override the theme’s) that always renders `<head>` with `layouts/partials/layout/head.html:1`. Ensure every page passes a title/description before content is emitted to satisfy Lighthouse metadata audits.

2. **Normalize heading hierarchy and link labels**
   - Update section partials (`layouts/partials/section1.html:6`, `layouts/partials/section2.html:13`, `layouts/partials/section3.html`, etc.) so headings descend sequentially (e.g., `h2` for section titles, `h3` for subtitles) and icon/text pairs include meaningful screen-reader text. Augment navbar brand links and dropdown triggers in `layouts/partials/navbar.html:1` with aria labels or visually hidden spans to resolve `link-name`.

3. **Improve color contrast via shared tokens**
   - Revisit palette assignments in `assets/styles/_settings.scss:4` and the consuming SCSS files (e.g., `assets/styles/domains/custom.scss`, `assets/styles/domains/section*.scss`) to raise contrast ratios flagged in the audit. Document the updated mappings to keep tokens aligned with WCAG AA thresholds.

4. **Add intrinsic image dimensions & preloads**
   - Annotate hero/footer imagery in `layouts/partials/section2.html:23` and `layouts/partials/footer.html` with explicit `width`/`height` (or `aspect-ratio`) attributes that match the actual assets. Preload the hero image via `layouts/partials/css.html:1` so the LCP resource is discovered earlier.

5. **Reduce unused CSS and render-blocking assets**
   - Replace the blanket inclusion pattern in `layouts/partials/css.html:23` with per-page bundles: only load domain styles when the associated layout is rendered, move Font Awesome to inline SVGs (or scoped imports), and let Hugo Pipes minify self-hosted fonts. This should eliminate the 239 KiB unused CSS warning and resolve the “Minify CSS” audit.

6. **Deliver fonts responsibly**
   - Apply `font-display: swap` (plus `size-adjust` if needed) to every `@font-face` block consumed from `assets/styles/domains/custom.scss` and the generated font sheet, referencing the definitions in `assets/styles/_settings.scss:4`. This addresses the `font-display-insight` warning and lowers layout shifts.

7. **Cache headers & render-blocking JS**
   - Prepare server-side cache directives (for whichever platform serves `/public`) to eliminate the `cache-insight` warning, and mark non-critical scripts in the Fresh theme partials (`layouts/partials/scripts.html`, referenced via `layouts/partials/css.html:23`) as `defer`/`async` or move them below the fold. This also targets the “Render blocking requests” and “Network dependency tree” audits.

All changes remain pending; no templates, styles, or assets were modified while preparing this plan.
