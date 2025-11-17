# Integration Surfaces: Penguin Pragmatic Patterns

> Entry points, public APIs, CLIs, adapters, and integration surfaces for the Penguin Pragmatic Patterns repository.

## Primary Surface: Hugo Static Site Generator

**Type:** Static Site Generator (Hugo-based)  
**Entry Point:** `config.yaml`  
**Build Command:** `hugo --gc --minify`  
**Dev Server:** `hugo server --bind 0.0.0.0`  
**Output:** `/public/` directory (~59MB)

### Build Surface

```bash
# Production build
hugo --gc --minify --buildDrafts=false

# Development build with drafts
hugo --gc --minify --buildDrafts=true

# Local preview server
hugo server --bind 0.0.0.0
```

**Build Requirements:**
- Hugo v0.152.2 extended (CRITICAL: extended version required for SCSS/Sass support)
- Node.js (optional, for ESLint tooling)
- Dart Sass (installed via snap in CI/CD)

**Build Outputs:**
- HTML pages: ~373 total (352 EN + 21 NL)
- Static assets: ~703 files
- Total size: ~59MB

### Hugo Module Surface

**Module Definition:** `go.mod`
```go
module patterns

require (
    github.com/StefMa/hugo-fresh v1.0.0
    github.com/jgthms/bulma v0.0.0-20230818164217-fa1d448c1f5b
)
```

**Theme Loading:**
- Auto-downloaded via `hugo mod graph` (~12 seconds on first run)
- No git submodules required
- Cached in Hugo module cache

## Content Data Surfaces

### TOML Data Files (Read-Only Surface)

**Location:** `/data/*.toml`

**Files:**
1. `data/glossary.toml` — Terminology definitions
   - Structure: `[[terminology]]` tables
   - Fields: `name`, `domain`, `description`, `aliases`, `references`
   - **CRITICAL:** All content tags MUST exist here

2. `data/bibliography.toml` — Book/resource references
   - Structure: `[[book]]` tables
   - Fields: `id` (UUID), `title`, `authors`, `publisher`, `year`, `link`, `image`, `levels`, `tags`, `description`
   - Used by: `src/scripts/ops/generate_books.sh`

3. `data/tools.toml` — Tool/app metadata
   - Structure: `[[tool]]` tables
   - Fields: `id`, `title`, `description`, `link`, classification metadata

4. `data/presentations.toml` — Presentation metadata
   - Structure: Presentation assets and metadata

**Localized Variants:**
- `*_nl.toml` files for Dutch content
- Same structure as English versions

### Content Generation Scripts

**1. Book Page Generator**
- **Script:** `src/scripts/ops/generate_books.sh`
- **Input:** `data/bibliography.toml`
- **Output:** `content/en/books/*.md` (UUID-named files)
- **Usage:** `bash src/scripts/ops/generate_books.sh data/bibliography.toml`

**2. CSS Minifier**
- **Script:** `src/scripts/ops/cssMinifier.sh`
- **Purpose:** CSS optimization

## CI/CD Integration Surfaces

### GitHub Actions Workflows

**Location:** `.github/workflows/`

#### 1. GitHub Pages Deployment (`hugo.yml`)

**Trigger:** Push to `develop` branch  
**Purpose:** Deploy to GitHub Pages (development environment)  
**Outputs:** https://sddevelopment-be.github.io/penguin-pragmatic-patterns/

```yaml
Build Process:
- Install Hugo v0.152.2 extended
- Install Dart Sass
- Checkout with submodules
- Install Node.js dependencies (if package-lock.json exists)
- Build: hugo --gc --minify --baseURL <github-pages-url>
- Upload artifact: github-pages
- Deploy to GitHub Pages
```

#### 2. Production Build (`hugo_build_site.yml`)

**Trigger:** Push to `main` branch  
**Purpose:** Build for production deployment  
**Outputs:** Build artifact `patterns-site`  
**Production URL:** https://patterns.sddevelopment.be

```yaml
Build Process:
- Install Hugo v0.152.2 extended
- Install Dart Sass
- Checkout with submodules
- Install Node.js dependencies (if package-lock.json exists)
- Build: hugo --gc --minify --baseURL $PRODUCTION_SITE_URL
- Upload artifact: patterns-site
```

#### 3. Cleanup Workflow (`cleanup.yml`)

**Trigger:** PR closed  
**Purpose:** Auto-delete merged PR branches

#### 4. README Update (`update_readme.yml`)

**Purpose:** Maintain README.md with changelog content  
**Action:** Auto-commit changes

#### 5. Validation (`validation.yml`)

**Purpose:** Content validation and quality checks

### Netlify Deployment Surface

**Configuration:** `netlify.toml`

```toml
# 404 Redirects
[[redirects]]
from = "/*"
to = "/404.html"
status = 404
```

**Deployment:**
- Production site: https://patterns.sddevelopment.be
- Build command configured externally (uses `hugo_build_site.yml` artifact)

## Development Tools Surface

### Linting & Code Quality

**ESLint Configuration:** `eslint.config.js`
- Dependencies in `package.json`: `@eslint/js`, `@eslint/eslintrc`, `globals`
- Purpose: JavaScript code quality

