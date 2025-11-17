# Bootstrap Artefact Index

Quick reference index for navigating bootstrap artefacts and finding specific information.

## By Information Type

### Repository Structure
- **Overview:** [REPO_MAP.md](../../structure/REPO_MAP.md) — Directory tree and organization
- **Statistics:** [REPO_MAP.md](../../structure/REPO_MAP.md#key-file-counts--statistics) — Page counts, file sizes
- **Ignored Files:** [REPO_MAP.md](../../structure/REPO_MAP.md#build-outputs-ignored) — Gitignored directories

### Build & Development
- **Local Setup:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#local-development-workflow) — Prerequisites and commands
- **Build Commands:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#build-commands) — Hugo build variations
- **Known Issues:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#known-build-issues) — Common build problems

### CI/CD & Deployment
- **GitHub Actions:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#cicd-workflows) — All 5 workflows
- **Deployment:** [SURFACES.md](../../structure/SURFACES.md#cicd-integration-surfaces) — GitHub Pages + Netlify
- **Environments:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#build-environments) — Development vs Production

### Content Creation
- **Authoring Rules:** [.repo_overview.md](.repo_overview.md#authoring-rules) — Editorial guidelines
- **Templates:** [SURFACES.md](../../structure/SURFACES.md#content-creation-surfaces) — Practice/concept scaffolds
- **Front Matter:** [SURFACES.md](../../structure/SURFACES.md#front-matter-requirements) — Required fields
- **Data Structure:** [.repo-structure.md](.repo-structure.md) — TOML schemas

### Agent Context
- **Agent Profiles:** [CONTEXT_LINKS.md](CONTEXT_LINKS.md#agent-profiles) — 10 specialized agents
- **Context Hierarchy:** [CONTEXT_LINKS.md](CONTEXT_LINKS.md#context-file-priority) — Precedence order
- **Task Assignments:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#agent-specific-tasks) — Agent responsibilities

### Integration Points
- **Hugo Module:** [SURFACES.md](../../structure/SURFACES.md#hugo-module-surface) — Theme dependencies
- **Data Files:** [SURFACES.md](../../structure/SURFACES.md#toml-data-files-read-only-surface) — Glossary, bibliography
- **Scripts:** [SURFACES.md](../../structure/SURFACES.md#content-generation-scripts) — Automation scripts
- **APIs:** [SURFACES.md](../../structure/SURFACES.md#api--data-query-surfaces) — Hugo outputs

## By Use Case

### "I'm new to this repository"
1. Start: [REPO_MAP.md](../../structure/REPO_MAP.md)
2. Then: [WORKFLOWS.md](../../structure/WORKFLOWS.md#local-development-workflow)
3. Finally: [.repo_overview.md](.repo_overview.md#authoring-rules)

### "I need to build/test locally"
1. [WORKFLOWS.md](../../structure/WORKFLOWS.md#prerequisites)
2. [WORKFLOWS.md](../../structure/WORKFLOWS.md#build-commands)
3. [WORKFLOWS.md](../../structure/WORKFLOWS.md#known-build-issues)

### "I'm adding new content"
1. [.repo_overview.md](.repo_overview.md#authoring-rules)
2. [SURFACES.md](../../structure/SURFACES.md#content-templates)
3. [.repo-structure.md](.repo-structure.md)

### "I'm modifying CI/CD"
1. [WORKFLOWS.md](../../structure/WORKFLOWS.md#cicd-workflows)
2. [SURFACES.md](../../structure/SURFACES.md#cicd-integration-surfaces)
3. [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#workflow-improvements)

### "I'm an automated agent"
1. [CONTEXT_LINKS.md](CONTEXT_LINKS.md)
2. [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#agent-specific-tasks)
3. [REPO_MAP.md](../../structure/REPO_MAP.md)

### "I'm troubleshooting a build"
1. [WORKFLOWS.md](../../structure/WORKFLOWS.md#known-build-issues)
2. [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#global-repository-gaps)
3. [WORKFLOWS.md](../../structure/WORKFLOWS.md#build-artifacts)

## By File Type

### Markdown Content
- **Location:** [REPO_MAP.md](../../structure/REPO_MAP.md#content--data)
- **Templates:** [SURFACES.md](../../structure/SURFACES.md#content-templates)
- **Structure:** [.repo-structure.md](.repo-structure.md#content-directory)

### TOML Data
- **Bibliography:** [.repo-structure.md](.repo-structure.md#data-directory)
- **Glossary:** [SURFACES.md](../../structure/SURFACES.md#toml-data-files-read-only-surface)
- **Tools:** [SURFACES.md](../../structure/SURFACES.md#toml-data-files-read-only-surface)

### Hugo Templates
- **Layouts:** [REPO_MAP.md](../../structure/REPO_MAP.md#hugo-site-structure)
- **Shortcodes:** [REPO_MAP.md](../../structure/REPO_MAP.md#hugo-site-structure)
- **Partials:** [REPO_MAP.md](../../structure/REPO_MAP.md#hugo-site-structure)

### Configuration Files
- **Hugo:** [SURFACES.md](../../structure/SURFACES.md#hugo-module-surface)
- **Node.js:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#nodejs-dependencies)
- **CI/CD:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#cicd-workflows)

## By Agent Role

### Bootstrap Bill
- **Outputs:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#bootstrap-bill-repository-structure-agent)
- **Structure:** [REPO_MAP.md](../../structure/REPO_MAP.md)
- **Surfaces:** [SURFACES.md](../../structure/SURFACES.md)

### Curator
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#curator-content-quality-agent)
- **Validation:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#content-validation)
- **Quality:** [.repo_overview.md](.repo_overview.md#authoring-rules)

### Writer-Editor
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#writer-editor-content-editing-agent)
- **Templates:** [SURFACES.md](../../structure/SURFACES.md#content-templates)
- **Guidelines:** [.repo_overview.md](.repo_overview.md#authoring-rules)

### Lexical
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#lexical-glossaryterminology-agent)
- **Glossary:** [SURFACES.md](../../structure/SURFACES.md#toml-data-files-read-only-surface)
- **Validation:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#glossary-tag-validation)

### Diagrammer
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#diagrammer-diagram-generation-agent)
- **PlantUML:** [SURFACES.md](../../structure/SURFACES.md#diagram-generation-surface)

### Frontend
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#frontend-uilayout-agent)
- **Layouts:** [REPO_MAP.md](../../structure/REPO_MAP.md#hugo-site-structure)

### Researcher
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#researcher-research--verification-agent)
- **Bibliography:** [.repo-structure.md](.repo-structure.md#data-directory)

### Scribe
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#scribe-documentation-agent)
- **Workflows:** [WORKFLOWS.md](../../structure/WORKFLOWS.md)

### Synthesizer
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#synthesizer-content-aggregation-agent)
- **Cross-links:** [.repo-structure.md](.repo-structure.md#concepts-directory)

### Architect
- **Tasks:** [TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#architect-architecture-decision-agent)
- **Dependencies:** [WORKFLOWS.md](../../structure/WORKFLOWS.md#dependency-management)

## Critical Information Quick Links

### Build Requirements
- **Hugo Version:** 0.152.2 extended ([WORKFLOWS.md](../../structure/WORKFLOWS.md#prerequisites))
- **Theme:** hugo-fresh v1.0.0 ([SURFACES.md](../../structure/SURFACES.md#hugo-module-surface))
- **Node.js:** Optional, for linting ([WORKFLOWS.md](../../structure/WORKFLOWS.md#nodejs-dependencies))

### Content Requirements
- **Tags:** Must exist in glossary ([.repo_overview.md](.repo_overview.md#authoring-rules))
- **Categories:** Fixed set of 4 ([SURFACES.md](../../structure/SURFACES.md#category-restrictions))
- **UUIDs:** Required, use `uuidgen` ([SURFACES.md](../../structure/SURFACES.md#uuid-generation))

### Known Issues
- **TOML Delimiters:** ✅ Resolved ([TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#critical-issues))
- **Template Typo:** ✅ Resolved ([TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#critical-issues))
- **Validation Workflow:** 🟡 Needs documentation ([TODO_BOOTSTRAP.md](../../work/logs/TODO_BOOTSTRAP.md#high-priority))

### Deployment URLs
- **Development:** https://sddevelopment-be.github.io/penguin-pragmatic-patterns/ ([WORKFLOWS.md](../../structure/WORKFLOWS.md#workflow-1-github-pages-deployment))
- **Production:** https://patterns.sddevelopment.be ([WORKFLOWS.md](../../structure/WORKFLOWS.md#workflow-2-production-build))

## File Size Reference

| File | Size | Lines | Purpose |
|------|------|-------|---------|
| REPO_MAP.md | 9.8KB | ~260 | Structure overview |
| SURFACES.md | 9.2KB | ~430 | Integration points |
| CONTEXT_LINKS.md | 11.2KB | ~360 | Agent context |
| WORKFLOWS.md | 12.7KB | ~580 | Build & CI/CD |
| TODO_BOOTSTRAP.md | 13.8KB | ~640 | Tasks & gaps |
| .repo_overview.md | ~3KB | ~60 | Quick reference |
| .repo-structure.md | ~2.5KB | ~55 | Data structure |

## Last Updated

**Index Created:** 2025-11-12  
**By:** Bootstrap Bill Agent  
**Artefacts Version:** 1.0

---

**Navigation:** [← Back to Documentation README](../README.md) | [↑ References Directory](./)
