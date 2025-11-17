# Primer Series — Vision

## Overview

**Purpose**: fast, applied fluency. Primers bring readers up to speed quickly through structure, examples, and minimal theory.

**Families**

- Programming Languages — expression/idioms
- Markup & Diagramming — communication
- Toolchain & Automation — delivery/repro
- Architectural — system shapes
- Algorithmic — problem-shape literacy

**Tone**: calm, precise, practical. Prefer examples over abstractions. Avoid hype and overlong prose.

**Done means**

- Uses the family template
- Clear “when to use / trade-offs”
- One diagram or code snippet only (keep it small)
- Links to 2–5 authoritative resources
- Builds locally; links/diagrams render

**Out of scope**

- Full courses, deep theory, exhaustive surveys
- Tool fanboyism; framework wars

**Navigation**

- `/primers/_index.md` gives the series overview
- Each family has its own index that lists its primers

## Desired Structure

### Content

```
content/en/primers/
    /programming-languages/
    /markup-and-diagramming/
    /toolchain-and-automation/
    /architectural/
    /algorithmic/
    _index.md   
```

## Templates

```
templates/
  primer-template.md       # per-primer template (generic)
  architectural-template.md
  algorithmic-template.md
  markup-template.md
  toolchain-template.md
```

## Category Overview

### Programming Language Primers

**Purpose:**
To provide developers with fast, reliable orientation when entering a new programming language ecosystem.
They teach philosophy, idioms, and meta-systems, rather than syntax alone.

**Positioning:**
Forms the foundation layer of technical fluency — the bridge between theoretical knowledge and real-world code.

**Template:**
[/templates/primers/TEMPLATE_PROGRAMMING_PRIMER.md](../templates/primers/TEMPLATE_PROGRAMMING_PRIMER.md)

**Envisioned Contents:**
Python, Rust, Perl, Go, Kotlin, Java, C#, JavaScript/TypeScript, Lisp, Prolog, Haskell, C, Eiffel, Smalltalk, Groovy
(possibly expanding into language families or paradigms over time).

### Markup & Diagramming Primers

**Purpose:**
To enable developers to communicate ideas, architecture, and documentation reproducibly. These primers teach writing and visualization as part of development workflow.

**Positioning:**
Supports every other primer family. Clarity in documentation enables clarity in thinking and collaboration.

**Envisioned Contents:**
| Category | Examples |
|-----------------|---------------------------------------------|
| **Text Markup** | Markdown, AsciiDoc, reStructuredText, LaTeX |
| **Data Markup** | YAML, JSON, TOML |
| **Diagramming** | PlantUML, Mermaid, Graphviz DOT, D2 |
| **Visual Data** | Vega-Lite, SVG fundamentals |

### Toolchain and Automation Primers

**Purpose:**
To build literacy in how modern systems are built, deployed, and maintained.
These primers focus on workflow automation and reproducibility, not individual tools in isolation.

**Positioning:**
Bridges development and operations. Teaches __“how code becomes system.”__

**Envisioned Contents:**
| Category | Topics |
| ----------------------------- | ------------------------------------------------ |
| **Local Automation**          | Makefiles, shell scripting, task runners |
| **Pipelines**                 | Jenkins, GitHub/Bitbucket Actions, CI/CD flow |
| **Containers & Environments** | Docker, Podman, Compose, ephemeral builds |
| **Infrastructure as Code**    | Ansible, Puppet, Terraform, dotfiles |
| **Database Lifecycle**        | Test databases, Liquibase, Flyway |
| **Reproducibility**           | Caching, artifact management, environment parity |

### Architectural Primers

**Purpose:**
To help readers quickly identify, understand, and work within existing architectural structures. Each primer describes a reference design, its trade-offs, and its typical evolution path.

**Positioning:**
Provides system-level literacy — the skill of recognizing architectural shapes and adapting effectively within them.

**Envisioned Contents:**
| Primer                          | Core Idea                             |
| ------------------------------- | ------------------------------------- |
| Big Ball of Mud                 | Unstructured, emergent architecture   |
| Three-Layer                     | Presentation–Business–Data separation |
| Ports and Adapters              | Hexagonal architecture and boundaries |
| Access Control Layer / Gateway  | Controlled entry points, security     |
| CQRS                            | Split read/write models               |
| Event-Based                     | Asynchronous communication patterns   |
| Service-Oriented                | Modular systems by capability         |
| Domain Split                    | Autonomous systems per domain         |
| Domain-Specific Language Design | Using language as a modeling tool     |

### Algorithmic Primers

**Purpose:**
To build problem-shape literacy by teaching common algorithmic patterns and their trade-offs. To refresh algorithmic literacy by focusing on need-to-know algorithms and mental models, not implementation drills. Each primer captures one computational concept that informs design, optimization, or architectural trade-offs.

**Positioning:**
Sits between coding and design — teaches problem-shape recognition and reasoning under constraints.

