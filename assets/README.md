# Assets Directory

This folder contains all style sources processed through Hugo Pipes.

## Structure

- [`styles/_settings.scss`](./styles/_settings.scss) — shared tokens (colors, font stacks, spacing). Add new brand constants here before using them in domain files.
- [`styles/domains/*.scss`](./styles/domains) — one entry per site section (`custom`, `patterns`, `glossary`, `recommendations`, `images`, `quotes`, `taxonomies`, `toc`, `ammerse`, `visualization`). Keep selectors scoped to their respective layouts/shortcodes to maintain locality of change.

## Workflow

1. Edit the relevant `domains/*.scss` file.
2. Run `hugo --gc --minify --buildDrafts=false` to verify that Hugo Pipes compiles the bundle.
3. Optional: run `npx stylelint "assets/styles/**/*.scss"` (see Post-resolution notes in `.agents/stylesheet_analysis.md`).
4. Commit only the SCSS changes; Hugo will regenerate the compiled CSS during deploy.

### Adding a new domain stylesheet

1. Create `assets/styles/domains/<name>.scss` and `@use "../settings"` for shared tokens.
2. Append a new bundle dictionary to the `$scssBundles` slice in `layouts/partials/css.html`.
3. If the bundle should be feature-gated, wrap the `append` call in the relevant `if` clause (see the visualization example).
