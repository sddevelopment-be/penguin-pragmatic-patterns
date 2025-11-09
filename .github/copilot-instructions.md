# Copilot Instructions: Penguin Pragmatic Patterns

## Repository Overview

**Penguin Pragmatic Patterns** is a Hugo-based static site containing a public knowledge base focused on practical techniques, decision frameworks, concepts, and mindset shifts for technical professionals and knowledge workers. The repository serves as a "personal wiki" collecting knowledge from various sources with personal interpretations and experiences.

**Key Stats:**
- **Type:** Hugo static site documentation project
- **Size:** ~350 English pages, 21 Dutch pages, 40+ practices, 25+ concepts
- **Languages:** Go modules (Hugo), Markdown, TOML, Bash scripts, PlantUML diagrams
- **Deployment:** Dual environment - GitHub Pages (develop branch) and production (main branch via Netlify)
- **Hugo Version:** 0.118.2 extended (CRITICAL: must use extended version for SCSS support)

## Build & Development Workflow

### Prerequisites & Installation

**ALWAYS install Hugo extended version 0.118.2** before any build operations:
```bash
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.118.2/hugo_extended_0.118.2_linux-amd64.deb
sudo dpkg -i /tmp/hugo.deb
hugo version  # Verify: should show "extended"
```

**Hugo modules are required** - on first build, Hugo will automatically download the theme:
```bash
hugo mod graph  # Downloads github.com/StefMa/hugo-fresh theme (takes ~12 seconds)
```

### Build Commands (In Order)

**1. Clean Build (Production):**
```bash
hugo --gc --minify --buildDrafts=false
```
- Duration: ~900ms-1s
- Output: `public/` directory (~59MB)
- Generates: 352 EN pages, 21 NL pages, 703 static files
- **WARNING:** Default build includes draft files which may have syntax errors. Use `--buildDrafts=false` for CI/production builds.

**2. Local Development Server:**
```bash
hugo server --bind 0.0.0.0
```
- Starts on http://localhost:1313
- Auto-reloads on file changes
- Watches: archetypes, assets, content, data, layouts, static, config.yaml, go.mod
- Build time: ~170ms per rebuild

**3. Build with Drafts (Development):**
```bash
hugo --gc --minify --buildDrafts=true
```
- Use for testing draft content locally
- Some draft files may have incomplete TOML front matter

### Known Build Issues & Workarounds

**TOML Delimiter Issues in Draft Files:**
- Some draft practice files have `++ ` or `++` instead of `+++` in front matter delimiters
- Affected files: `communication_channel_compression.md`, `easy_to_change.md`, `rotating_meeting_roles.md`, `the_hat_you_wear.md`
- **Workaround:** Use `--buildDrafts=false` for CI builds OR fix delimiters to `+++`
- Error message: "invalid TOML delimiter" or "EOF looking for end TOML front matter delimiter"

**Missing JSON Layout Warning:**
- Warning: "found no layout file for 'json' for kind 'section'"
- **Safe to ignore** - this is expected as JSON output is optional

## Repository Structure

### Content Organization

```
/content/
├── en/                          # English content (primary)
│   ├── practices/              # 40+ practice files (UUID filenames + TEMPLATE_PRACTICE.md)
│   ├── concepts/               # 25+ concept files (TEMPATE_CONCEPT.md with typo in name)
│   ├── books/                  # Bibliography entries (UUID-named files)
│   ├── glossary/               # Term definitions (UUID-named files)
│   ├── presentations/          # Slide deck landing pages
│   ├── tools/                  # Tool/app write-ups
│   ├── programming_primers/    # Programming language guides
│   └── CONTRIBUTING.md         # Contribution guide
├── nl/                         # Dutch translations (fewer entries)
└── pillars/                    # Cross-locale thematic pages
```

### Configuration & Data Files

```
/
├── config.yaml                 # Main Hugo configuration (baseURL, taxonomies, params)
├── go.mod                      # Hugo module dependencies (hugo-fresh theme)
├── netlify.toml               # Netlify deployment config (404 redirects only)
├── crowdin.yml                # Localization configuration
└── /data/                     # TOML data files
    ├── glossary.toml          # Terminology definitions (ALL tags must exist here)
    ├── bibliography.toml      # Book/resource references with UUIDs
    ├── tools.toml             # Tool/app metadata
    └── presentations.toml     # Presentation metadata
```

### Source Assets

```
/src/
├── images/                    # PlantUML diagrams (*.puml files)
├── scripts/ops/               # Operational scripts
│   ├── generate_books.sh     # TOML → Markdown book page generator
│   └── cssMinifier.sh        # CSS optimization
├── templates/                 # Content templates
└── examples/                  # Example code/projects
```

### Generated & Ignored Directories