**Envisioned Contents:**
| Category                    | Topics                                       |
| --------------------------- | -------------------------------------------- |
| **Search & Exploration**    | A*, Dijkstra, BFS/DFS                        |
| **Constraint & Allocation** | Graph colouring, bipartite matching          |
| **Recursion & Aggregation** | Recursive aggregation, divide & conquer      |
| **Optimization**            | Greedy methods, dynamic programming          |
| **Stochastic**              | Monte Carlo, simulated annealing             |
| **Geometry / Spatial**      | Line seeking, convex hull, nearest neighbour |
| **Ordering & Dependencies** | Sorting algorithms, topological sort         |

## Scope Split Recommendations

When planning primer work, use this guidance to break initiatives into manageable pieces:

### Epic-Level Scope
**Use for:** The entire Primer Series initiative or major multi-family expansions
- **Scope:** All families or comprehensive coverage across multiple phases
- **Duration:** Months to ongoing
- **Example:** "Primer Series Implementation" or "Primer Series Expansion 2025"
- **Deliverables:** 20+ primers across families, infrastructure, templates, quality standards

### Feature-Level Scope
**Use for:** Family-specific batches or phase-level primer development
- **Scope:** 2-4 primers within one family OR 4-9 primers across families (split-focus)
- **Duration:** 1-3 weeks
- **Example:** "Phase 1: Programming Languages Batch" or "Architectural Primers - Initial Set"
- **Deliverables:** Batch of related primers, family index updates, cross-linking

**Split-Focus vs. Single-Family:**
- **Split-Focus (Recommended for early phases):** Develop 1-2 primers per family simultaneously
  - **Advantages:** Validates all templates early, provides immediate cross-family value, faster feedback
  - **Example:** PowerShell + Java + Three-Layer Architecture + Markdown + Batch Scripting
- **Single-Family:** Develop multiple primers within one family
  - **Advantages:** Deeper consistency within family, specialized agent focus
  - **Example:** 4 programming language primers in one batch

### Task-Level Scope
**Use for:** Individual primer creation
- **Scope:** One primer from research through integration
- **Duration:** 2-8 hours (can be broken into sub-tasks if needed)
- **Example:** "Create PowerShell Primer" or "Research and Draft Java Primer"
- **Deliverables:** Single primer markdown file, updated family index entry

**Task Breakdown (optional sub-tasks):**
- Research: Gather authoritative resources (1-2 hours)
- Draft: Populate template with content (2-3 hours)
- Review: Lexical and quality validation (1-2 hours)
- Integration: Update indexes and cross-links (30 minutes)

### When to Use Each Level

| Situation | Use | Example |
|-----------|-----|---------|
| Starting primer series | Epic | "Implement Primer Series" |
| Planning a roadmap phase | Feature | "Phase 1: Split-Focus Development" |
| Single family expansion | Feature | "Add 3 markup primers" |
| Creating one primer | Task | "Create Markdown Primer" |
| Research only | Task | "Research PowerShell ecosystem" |
| Validation pass | Task | "Lexical review - Programming batch" |

### Scope Boundaries

**Include in Feature scope:**
- The primer content files themselves
- Family index updates
- Initial cross-linking
- Quality validation for the batch

**Exclude from Feature scope (handle separately):**
- Template changes (separate maintenance task)
- New template creation (separate design feature)
- Global navigation restructuring (separate infrastructure feature)
- Translation work (separate localization feature)

**Include in Task scope:**
- Research and reference gathering
- Content drafting
- Diagram creation (if needed for that specific primer)
- Local validation (builds, links work)

**Exclude from Task scope:**
- Template modifications
- Other primers in the batch
- Infrastructure changes
- Global style changes

## Summary

The Primer Series forms the applied layer of the Patterns ecosystem:

| Family                     | Teaches                      | Outcome             |
|----------------------------|------------------------------|---------------------|
| **Programming Languages**  | Expression and idioms        | Cognitive fluency   |
| **Markup & Diagramming**   | Communication clarity        | Expressive fluency  |
| **Toolchain & Automation** | Delivery and reproducibility | Operational fluency |
| **Architectural**          | Structural reasoning         | Systemic fluency    |
| **Algorithmic**            | Problem-solving literacy     | Analytical fluency  |

Each family follows the same design philosophy:

> **Short, structured, and practical.**  
> Each primer can be read in under an hour and applied immediately.

---

## IMPLEMENTATION ROADMAP

### Overview

This roadmap outlines a phased, agent-assisted approach to building the complete Primer Series. Each phase delivers a cohesive batch of artefacts, validated against templates and quality standards before advancing.

### Execution Principles

- **Small batches:** 2–4 primers per cycle to maintain quality and enable rapid feedback.
- **Template-first:** All content follows family-specific templates for structural consistency.
- **Agent delegation:** Leverage specialized agents for content creation, review, and integration.
- **Validation gates:** Each phase includes build verification and structural alignment checks.
- **Progressive rollout:** Start with high-impact families, refine process, then scale.

---

### Phase 0: Foundation & Infrastructure (CURRENT)

**Objective:** Establish structural scaffolding, validation tooling, and agent workflows.

