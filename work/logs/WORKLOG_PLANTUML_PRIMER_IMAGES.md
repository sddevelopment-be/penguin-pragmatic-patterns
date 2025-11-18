# Work Log: PlantUML Primer Diagram Rendering

Date: 2025-11-18
Role: Diagram Daisy

## Actions
1. Located PlantUML primer at `content/en/primers/markup-and-diagramming/plantuml.md`.
2. Created individual `.puml` source files for each code example under `src/images/primers/plantuml/`.
3. Installed PlantUML and Graphviz (OpenJDK pulled in due to package deps).
4. Adjusted C4 context diagram include paths to local `docs/templates/plantuml/C4.puml` and `C4_Context.puml`.
5. Rendered all diagrams to SVG; initial batch succeeded except C4 (include path mismatch). Fixed paths and re-rendered.
6. Moved all generated SVGs to `static/images/primers/content/`.
7. Embedded rendered SVG image references beneath each corresponding example code block in the primer.

## Generated SVGs
- architecture-layers.svg
- auth-sequence.svg
- c4-context.svg
- class.svg
- component.svg
- deployment.svg
- note-example.svg
- sequence-basic.svg
- sequence-detailed.svg
- styling-basic.svg

## Notes
- C4 include still produced an internal TIM loader stack trace but generated `c4-context.svg` successfully; likely benign due to stdlib macro evaluation (older PlantUML version 1.2020.2). Consider upgrading PlantUML for cleaner C4 support if licensing/packaging permits.
- Image paths use Hugo `static/` mounting: referenced as `/images/primers/content/<name>.svg`.
- Primer now provides immediate visual feedback under each snippet improving learner experience.

## Follow-ups
- Optional: add alt text for accessibility on each embedded image.
- Consider adding a Makefile or script for incremental diagram rendering.
- Review if remote C4 includes (https) are preferable over local copies for updates.

## Validation
- SVG files present and referenced.
- No content edits beyond image embedding; front matter untouched.

Done.