**Stylelint Configuration:** `.stylelintrc.json`
- Purpose: CSS/SCSS linting

### Package Management

**Node.js:** `package.json`, `package-lock.json`
- Dev dependencies for linting tools
- No runtime dependencies

**Hugo Modules:** `go.mod`, `go.sum`
- Theme and component dependencies
- Auto-managed by Hugo

## Content Creation Surfaces

### Content Templates

**Location:** `src/templates/`

**Templates:**
1. `TEMPLATE_PRACTICE.md` — Practice content scaffold
   - Sections: Problem, Intent, Solution, Contextual Forces, Rationale, Application, Examples
   - Front matter: UUID, categories, tags, AMMERSE deltas

2. `TEMPLATE_CONCEPT.md` — Concept content scaffold
   - Sections: Definition, Key Components, Background, Examples, Further Exploration
   - Front matter: UUID, categories, tags, related items

3. `TEMPLATE_PROGRAMMING_PRIMER.md` — Programming primer scaffold

### Front Matter Requirements

**TOML Front Matter (Practice):**
```toml
+++
title = "Practice Name"
author = "Stijn Dejongh"
draft = false
problem = "Problem description"
description = "Short description"
summary = """Multi-line summary"""
categories = ["learning", "productivity", "communication", "software development"]
tags = ["tag1", "tag2"]  # MUST exist in data/glossary.toml
uuid = "GENERATE-WITH-uuidgen"
aliases = ["uuid"]
outputs = ['html', 'json']
ammerse = [
    {name = "agile", delta = "0.5", rationale = "Why this affects agility"},
    # ... (7 AMMERSE dimensions)
]
related_concepts = []
related_practices = []
further_exploration = []
image = "practices/image_name.webp"
pubdate = "2024-06-05"
+++
```

**Category Restrictions:**
- Practice categories must be ONE of: `learning`, `productivity`, `communication`, `software development`

**Tag Validation:**
- **CRITICAL:** Every tag must have a corresponding entry in `data/glossary.toml`
- Workflow: Create glossary entry FIRST, then add tag to content

### UUID Generation

```bash
uuidgen  # Generate UUID for new content
```

## Diagram Generation Surface

### PlantUML Source

**Location:** `src/images/*.puml`  
**Output:** `static/images/practices/*.svg` or `static/images/concepts/*.svg`

**Workflow:**
1. Author diagram in `src/images/diagram_name.puml`
2. Render to SVG (manual or automated)
3. Reference in markdown: `image = "practices/diagram_name.svg"`

## Localization Surface

### Crowdin Integration

**Configuration:** `crowdin.yml`  
**Locales:**
- Primary: English (`en`)
- Secondary: Dutch (`nl`)

**Translation Workflow:**
- Content in `content/en/` → `content/nl/`
- Data in `data/*.toml` → `data/*_nl.toml`

### Locale Structure

**English (Primary):**
- 352 pages
- Full content coverage
- All templates and examples

**Dutch (Secondary):**
- 21 pages
- Partial coverage
- Many placeholders awaiting translation

## API & Data Query Surfaces

### Hugo Outputs

**Configured in `config.yaml`:**
```yaml
outputs:
  home: [HTML, RSS]
  section: [HTML]
  page: [HTML]
  taxonomy: [HTML]
  term: [HTML]
```

**Some pages output JSON:**
- Configured via front matter: `outputs = ['html', 'json']`
- Used for API-like access to structured data

### Taxonomies

**Defined in `config.yaml`:**
```yaml
taxonomies:
  category: "categories"
  tag: "tags"
  level: "levels"
```

**Usage:**
- Automatic tag pages generated in `content/en/tags/`
- Cross-linking via Hugo's taxonomy system

## Integration Points Summary

| Surface Type | Entry Point | Output | Consumers |
|--------------|-------------|--------|-----------|
| **Build** | `hugo` CLI | `/public/` | GitHub Pages, Netlify |
| **Data** | `data/*.toml` | Content pages | Hugo templates, scripts |
| **CI/CD** | `.github/workflows/` | Build artifacts | GitHub Actions, Netlify |
| **Content** | `content/*/` | HTML pages | Site visitors |
| **Modules** | `go.mod` | Theme files | Hugo build |
| **Linting** | `eslint.config.js`, `.stylelintrc.json` | Quality reports | Developers |
| **Scripts** | `src/scripts/ops/` | Generated content | Build process |
| **Diagrams** | `src/images/*.puml` | SVG files | Content pages |
| **Localization** | `crowdin.yml` | Translated content | Hugo multilingual |

## External Dependencies

**Required:**
- Hugo v0.152.2 extended
- Git (for module management)

**Optional:**
- Node.js + npm (for linting tools)
- Dart Sass (for advanced SCSS, installed in CI)
- PlantUML (for diagram generation)

**Network Dependencies:**
- GitHub (for hugo-fresh theme module)
- NPM registry (for dev dependencies)

---

**Last Updated:** 2025-11-12  
**Primary Build:** Hugo static site generation  
**Deployment:** Dual (GitHub Pages + Netlify)  
**Content Format:** Markdown with TOML front matter