**Deliverables:**
- ✅ Template library in `src/templates/primers/` (6 templates complete)
- ✅ Content structure in `content/en/primers/` (5 family directories)
- ✅ Primer series index at `/primers/_index.md`
- ✅ Vision document at `docs/collaboration/PRIMER_VISION.md`
- ✅ Build verification workflow (exists in `validation/` directory)
- ✅ Implementation roadmap (this document)
- ⬜ Template curation and alignment verification
- ⬜ Quality checklist update (PR template enhancement)

**Agent Assignments:**
- **Project Planner:** Roadmap creation, milestone definition, dependency mapping (✓)
- **Curator:** Template compliance audits, structural consistency checks, quality checklist update

**Dependencies:**
- Hugo build system operational (✓)
- Template alignment with vision document (✓)
- Agent collaboration protocol established (✓)
- Validation infrastructure in place (✓)

**Validation Criteria:**
- [x] Hugo builds without errors: `hugo --gc --minify --buildDrafts=false`
- [x] All family index files render correctly
- [x] Templates match vision specifications
- [x] Roadmap approved by human maintainer
- [ ] Template curation complete
- [ ] Quality checklist updated in PR template

**Duration Estimate:** 1–2 days (in-progress)

---

### Phase 1: Split-Focus Primer Development

**Objective:** Deliver initial primers across all families using a split-focus approach to establish baseline coverage and validate workflows.

**Rationale:** Rather than completing one family at a time, this approach provides:
- Early validation of all template types
- Immediate cross-family value for users
- Faster feedback loops across different primer styles
- Reduced risk of template misalignment discovered late

**Target Primers (Initial Batch: 9 primers across families):**

1. **Programming Languages:**
   - **PowerShell** ✅ (draft complete — Windows automation, scripting)
   - **Java** ✅ (draft complete — enterprise, OOP foundation)

2. **Architectural:**
   - **Three-Layer Architecture** ✅ (draft complete — presentation-business-data separation)
   - **Ports and Adapters** ✅ (draft complete — hexagonal/clean architecture)

3. **Toolchain & Automation:**
   - **Batch Scripting** ✅ (draft complete — Windows automation fundamentals)
   - **Version Control & Branching Strategies** ✅ (draft complete — Git, trunk-based development, branching trade-offs)
   - **Agent-Augmented Development** ✅ (draft complete — human-AI collaboration patterns)

4. **Markup & Diagramming:**
   - **Markdown** ✅ (draft complete — essential documentation format)
   - **PlantUML** ✅ (draft complete — existing diagram standard in repository)

5. **Algorithmic:**
   - _Deferred to Phase 2_ (low priority for initial rollout)

**Agent Assignments:**
- **Researcher:** Gather authoritative resources, ecosystem documentation, community norms
- **Writer-Editor:** Draft primer content following family-specific templates
- **Lexical Analyst:** Tone and voice alignment with operational style
- **Curator:** Template compliance validation, cross-primer consistency
- **Diagrammer:** Create diagrams for architectural and diagramming primers

**Work Streams:**
1. **Research phase:** 2–3 days ✅ COMPLETE (2025-11-14)
   - Gather 5–7 authoritative references per primer ✅
   - Document ecosystem conventions, style guides, canonical tooling ✅
   - Identify representative code examples and diagrams ✅
   - **Delivered:** 9 draft primers with 55+ authoritative references
   
2. **Drafting phase:** 3–4 days (IN PROGRESS)
   - Populate template sections with factual, practical content ✅
   - Include working code examples and quickstart commands ✅
   - Link to official documentation and learning resources ✅
   - **Status:** Draft content complete, ready for Writer-Editor refinement
   
3. **Review phase:** 1–2 days (PENDING)
   - Lexical alignment pass across all primers
   - Curator structural validation
   - Build verification and link checking
   
4. **Integration phase:** 1 day (PENDING)
   - Update family indexes with new primers
   - Cross-link related primers
   - Validate in Hugo build

**Dependencies:**
- Phase 0 completion (template curation and quality checklist)
- Template refinements incorporated
- PR template updated with quality criteria

**Validation Criteria:**
- [x] All sections from family-specific templates present
- [x] 2–5 authoritative references per primer (exceeded: 55+ references across 9 primers)
- [x] Working examples verified (code snippets, quickstart commands, diagrams)
- [ ] Hugo build passes without errors (deferred - researcher avoids builds per instructions)
- [ ] Lexical tone consistent with existing content (pending Writer-Editor review)
- [ ] Cross-links functional (partial - internal cross-links added, pending validation)
- [ ] Quality checklist from PR template satisfied (pending Curator review)

**Duration Estimate:** 1.5–2 weeks (Research phase complete ahead of schedule)

---

### Phase 2: Family Expansion

**Objective:** Build upon Phase 1 foundation by expanding coverage within each primer family, completing high-priority entries.

**Target Primers:**

