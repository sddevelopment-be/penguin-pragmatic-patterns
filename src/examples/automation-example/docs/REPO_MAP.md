# Repository Map: Penguin Pragmatic Patterns

> High-level directory structure and purpose for the Penguin Pragmatic Patterns knowledge base.

## Root Configuration & Control Files

```
/
├── config.yaml              # Hugo site configuration (baseURL, taxonomies, module imports)
├── go.mod                   # Hugo module dependencies (hugo-fresh theme)
├── go.sum                   # Hugo module checksums
├── package.json             # Node.js dev dependencies (ESLint tooling)
├── package-lock.json        # Node.js dependency lock file
├── netlify.toml            # Netlify deployment configuration (404 redirects)
├── crowdin.yml             # Localization/translation configuration
├── AGENTS.md               # Repository-specific agent instructions and constraints
├── README.md               # Project overview and getting started guide
├── LICENSE                 # Project license
├── DCO.md                  # Developer Certificate of Origin
└── .gitignore              # Git exclusion rules (public/, resources/, tmp/, node_modules/)
```

**Purpose:** Core configuration files that define the Hugo static site, dependency management, deployment, localization, and project governance.

## Content & Data

```
/content/                    # Hugo Markdown content (locale-specific)
├── en/                     # English content (primary locale)
│   ├── practices/          # 40+ practice articles (UUID-named files + TEMPLATE_PRACTICE.md)
│   ├── concepts/           # 25+ concept articles (UUID-named files + TEMPLATE_CONCEPT.md)
│   ├── books/              # Bibliography entry pages (UUID-named, generated from data/bibliography.toml)
│   ├── glossary/           # Term definition pages (UUID-named, derived from data/glossary.toml)
│   ├── presentations/      # Presentation landing pages
│   ├── tools/              # Tool/application write-ups
│   ├── primers/            # Programming language primers
│   ├── tags/               # Hugo tag taxonomy index pages
│   ├── CONTRIBUTING.md     # Contribution guidelines (site content)
│   ├── LICENSE.md          # License (site content)
│   ├── about.md            # About page
│   └── 404.md              # Error page
├── nl/                     # Dutch translations (fewer entries, mirrors en/ structure)
└── pillars/                # Cross-locale thematic pages (principles, frameworks)

/data/                      # TOML data sources
├── bibliography.toml       # Book and resource references (UUID-keyed, with metadata)
├── bibliography_nl.toml    # Dutch bibliography entries
├── glossary.toml           # Terminology definitions (ALL tags must exist here)
├── glossary_nl.toml        # Dutch glossary terms
├── tools.toml              # Tool/application metadata
├── tools_nl.toml           # Dutch tool entries
└── presentations.toml      # Presentation metadata
```

**Purpose:** Core content organized by locale (English/Dutch), with structured data in TOML format. All practice/concept tags must reference glossary entries. UUIDs provide canonical cross-references.

## Hugo Site Structure

```
/layouts/                   # Hugo template overrides and customizations
├── _default/              # Default layout templates
├── books/                 # Book listing and detail layouts
├── concepts/              # Concept page layouts
├── glossary/              # Glossary page layouts
├── practices/             # Practice page layouts
├── presentations/         # Presentation layouts
├── primers/               # Primer layouts
├── tags/                  # Tag taxonomy layouts
├── tools/                 # Tool page layouts
├── pillars/               # Pillar page layouts
├── partials/              # Reusable template components
├── shortcodes/            # Custom Hugo shortcodes
└── index.html             # Homepage template

/archetypes/               # Hugo content scaffolds
/assets/                   # Source assets (SCSS, JS, images to be processed)
/static/                   # Static files (images, fonts, served as-is)
/resources/                # Hugo generated resources (IGNORED in git)
/public/                   # Hugo build output (~59MB, IGNORED in git)
```

**Purpose:** Hugo theme customizations, layouts, and asset pipeline. Theme base is `hugo-fresh` (loaded via Go modules).

## Source & Tooling

```
/src/                      # Source files and tooling
├── images/                # PlantUML diagram sources (*.puml files)
├── scripts/               # Operational scripts
│   └── ops/              # Build and maintenance scripts
│       ├── generate_books.sh    # Generates book pages from bibliography.toml
│       └── cssMinifier.sh       # CSS optimization script
├── templates/             # Content templates
│   ├── TEMPLATE_PRACTICE.md     # Practice content scaffold
│   ├── TEMPLATE_CONCEPT.md      # Concept content scaffold
│   └── TEMPLATE_PROGRAMMING_PRIMER.md  # Programming primer scaffold
└── examples/              # Example code and projects

/tmp/                      # Draft content (IGNORED in git)
/auto/                     # Automation metadata (IGNORED in git)
/validation/               # Validation scripts and configuration
```

