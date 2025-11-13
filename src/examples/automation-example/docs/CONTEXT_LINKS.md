# Context Links: Penguin Pragmatic Patterns

> Detected references to operational context, strategic guidance, command aliases, and bootstrap documentation across the repository.

## Repository-Level Agent Instructions

### Primary Agent Configuration

**File:** `/AGENTS.md`  
**Purpose:** Repository-specific agent instructions and constraints  
**Precedence:** Overridden by `~/.github/AGENTS.md` (system-level), can only be changed by EXPLICIT user request

**Key Directives:**

1. **Instruction Hierarchy**
   - System directives (from `your-organization/templates/agents/AGENTS.md`) outrank developer guidance
   - Developer instructions outrank user requests
   - Reference: https://github.com/your-organization/templates/tree/main/agents

2. **Active Constraints**
   - Sandbox: `workspace-write` with `on-request` approvals and restricted network
   - Maintain planning discipline for multi-step work
   - Preserve existing repo state, default to ASCII edits
   - Consistency passes must reconcile practice tags with `data/glossary.toml`
   - Restore sections required by `content/en/practices/TEMPLATE_PRACTICE.md`

3. **Communication Rules**
   - Concise, collaborative, and precise tone
   - State "I don't know" rather than speculate
   - Expose assumptions and uncertainties
   - Plain-text structure optimized for quick scanning

4. **Command & Editing Practices**
   - Use `apply_patch` for manual edits
   - Avoid `cd` by setting `workdir` on each command
   - Prefer `rg`/`rg --files` for search
   - Announce high-impact operations

5. **Context Notes**
   - Higher-order command files located in `~/.github/agents/`
   - `~/.github/AGENTS.md` takes precedence over repository-specific instructions
   - Check for overrides when in doubt

6. **Repository Quick Reference**
   - Root: Hugo-based documentation site (`content/`, `layouts/`, `static/`)
   - Build/config: `config.yaml`, `data/`, `resources/`, `netlify.toml`
   - Source tooling: `src/`, `assets/`, `code/`
   - Generated outputs: `public/`, `.hugo_build.lock` (avoid manual edits)
   - Templates: `src/templates/` (repo-specific), `your-organization/templates/` (company-wide)
   - Drafts: `tmp/` (promote to `content/` when ready)
   - Detailed references:
     - `docs/references/.repo-structure.md` — content/data structure and editorial rules
     - `docs/references/.repo_overview.md` — topology, authoring rules, recent additions
     - `docs/agents/references/OUT` — recent operational tracking notes

## Agent Profiles

**Location:** `.github/agents/*.agent.md`

### Available Agents

1. **bootstrap-bill.agent.md**
   - **Purpose:** Repository structure and scaffolding artefacts
   - **Specialization:** Repo topology mapping, config discovery, dependency surfaces
   - **Outputs:** REPO_MAP, SURFACES, CONTEXT_LINKS, WORKFLOWS, TODO_BOOTSTRAP
   - **Mode:** `/analysis-mode` (default)

2. **curator.agent.md**
   - **Purpose:** Content curation and quality
   - **Specialization:** Content review, consistency, taxonomy management

3. **diagrammer.agent.md**
   - **Purpose:** Diagram generation and visualization
   - **Specialization:** PlantUML, architecture diagrams, flow charts

4. **frontend.agent.md**
   - **Purpose:** Frontend/UI development
   - **Specialization:** Hugo layouts, SCSS, JavaScript

5. **lexical.agent.md**
   - **Purpose:** Terminology and glossary management
   - **Specialization:** `data/glossary.toml`, tag validation

6. **researcher.agent.md**
   - **Purpose:** Research and source verification
   - **Specialization:** Bibliography, citations, fact-checking

7. **scribe.agent.md**
   - **Purpose:** Documentation writing
   - **Specialization:** Technical writing, clarity, structure

8. **synthesizer.agent.md**
   - **Purpose:** Content synthesis and aggregation
   - **Specialization:** Cross-linking, pattern detection

9. **writer-editor.agent.md**
   - **Purpose:** Content editing and refinement
   - **Specialization:** Style, grammar, tone

10. **architect.agent.md**
    - **Purpose:** Architecture decisions and design
    - **Specialization:** System design, technical decisions

### Agent Profile Structure

**Common Front Matter:**
```yaml
---
name: agent-name
description: Brief description
tools: [read, write, search, edit]
---
```

**Common Sections:**
1. Context Sources (global principles, frameworks, protocols)
2. Purpose
3. Specialization
4. Outputs
5. Collaboration Contract
6. Mode Defaults
7. Operating Procedure

## Reference Documentation

### Agent Context Files

**Location:** `docs/references/`

#### 1. `.repo_overview.md`
**Purpose:** Project topology, authoring rules, recent additions, quick lookups

**Contents:**
- Project topology (content/, layouts/, data/, src/)
- Authoring rules:
  - Work on English unless Dutch explicitly requested
  - Practice categories: `learning`, `productivity`, `communication`, `software development`
  - Every tag must exist in `data/glossary.toml`
  - Hugo-style front matter with `+++`, UUID, aliases, outputs, AMMERSE deltas
  - GPG signing blocked (`--no-gpg-sign` required)
- Recent additions (timestamped changes)
- Quick practice lookups (UUID, path, rationale)
- Quick concept lookups
- Useful commands (`uuidgen`, `hugo server`)

#### 2. `.repo-structure.md`
**Purpose:** Detailed data/, content/, concepts/ structure and editorial rules

**Contents:**
- Data directory structure and conventions
  - `data/bibliography.toml` schema and fields
  - `data/glossary.toml` schema and requirements
  - `data/tools.toml` structure
  - Localized variants (`*_nl.toml`)