1. **Programming Languages (3 additional):**
   - Python (✓ existing — alignment check and template update)
   - Perl (✓ existing — alignment check and template update)
   - Rust (new — systems programming, modern safety)

2. **Markup & Diagramming (3 additional):**
   - Mermaid (new — GitHub integration)
   - YAML (new — configuration literacy)
   - JSON (new — data interchange)

3. **Toolchain & Automation (2 additional):**
   - Docker (new — containerization)
   - GitHub Actions (new — CI/CD in use)

4. **Architectural (1 additional):**
   - ~~Ports and Adapters~~ ✅ (moved to Phase 1, completed)
   - Service-Oriented Architecture (new — capability decomposition)

5. **Algorithmic (Initial entries: 2 primers):**
   - Search Algorithms (new — BFS, DFS, A*, Dijkstra)
   - Sorting and Ordering (new — comparison sorts, topological sort)

**Agent Assignments:**
- **Researcher:** Resource gathering and ecosystem documentation
- **Writer-Editor:** Content drafting following family templates
- **Architect:** Lead architectural primer development
- **Diagrammer:** Diagrams for architectural and algorithm primers
- **Lexical Analyst:** Voice consistency across expanded content
- **Curator:** Cross-family consistency and template compliance

**Work Streams:**
Similar to Phase 1 with parallel tracks across families:
1. Research phase: 2–3 days
2. Drafting phase: 4–5 days (larger batch)
3. Review phase: 2 days
4. Integration phase: 1 day

**Dependencies:**
- Phase 1 complete and validated
- Lessons learned from split-focus approach incorporated
- Template refinements based on Phase 1 feedback

**Validation Criteria:**
- [ ] All family-specific template sections complete
- [ ] Cross-family consistency maintained
- [ ] Hugo build passes
- [ ] Quality checklist satisfied for each primer
- [ ] Existing Python/Perl primers updated to match template

**Duration Estimate:** 2–3 weeks

---

### Phase 3: Deep Coverage & Specialization

**Objective:** Expand primer coverage to achieve comprehensive family coverage with specialized and advanced topics.

**Target Primers (Additional entries across families):**

1. **Programming Languages:**
   - Go, Kotlin, C#, JavaScript/TypeScript, C, Lisp, Prolog, Haskell

2. **Markup & Diagramming:**
   - TOML, AsciiDoc, Graphviz DOT, D2, LaTeX

3. **Toolchain & Automation:**
   - Shell Scripting, Make, Task Runners, Environment Management, Jenkins, Ansible, Terraform

4. **Architectural:**
   - Big Ball of Mud, CQRS, Event-Based Architecture, Domain Split, Access Control Layer, DSL Design

5. **Algorithmic:**
   - Recursion & Aggregation, Dynamic Programming, Greedy Methods, Graph Coloring, Geometric Algorithms, Stochastic Methods

**Approach:**
- Continue split-focus batches of 4–6 primers
- Prioritize based on user demand and strategic alignment
- Maintain quality gates established in Phases 1–2

**Duration Estimate:** Iterative, 2–3 week cycles per batch

---

### Phase 4: Consolidation & Quality Assurance

**Objective:** Ensure structural integrity, cross-primer coherence, and publication readiness across all completed primers.

**Activities:**
1. **Comprehensive audit:** Curator-led review of all primers
2. **Cross-linking validation:** Verify all internal references functional
3. **Navigation optimization:** Update family indexes and series overview
4. **Build performance check:** Ensure Hugo build times acceptable
5. **Metadata alignment:** Validate tags, categories, front matter consistency
6. **Translation readiness:** Prepare primer content for Dutch localization
7. **Accessibility review:** Check diagram alt-text, code example contrast
8. **Final staging deployment:** Deploy to development environment for user testing

**Agent Assignments:**
- **Curator:** Lead structural audit and consistency validation
- **Synthesizer:** Integrate cross-primer narratives, resolve overlaps
- **Lexical Analyst:** Final voice and tone pass
- **Translator:** Assess translation feasibility, prepare glossary
- **Build Automation Agent:** Performance optimization, CI/CD validation

**Deliverables:**
- Audit report with corrections applied
- Cross-reference map and link verification
- Updated navigation structure
- Performance benchmark report
- Translation preparation package
- Accessibility compliance report
- Staging environment validated

**Dependencies:**
- Sufficient primer coverage across families (minimum 2–3 per family)
- Human review and approval of representative samples
- Translation guidelines established

**Validation Criteria:**
- [ ] Zero broken internal links
- [ ] Consistent metadata across all primers
- [ ] Hugo build completes in <2 seconds
- [ ] All diagrams have descriptive alt-text
- [ ] Navigation intuitive and complete
- [ ] Staging environment renders correctly

**Duration Estimate:** 1–2 weeks

---

### Phase 5: Continuous Expansion (Ongoing)

**Objective:** Grow primer coverage based on usage feedback and strategic priorities.