```
/public/                       # Hugo build output (59MB, gitignored)
/resources/_gen/               # Hugo generated resources (gitignored)
/tmp/                          # Draft content (gitignored)
/auto/                         # Automation metadata (gitignored)
```

## Content Authoring Rules

### Front Matter Requirements

**ALL practice files must use TOML front matter with `+++` delimiters:**
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
    {name = "minimal", delta = "0.3", rationale = "..."},
    {name = "maintainable", delta = "0.4", rationale = "..."},
    {name = "environmental", delta = "0.2", rationale = "..."},
    {name = "reachable", delta = "0.3", rationale = "..."},
    {name = "solvable", delta = "0.3", rationale = "..."},
    {name = "extensible", delta = "0.2", rationale = "..."}
]
related_concepts = []
related_practices = []
further_exploration = []
image = "practices/image_name.webp"
pubdate = "2024-06-05"
+++
```

**Required Practice Sections (from TEMPLATE_PRACTICE.md):**
1. Problem statement
2. Intent
3. Solution
4. Contextual forces (with Enablers and Deterrents subsections)
5. Rationale
6. Application (with Consequences and Mitigation strategies)
7. Examples

**Category Restrictions:**
- Practice categories must be ONE of: `learning`, `productivity`, `communication`, `software development`

**Tag Validation Rule:**
- **CRITICAL:** Every tag in `tags = [...]` MUST have a corresponding entry in `data/glossary.toml`
- When adding new tags, create glossary entry FIRST, then add to content

### Working with Glossary

Glossary entries in `data/glossary.toml`:
```toml
[[terminology]]
name = "Tag Name"
domain = "Domain Area"
description = "Definition with optional <br /> HTML"
aliases = ["alternative-name"]  # Optional
references = []  # Optional
```

### UUID Generation

Generate UUIDs for new content:
```bash
uuidgen  # Use this for uuid field and filename
```

### Localization

- **Default:** Work on English content in `content/en/` unless explicitly asked for Dutch
- Dutch content in `content/nl/` mirrors English structure but has fewer files
- Glossary, bibliography, tools have separate `*_nl.toml` files

### Hugo Shortcodes in Content

Common shortcodes used:
- `{{< stub text="Placeholder text" >}}` - Marks incomplete sections
- Image references use Hugo's image processing

## GitHub Actions CI/CD

### Workflows

**1. `hugo.yml` (develop branch → GitHub Pages):**
- Trigger: Push to `develop` branch
- Hugo version: 0.118.2 extended
- Installs: Dart Sass via snap
- Runs: `npm ci` (if package-lock.json exists)
- Build: `hugo --gc --minify --baseURL <github-pages-url>`
- Deploys to: https://sddevelopment-be.github.io/penguin-pragmatic-patterns/

**2. `hugo_build_site.yml` (main branch → Production):**
- Trigger: Push to `main` branch
- Same build process as hugo.yml
- Uploads artifact: `patterns-site` for external deployment
- Production URL: https://patterns.sddevelopment.be

**3. `cleanup.yml`:**
- Trigger: PR closed
- Automatically deletes merged PR branches

**4. `update_readme.yml`:**
- Updates README.md with changelog content
- Auto-commits changes

### CI Build Requirements

**To replicate CI builds locally:**
```bash
# 1. Install Hugo extended 0.118.2
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.118.2/hugo_extended_0.118.2_linux-amd64.deb
sudo dpkg -i /tmp/hugo.deb

# 2. Install Dart Sass (optional, for SCSS processing)
sudo snap install dart-sass

# 3. Checkout with submodules
git submodule update --init --recursive

# 4. Install Node dependencies (if package-lock.json exists)
[[ -f package-lock.json ]] && npm ci || true