**Purpose:** Source materials, content templates, tooling scripts, and draft staging area. PlantUML diagrams are authored here and rendered to static/images/.

## Documentation & Agent References

```
/docs/                     # Documentation and agent reference files
├── references/            # Agent context and structure notes
│   ├── .repo_overview.md        # Project topology, authoring rules, recent additions
│   ├── .repo-structure.md       # Detailed data/, content/, concepts/ structure notes
│   ├── directive_primer.md      # Directive and instruction guidance
│   └── READER_PERSONAS/         # Target audience definitions
├── REPO_MAP.md            # This file — high-level repository structure
├── SURFACES.md            # Entry points, APIs, and integration surfaces
├── CONTEXT_LINKS.md       # Context file references
└── WORKFLOWS.md           # Build, test, and CI/CD summary

/.github/                  # GitHub-specific configuration
├── agents/                # Agent profile definitions
│   ├── bootstrap-bill.agent.md     # Repository structure agent
│   ├── curator.agent.md            # Content curation agent
│   ├── diagrammer.agent.md         # Diagram generation agent
│   ├── frontend.agent.md           # Frontend/UI agent
│   ├── lexical.agent.md            # Terminology/glossary agent
│   ├── researcher.agent.md         # Research and sourcing agent
│   ├── scribe.agent.md             # Documentation writing agent
│   ├── synthesizer.agent.md        # Content synthesis agent
│   ├── writer-editor.agent.md      # Content editing agent
│   └── architect.agent.md          # Architecture decision agent
├── workflows/             # GitHub Actions CI/CD pipelines
│   ├── hugo.yml                    # Deploy to GitHub Pages (develop branch)
│   ├── hugo_build_site.yml         # Build for production (main branch)
│   ├── cleanup.yml                 # PR branch cleanup
│   ├── update_readme.yml           # README maintenance
│   └── validation.yml              # Content validation
├── CONTRIBUTING.md        # Contribution guidelines (GitHub)
├── FUNDING.yml            # Sponsorship configuration
├── ISSUE_TEMPLATE/        # GitHub issue templates
├── PULL_REQUEST_TEMPLATE.md  # PR template
├── labels.yml             # GitHub label definitions
├── semantic.yml           # Semantic release configuration
└── copilot-instructions.md  # GitHub Copilot context
```

**Purpose:** Agent collaboration infrastructure, CI/CD workflows, contribution guidelines, and bootstrap artefacts for multi-agent orchestration.

## Configuration Files (Detail)

| File | Purpose | Key Points |
|------|---------|------------|
| `config.yaml` | Hugo site config | Base theme: hugo-fresh, taxonomies: tags/categories/levels, baseURL, markup settings |
| `go.mod` | Hugo modules | Theme dependency: github.com/StefMa/hugo-fresh v1.0.0 |
| `package.json` | Node tooling | ESLint dev dependencies for code quality |
| `netlify.toml` | Deployment | 404 redirect configuration |
| `crowdin.yml` | Localization | Translation workflow configuration |
| `.gitignore` | Git exclusions | Excludes: public/, resources/, tmp/, auto/, node_modules/, *.log |
| `.stylelintrc.json` | CSS linting | Stylelint configuration |
| `eslint.config.js` | JS linting | ESLint configuration |

## Key File Counts & Statistics

- **English Pages:** ~352 pages
- **Dutch Pages:** ~21 pages
- **Practices:** 40+ entries
- **Concepts:** 25+ entries
- **Static Files:** ~703 files
- **Build Output Size:** ~59MB (public/ directory)
- **Hugo Version:** 0.152.2 extended (CRITICAL: must use extended for SCSS support)

## Directory Access Patterns

**For Content Authors:**
- Work in `content/en/` (or `content/nl/` for Dutch)
- Reference templates in `src/templates/`
- Ensure tags exist in `data/glossary.toml` BEFORE use
- Generate UUIDs with `uuidgen` command

**For Developers:**
- Build scripts in `src/scripts/`
- CI/CD workflows in `.github/workflows/`
- Theme customizations in `layouts/` and `assets/`

**For Agents:**
- Context in `docs/references/` and `.github/agents/`
- Bootstrap artefacts in `docs/` (REPO_MAP, SURFACES, CONTEXT_LINKS, WORKFLOWS)
- Track tasks in `docs/references/TODO_BOOTSTRAP.md`

## Build Outputs (IGNORED)

- `/public/` — Hugo build output (~59MB)
- `/resources/_gen/` — Hugo generated resources
- `/tmp/` — Draft content
- `/auto/` — Automation metadata
- `node_modules/` — Node.js dependencies
- `package-lock.json` — Auto-generated lock file

---

**Last Updated:** 2025-11-12  
**Hugo Version:** 0.152.2 extended  
**Theme:** hugo-fresh v1.0.0  
**Primary Locale:** English (en)  
**Secondary Locale:** Dutch (nl)