**Candidate Additions:**
- **Programming Languages:** Lisp, Prolog, Haskell, C, Eiffel, Smalltalk, Groovy
- **Markup & Diagramming:** LaTeX, reStructuredText, Graphviz DOT, D2, Vega-Lite, SVG
- **Toolchain & Automation:** Jenkins, Ansible, Puppet, Terraform, Podman, Compose
- **Architectural:** Microservices evolution, Lambda architecture, Plugin systems
- **Algorithmic:** Bipartite matching, Convex hull, Nearest neighbor, Line seeking

**Prioritization Criteria:**
1. User request frequency
2. Strategic alignment with repository themes
3. Ecosystem relevance and longevity
4. Template coverage gaps
5. Agent capacity and expertise

**Process:**
- Maintain backlog in `/planning/PRIMER_BACKLOG.md`
- Quarterly review with human maintainers
- Small-batch addition (2–4 primers per cycle)
- Continuous quality improvement based on feedback

---

### Dependency Map

```
Phase 0 (Foundation & Infrastructure)
    ↓
Phase 1 (Split-Focus Initial Batch)
    ├── PowerShell + Java primers
    ├── Three-Layer Architecture primer
    ├── Batch Scripting primer
    └── Markdown + PlantUML primers
    ↓
Phase 2 (Family Expansion)
    ├── Additional programming languages (Python/Perl updates, Rust)
    ├── Additional markup/diagramming (Mermaid, YAML, JSON)
    ├── Additional toolchain (Docker, GitHub Actions)
    ├── Additional architectural (Ports & Adapters, SOA)
    └── Initial algorithmic (Search, Sorting)
    ↓
Phase 3 (Deep Coverage & Specialization)
    └── Iterative batches across all families
    ↓
Phase 4 (Consolidation & Quality Assurance)
    └── Cross-primer audit and optimization
    ↓
Phase 5 (Continuous Expansion)
    └── Ongoing based on feedback and demand
```

---

### Risk Mitigation

**Risk:** Agent output quality variability
- **Mitigation:** Pilot each phase with 1 primer, validate before batch scaling

**Risk:** Template-content misalignment
- **Mitigation:** Curator validation gate at each batch, feedback loop to templates

**Risk:** Scope creep and timeline drift
- **Mitigation:** Strict batch sizing (2–4 primers), human approval between phases

**Risk:** Cross-primer inconsistency
- **Mitigation:** Synthesizer integration pass, Curator global audits

**Risk:** Broken build or integration failures
- **Mitigation:** Build verification after each batch, CI/CD integration

**Risk:** Agent capacity bottlenecks
- **Mitigation:** Parallel workstreams where dependencies allow, flexible scheduling

---

### Success Metrics

**Quantitative:**
- [ ] 35+ primers published (13 programming, 7 markup, 7 toolchain, 9 architectural, 8+ algorithmic)
- [ ] Zero broken links in primer network
- [ ] Hugo build time <2 seconds
- [ ] 100% template compliance

**Qualitative:**
- [ ] Primers readable in <60 minutes
- [ ] Examples immediately actionable
- [ ] Tone consistent with repository voice
- [ ] Navigation intuitive

**Process:**
- [ ] Agent workflows documented and reusable
- [ ] Quality gates validated at each phase
- [ ] Human approval obtained at phase boundaries
- [ ] Backlog maintained for future expansion

---

### Next Actions

1. **Phase 0 Completion (In Progress):**
   - [x] Roadmap approved by human maintainer
   - [ ] Template curation complete (Curator)
   - [ ] Quality checklist updated in PR template (Curator)

2. **Phase 1 Kickoff (Split-Focus Approach):**
   - **PowerShell Primer:** Researcher gathers resources, Writer-Editor drafts content
   - **Java Primer:** Researcher gathers resources, Writer-Editor drafts content
   - **Three-Layer Architecture Primer:** Architect leads, Diagrammer creates diagrams
   - **Batch Scripting Primer:** Researcher and Writer-Editor collaborate
   - **Markdown Primer:** Writer-Editor drafts with repository examples
   - **PlantUML Primer:** Diagrammer leads with Writer-Editor support

3. **Quality Gates:**
   - Build verification after each primer completion
   - Curator template compliance check
   - Lexical tone alignment review
   - Cross-linking validation

---

**Roadmap Version:** 2.0  
**Last Updated:** 2025-11-13  
**Status:** Phase 0 in progress, Phase 1 primers identified  
**Next Review:** After Phase 1 batch completion

---

## GITHUB ISSUE TRACKER APPROACH / TARGET OPERATING MODEL

### Overview

The Primer Series implementation uses GitHub's issue tracking system to enable structured collaboration between human contributors and specialized agentic workers. This approach provides traceability, delegation clarity, and progress monitoring across all phases.

### Issue Hierarchy

Primer work is organized using a three-tier hierarchy:

```
Epic: Primer Series Implementation
└── Feature: [Family Name] Primer Development (e.g., Programming Languages Phase 1)
    └── Task: Individual Primer Creation (e.g., PowerShell Primer)
```