# 5. Build
hugo --gc --minify --buildDrafts=false --baseURL "https://your-url/"
```

**Build Time Expectations:**
- Hugo module download: ~12 seconds (first time only)
- Clean build: ~900ms-1s
- With drafts: ~170-200ms

## Git Configuration

**GPG Signing:**
- GPG signing is BLOCKED in sandboxed environments
- Use `git commit --no-gpg-sign` if GPG errors occur
- AGENTS.md mentions this constraint explicitly

**Submodules:**
- `.gitmodules` lists theme submodules (legacy, now using Hugo modules)
- May be outdated - Hugo modules in `go.mod` take precedence

**Ignored Files (.gitignore):**
```
public/              # Build output
resources/_gen/      # Generated resources
node_modules/        # Node dependencies
package-lock.json    # Auto-generated
tmp/                 # Drafts
auto/                # Automation metadata
*.class, *.log       # Build artifacts
```

## Special Files & Conventions

### Agent Context Files (`.agents/`)

**Read these files for repository-specific context:**
- `.agents/.repo_overview.md` - Project topology, authoring rules, recent additions
- `.agents/.repo-structure.md` - Detailed structure notes for data/, content/, concepts/
- `.agents/READER_PERSONAS/` - Target audience definitions

**Key rules from `.agents/.repo_overview.md`:**
- Practice `categories` must be one of: learning, productivity, communication, software development
- Tags MUST exist in `data/glossary.toml` before use
- UUID required for all practices/concepts
- Consistency passes normalize tags and sections to match templates

### Templates

- `content/en/practices/TEMPLATE_PRACTICE.md` - Practice template scaffold
- `content/en/concepts/TEMPATE_CONCEPT.md` - Concept template (note typo in filename!)

### Documentation

- `README.md` - Main project description
- `.github/CONTRIBUTING.md` - Contribution workflow
- `content/en/CONTRIBUTING.md` - Same as .github version
- `AGENTS.md` - High-level agent instructions (instruction hierarchy, constraints)

## Validation Checklist

Before submitting changes:

**1. Content Validation:**
- [ ] All new tags exist in `data/glossary.toml`
- [ ] Front matter has valid TOML with `+++` delimiters (not `++` or `++ `)
- [ ] UUIDs generated with `uuidgen` and added to aliases
- [ ] Practice categories are one of the four allowed values
- [ ] Required sections present (Problem statement, Intent, Solution, etc.)

**2. Build Validation:**
```bash
hugo --gc --minify --buildDrafts=false  # Should complete in ~1s with no errors
```

**3. Local Preview:**
```bash
hugo server  # Verify pages render correctly at localhost:1313
```

**4. Git Status:**
```bash
git status  # Ensure no unintended files (public/, resources/_gen/, tmp/)
```

## Common Tasks

### Adding a New Practice

```bash
# 1. Generate UUID
UUID=$(uuidgen)

# 2. Create file
cp content/en/practices/TEMPLATE_PRACTICE.md "content/en/practices/your_practice_name.md"

# 3. Edit front matter (use generated UUID)
# 4. Add any new tags to data/glossary.toml FIRST
# 5. Fill in all required sections
# 6. Build to verify
hugo --buildDrafts=false

# 7. For hero image (optional)
# Place in static/images/practices/your_practice_name.webp
```

### Adding a New Book Reference

```bash
# 1. Edit data/bibliography.toml
# 2. Run generator script
bash src/scripts/ops/generate_books.sh data/bibliography.toml

# 3. Verify generated file in content/en/books/
```

### Updating Glossary

```bash
# Edit data/glossary.toml
[[terminology]]
name = "Your Term"
domain = "software development"
description = "Clear definition"
```

### Working with PlantUML Diagrams

```bash
# Source files: src/images/*.puml
# Rendered SVG: static/images/practices/*.svg or static/images/concepts/*.svg
# Reference in markdown: image="practices/diagram_name.svg"
```

## Troubleshooting

### "invalid TOML delimiter" Error
**Cause:** Front matter uses `++` or `++ ` instead of `+++`
**Fix:** Ensure first and last lines of front matter are exactly `+++`

### "EOF looking for end TOML front matter delimiter"
**Cause:** Missing closing `+++` delimiter
**Fix:** Add `+++` line after front matter, before markdown content

### "No such tag in glossary" (Build Warning)
**Cause:** Tag used in content doesn't exist in `data/glossary.toml`
**Fix:** Add term to glossary FIRST, then use in content tags

### Build Hangs or Timeout
**Cause:** Hugo downloading modules on first build
**Expected:** ~12 seconds for module download
**Fix:** Increase timeout to 60+ seconds or pre-run `hugo mod graph`

### "found no layout file for 'json'" Warning
**Safe to Ignore:** This warning is expected and harmless

## Performance Notes

- **Hugo build:** 900ms-1s (production), 170-200ms (incremental)
- **Hugo module download:** ~12 seconds (first time only)
- **Public directory size:** ~59MB
- **Total pages:** 373 (352 EN + 21 NL)
- **Static files:** 703 files

## External References

- **Hugo Documentation:** https://gohugo.io/documentation/
- **Theme:** github.com/StefMa/hugo-fresh (auto-loaded via Hugo modules)
- **Live Sites:**
  - Development: https://sddevelopment-be.github.io/penguin-pragmatic-patterns/
  - Production: https://patterns.sddevelopment.be
- **Parent Organization Template:** https://github.com/sddevelopment-be/templates/tree/main/agents

## Trust These Instructions

**IMPORTANT:** This file was created through comprehensive repository exploration, build testing, and validation. Trust the information here and only perform additional searches if:
1. Information is incomplete or ambiguous
2. Information is found to be incorrect
3. You need details about specific content not covered here

When in doubt about structure or conventions, refer to existing files in the repository that follow the patterns described here.