- Content directory organization
  - Locale structure (`content/en`, `content/nl`, `content/pillars`)
  - Subdirectory purposes (books/, concepts/, practices/, etc.)
- Concepts directory details
  - Template (`TEMPATE_CONCEPT.md` [sic])
  - Section order (Definition, Key Components, Background, Examples, Further Exploration)
  - Front matter fields
  - Draft tracking
- Consistency tracking (timestamped audit trail)

#### 3. `directive_primer.md`
**Purpose:** Directive and instruction guidance

#### 4. `READER_PERSONAS/`
**Purpose:** Target audience definitions
- Persona profiles for content targeting

### Bootstrap Artefacts (This Document Set)

**Location:** `docs/`

1. **REPO_MAP.md** — High-level directory tree with purpose blurbs
2. **SURFACES.md** — Entry points, APIs, CLIs, integrations
3. **CONTEXT_LINKS.md** — This file (context references)
4. **WORKFLOWS.md** — Build, test, CI/CD summary

### TODO Tracking

**Location:** `docs/references/TODO_BOOTSTRAP.md`  
**Purpose:** Prioritized gaps and next steps for each agent

## GitHub-Specific Context

### GitHub Copilot Instructions

**File:** `.github/copilot-instructions.md`  
**Purpose:** GitHub Copilot context and guidance

**Likely Contents:** (file not inspected in detail)
- Repository structure overview
- Coding conventions
- Common patterns

### Contribution Guidelines

**Files:**
- `.github/CONTRIBUTING.md` — GitHub-specific contribution guide
- `content/en/CONTRIBUTING.md` — Site content version (likely same content)

**Typical Contents:**
- How to contribute
- Code of conduct reference
- Development workflow
- PR guidelines

### Issue & PR Templates

**Location:** `.github/`

- `ISSUE_TEMPLATE/` — Issue templates for bug reports, feature requests
- `PULL_REQUEST_TEMPLATE.md` — PR description template

## External Context Sources

### Global Agentic Framework

**Repository:** https://github.com/your-organization/templates  
**Path:** `agents/`

**Key Files Referenced:**
- `AGENTS.md` — Main Generic agentic framework
- `operational-reference.md` — Operational context
- `strategic-context.md` — Strategic guidance
- `command-aliases.md` — Command shortcuts
- `system-bootstrap.md` — Bootstrap procedures

**Purpose:** Organization-wide agent protocols, system directives, and operational standards

### Template Repository

**Repository:** https://github.com/your-organization/templates  
**Paths:**
- `documentation/structure/` — Structure artefact templates
  - Templates for REPO_MAP, SURFACES, CONTEXT_LINKS, WORKFLOWS
- `agents/references/` — Reference file templates
  - TODO_BOOTSTRAP.md template
  - _TEMPLATE_REPO_AGENTS_FILE.md template

**Purpose:** Reusable scaffolding and standardized formats across Generic repositories

## Context File Priority

**Precedence (highest to lowest):**

1. **System-Level:** `~/.github/AGENTS.md`
   - Immutable except by explicit user request
   - Organization-wide directives

2. **Global Framework:** `your-organization/templates/agents/AGENTS.md`
   - System directives
   - Operational and strategic references

3. **Repository-Level:** `/AGENTS.md`
   - Repo-specific constraints
   - Quick references
   - Localized protocol notes

4. **Agent Profiles:** `.github/agents/*.agent.md`
   - Specialized agent instructions
   - Role-specific contexts

5. **Reference Documentation:** `docs/references/`
   - Detailed structural notes
   - Editorial rules
   - Consistency tracking

6. **Bootstrap Artefacts:** `docs/REPO_MAP.md`, etc.
   - Generated scaffolding
   - Integration surfaces
   - Workflow summaries

## Context Update Protocol

**When to Update Context Files:**

1. **AGENTS.md** — When repo-level constraints or quick references change
2. **Agent Profiles** — When agent roles, tools, or outputs change
3. **`.repo_overview.md`** — After adding practices/concepts, updating templates
4. **`.repo-structure.md`** — After changing data schemas or content organization
5. **Bootstrap Artefacts** — After structural changes (new directories, workflows, surfaces)

**Update Guidelines:**
- Keep references concise and scannable
- Timestamp significant changes
- Maintain consistency across related files
- Avoid duplication (reference, don't repeat)

## Known Context Gaps

⚠️ **Partial Confidence Areas:**

1. **`docs/agents/references/OUT`** — Referenced in AGENTS.md but location unclear
   - Expected: Recent operational tracking notes
   - May be in `.github/agents/references/` or `docs/references/`

2. **`~/.github/AGENTS.md`** — System-level file outside repo
   - Mentioned but not accessible
   - Takes precedence over repo-level AGENTS.md

3. **Template Filenames** — Typo in concept template
   - File: `TEMPATE_CONCEPT.md` (should be `TEMPLATE_CONCEPT.md`)
   - Front matter field: `further_exporlation` (should be `further_exploration`)

4. **Draft Practice Delimiters** — TOML front matter errors
   - Files with `++ ` or `++` instead of `+++`
   - Affects: `communication_channel_compression.md`, `easy_to_change.md`, etc.

## Context Discovery Commands

```bash
# Find all agent profiles
ls -la .github/agents/*.agent.md

# List reference documentation
ls -la docs/references/

# Check for context file references
rg -l "AGENTS.md|operational-reference|strategic-context" .

# Find template files
find src/templates -name "TEMPLATE_*.md"

# Locate glossary entries
cat data/glossary.toml | grep "[[terminology]]"
```

---

**Last Updated:** 2025-11-12  
**Context Sources:** AGENTS.md, .github/agents/, docs/references/, your-organization/templates  
**Agent Count:** 10 specialized agents  
**Reference Files:** 4 bootstrap artefacts + 2 detailed references