**Epic Level:**
- Represents the entire Primer Series initiative
- Tracks strategic milestones across all families
- Duration: Months to ongoing
- Label: `epic`, `primer-series`
- Owner: Project maintainer or strategic lead

**Feature Level:**
- Represents a cohesive batch of primers within a family or across families (split-focus)
- Maps to roadmap phases (e.g., "Phase 1: Split-Focus Primer Development")
- Includes scope definition, deliverables, and acceptance criteria
- Duration: 1-3 weeks
- Labels: `feature`, `primer-[family]`, collaboration type
- Owner: Coordinator agent or human lead

**Task Level:**
- Represents creation of a single primer
- Includes research, drafting, review, and integration steps
- Clear completion criteria from quality checklist
- Duration: 2-8 hours per task
- Labels: `task`, `primer-[family]`, agent assignment
- Owner: Assigned specialist agent or contributor

### Issue Templates

#### Primer Epic Template (primer-epic.yml)
Used for: Top-level Primer Series tracking
- Strategic goal and success metrics
- Phase-level milestones
- Family coverage targets
- Quality standards reference

#### Primer Feature Template (primer-feature.yml)
Used for: Family-level or phase-level primer batches
- Parent Epic reference
- Objective: Which primers in which families
- Scope: Clear boundaries (what's included/excluded)
- Deliverables: Specific primer files and infrastructure
- Acceptance criteria: Quality gates from PR template
- Effort estimate: Batch sizing (2-4 primers recommended)
- Agent assignments: Primary and supporting agents
- Dependencies: Template readiness, prerequisite infrastructure

#### Primer Task Template (primer-task.yml)
Used for: Individual primer creation
- Parent Feature reference
- Task description: Specific primer to create
- Implementation steps: Research → Draft → Review → Integrate
- Acceptance criteria: Template compliance, build validation
- Task type: Research, Documentation, or Integration
- Effort estimate: XS-L (typically S or M)
- Assigned agent: Researcher, Writer-Editor, Curator, etc.
- Validation steps: Build check, link verification, quality checklist

### Label Schema

Primer-specific labels extend the existing hierarchy:

**Family Labels:**
- `primer-programming` - Programming language primers
- `primer-markup` - Markup and diagramming primers
- `primer-toolchain` - Toolchain and automation primers
- `primer-architectural` - Architectural primers
- `primer-algorithmic` - Algorithmic primers

**Series Label:**
- `primer-series` - All primer-related work

**Collaboration Labels (existing):**
- `agent-driven` - Primarily automated work
- `human-review-required` - Requires human validation
- `mixed-collaboration` - Collaborative agent + human work

**Phase Labels:**
- `primer-phase-0` - Foundation and infrastructure
- `primer-phase-1` - Split-focus initial batch
- `primer-phase-2` - Family expansion
- `primer-phase-3` - Deep coverage
- `primer-phase-4` - Consolidation

### Workflow Integration

**Issue Creation:**
1. Maintainer creates Epic for overall Primer Series
2. Coordinator agent or planner creates Features for each phase/batch
3. Features are broken into Tasks by coordinator or automatically via planning agent
4. Tasks are assigned to specialist agents based on skillset

**Agent Assignment:**
- Tasks labeled `agent-driven` are picked up by specialized agents
- Coordinator agent monitors progress and routes work
- Human maintainers review at Feature boundaries (quality gates)

**Progress Tracking:**
- Epic tracks overall completion percentage across families
- Features track batch completion and quality validation
- Tasks track individual primer status (research → draft → review → integrated)

**Quality Gates:**
- Each Feature has acceptance criteria from primer PR template
- Tasks inherit validation requirements from Feature
- Human review triggered at phase boundaries via `human-review-required` label

### Agent Delegation Model

**Issue-to-Agent Routing:**

| Task Type | Primary Agent | Supporting Agents | Collaboration |
|-----------|--------------|-------------------|---------------|
| Research primer content | Researcher | - | Agent-driven |
| Draft primer from template | Writer-Editor | Researcher | Agent-driven |
| Create architectural diagrams | Diagrammer | Architect | Agent-driven |
| Lexical tone review | Lexical Analyst | Writer-Editor | Agent-driven |
| Template compliance audit | Curator | - | Agent-driven |
| Cross-primer consistency | Synthesizer | Curator | Agent-driven |
| Integration and navigation | Curator | Build Automation | Mixed |
| Quality gate validation | Curator | Human maintainer | Human-review-required |
| Translation preparation | Translator | Writer-Editor | Mixed |

**Coordination Flow:**

1. **Planning:** Project Planner creates Feature issues from roadmap phases
2. **Decomposition:** Coordinator Manager breaks Features into Task issues
3. **Assignment:** Tasks labeled with appropriate agent and collaboration type
4. **Execution:** Specialist agents claim and complete assigned tasks
5. **Review:** Curator validates outputs against templates
6. **Integration:** Tasks linked to Feature, Feature to Epic
7. **Validation:** Human review at Feature completion before next phase

### Monitoring and Reporting

**Status Tracking:**
- Epic progress: % of families with minimum coverage
- Feature progress: % of planned primers completed and validated
- Task progress: Individual primer completion status

**Agent Status Files:**
- `docs/coordination/AGENT_STATUS.md` - Current agent assignments
- `docs/coordination/WORKFLOW_LOG.md` - Chronological completion log
- `docs/coordination/HANDOFFS.md` - Ready-for-next-step tracking

**Quality Metrics:**
- Template compliance rate (Curator validation)
- Build success rate (CI/CD integration)
- Cross-link integrity (Automated checks)
- Lexical consistency score (Lexical Analyst)

### Best Practices

1. **Batch Sizing:** Keep Features to 2-4 primers for quality control
2. **Agent Focus:** Assign tasks to single specialist agent to avoid conflicts
3. **Clear Ownership:** Each issue has exactly one owner (agent or human)
4. **Linked Hierarchy:** Always link Task → Feature → Epic
5. **Label Discipline:** Use both hierarchy and family labels consistently
6. **Quality First:** Validate each batch before advancing to next
7. **Human Checkpoints:** Trigger human review at phase boundaries
8. **Documentation:** Update status files as work progresses

### Example Issue Chain

```
Epic #100: Primer Series Implementation
  └── Feature #101: Phase 1 - Programming Languages Batch
      ├── Task #102: Research PowerShell Primer [agent-driven, researcher]
      ├── Task #103: Draft PowerShell Primer [agent-driven, writer-editor]
      ├── Task #104: Research Java Primer [agent-driven, researcher]
      ├── Task #105: Draft Java Primer [agent-driven, writer-editor]
      └── Task #106: Lexical Review - Programming Batch [agent-driven, lexical-analyst]
  └── Feature #107: Phase 1 - Architectural Batch
      ├── Task #108: Research Three-Layer Architecture [agent-driven, researcher]
      ├── Task #109: Create Architecture Diagrams [agent-driven, diagrammer]
      └── Task #110: Draft Three-Layer Primer [mixed, writer-editor + architect]
```

---

## SUGGESTED ACTIONS FOR AGENTS

This section outlines which agents are best suited for primer-related work, their expected contributions, and efficiency considerations.

### Agent Capability Matrix

| Agent | Primary Role | Primer Tasks | Efficiency | Tools Required |
|-------|-------------|--------------|-----------|----------------|
| **Researcher** | Gather authoritative resources | Research phase for all primers | High - parallel across families | read, write, search, edit, web |
| **Writer-Editor** | Draft and refine primer content | Drafting phase, content polish | High - follows templates well | read, write, search, edit, bash |
| **Curator** | Template compliance and consistency | Quality validation, cross-primer audits | High - systematic validation | read, write, search, edit |
| **Architect** | Architectural content expertise | Lead architectural primer development | Medium - specialized domain | read, write, search, edit |
| **Diagrammer** | Visual representation creation | Diagrams for architectural and algorithm primers | Medium - specialized skill | read, write, search, edit |
| **Lexical Analyst** | Tone and voice alignment | Final polish pass, voice consistency | High - rule-based validation | read, write, search, edit, markdown, grep |
| **Synthesizer** | Cross-primer integration | Resolve overlaps, ensure narrative continuity | Medium - requires holistic view | read, write, search, edit |
| **Coordinator Manager** | Work routing and status tracking | Feature decomposition, task assignment | High - orchestration specialist | read, write, search, edit, github, custom-agent, todo |
| **Project Planner** | Roadmap to actionable plans | Phase planning, dependency mapping | High - strategic breakdown | read, write, search, edit, todo, github |
| **Build Automation** | CI/CD integration validation | Hugo build verification, deployment checks | Medium - technical infrastructure | read, write, search, edit, MultiEdit, bash, grep, github, yaml |
| **Translator** | Localization preparation | Dutch translation after consolidation | Low - deferred to Phase 4+ | read, write, search, edit, glob, MultiEdit |
| **Scribe** | Documentation of agent workflows | Workflow logging, meeting notes | Medium - process documentation | read, write, search, edit, markdown |
| **Backend Dev** | Not applicable | N/A | N/A | N/A |
| **Frontend** | Not applicable | N/A | N/A | N/A |
| **Bootstrap Bill** | Initial repository mapping | One-time scaffolding (Phase 0) | High - completed | read, write, search, edit, bash, grep |

### Recommended Agent Workflows

#### Phase 0: Foundation & Infrastructure
**Primary Agents:** Curator, Project Planner, Bootstrap Bill
- **Bootstrap Bill:** Generate repository scaffolding and context maps (completed)
- **Project Planner:** Create roadmap and milestone structure (completed)
- **Curator:** Template alignment and quality checklist update (in progress)

**Efficiency:** High - one-time setup work, mostly complete

#### Phase 1-3: Primer Development (Split-Focus and Expansion)
**Primary Agents:** Researcher, Writer-Editor, Curator, Lexical Analyst
**Supporting Agents:** Architect, Diagrammer, Coordinator Manager

**Workflow per Primer:**
1. **Research (Researcher):** 1-2 hours
   - Gather 5-7 authoritative resources
   - Document ecosystem conventions
   - Identify code examples
   - **Output:** Research notes with references

2. **Drafting (Writer-Editor):** 2-3 hours
   - Populate family-specific template
   - Include code examples and quickstart
   - Link to resources from research
   - **Output:** Draft primer markdown file

3. **Specialized Content (Architect or Diagrammer):** 1-2 hours (if needed)
   - **Architect:** Lead architectural primer content
   - **Diagrammer:** Create diagrams for architectural/algorithmic primers
   - **Output:** Diagrams or specialized content sections

4. **Lexical Review (Lexical Analyst):** 30-60 minutes
   - Tone alignment with repository voice
   - Consistent terminology
   - Readability optimization
   - **Output:** Refined primer with voice consistency

5. **Quality Validation (Curator):** 30-45 minutes
   - Template compliance check
   - Cross-reference validation
   - Metadata verification
   - **Output:** Validation report and approval

6. **Integration (Curator or Build Automation):** 30 minutes
   - Update family indexes
   - Add cross-links
   - Verify Hugo build
   - **Output:** Integrated primer in site

**Batch Efficiency:** 
- Sequential per primer: 5-9 hours
- Parallel across 4 primers: 2-3 days with agent delegation
- Batches of 2-4 primers recommended for quality control

#### Phase 4: Consolidation & Quality Assurance
**Primary Agents:** Curator, Synthesizer, Lexical Analyst, Build Automation
**Supporting Agents:** Translator, Scribe

**Workflow:**
1. **Comprehensive Audit (Curator):** 3-5 hours
   - Cross-primer structural validation
   - Metadata consistency check
   - Navigation verification

2. **Integration Pass (Synthesizer):** 2-3 hours
   - Resolve content overlaps
   - Ensure narrative continuity
   - Surface gaps

3. **Final Polish (Lexical Analyst):** 2-3 hours
   - Global tone pass
   - Voice consistency across all primers

4. **Build Validation (Build Automation):** 1-2 hours
   - Performance optimization
   - Link checking
   - CI/CD integration

5. **Translation Prep (Translator):** 3-4 hours
   - Assess translation feasibility
   - Prepare glossary
   - Identify localization challenges

**Efficiency:** High - systematic validation with clear checklists

### Tool Configuration Assessment

**Current Agent Tools (from specialist-agents.json):**

✅ **Adequately Configured:**
- Researcher: Has `web` tool for external research
- Writer-Editor: Has `bash` for build validation
- Curator: Has core editing tools for validation work
- Lexical Analyst: Has `markdown` and `grep` for analysis
- Build Automation: Has `bash`, `github`, `yaml` for CI/CD
- Coordinator Manager: Has `github`, `custom-agent`, `todo` for orchestration

⚠️ **Potential Enhancements (Optional):**
- **Diagrammer:** Could benefit from `bash` tool to run PlantUML/Mermaid rendering locally
- **Synthesizer:** Could benefit from `grep` tool for cross-file searches
- **Scribe:** Could benefit from `todo` tool for tracking workflow steps

**Recommendation:** Current tool configurations are sufficient for primer work. Optional enhancements can be added if agents report tooling gaps during execution.

### Agent Delegation Strategy

**For Maximum Efficiency:**

1. **Parallelize by Family:**
   - Assign different agents to different primer families simultaneously
   - Example: Researcher works on Programming primers while another works on Architectural

2. **Pipeline Stages:**
   - Stagger work so Researcher completes batch → Writer-Editor starts batch → Curator validates batch
   - Keeps agents continuously engaged without idle time

3. **Specialized Agent Focus:**
   - Architect leads architectural primers (higher quality than generic agent)
   - Diagrammer handles all diagram creation (consistent visual style)
   - Lexical Analyst does final pass across entire batch (global voice consistency)

4. **Coordinator Oversight:**
   - Coordinator Manager monitors progress and routes work
   - Escalates blockers or quality issues to human maintainer
   - Maintains status files for transparency

5. **Quality Gates:**
   - Human review at Feature completion (end of batch)
   - Curator validates before integration
   - Build Automation verifies technical correctness

**Expected Throughput:**
- Phase 1 (9 primers): 1.5-2 weeks with agent delegation
- Phase 2 (11 primers): 2-3 weeks with parallel workflows
- Phase 3 (variable): 2-3 week cycles per batch of 4-6 primers

### Success Indicators

**Agent Performance:**
- Template compliance rate >95% (Curator validation)
- Build success rate 100% (Build Automation)
- Lexical consistency score >90% (Lexical Analyst)
- Cross-reference integrity 100% (automated checks)

**Workflow Efficiency:**
- Task completion time within estimates
- Minimal rework cycles (first draft quality)
- Clear hand-offs between agents
- Status files kept current

**Collaboration Quality:**
- Agent conflicts: 0 (Coordinator prevents overlapping edits)
- Human intervention requests: <10% of tasks
- Quality gate failures: <5% of features

---