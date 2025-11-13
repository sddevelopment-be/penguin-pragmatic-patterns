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
[/templates/primers/TEMPLATE_PROGRAMMING_PRIMER.md](../../src/templates/primers/TEMPLATE_PROGRAMMING_PRIMER.md)

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

**Target Primers (Initial Batch: 5 primers across families):**

1. **Programming Languages:**
   - **PowerShell** (new — Windows automation, scripting)
   - **Java** (new — enterprise, OOP foundation)

2. **Architectural:**
   - **Three-Layer Architecture** (new — presentation-business-data separation)

3. **Toolchain & Automation:**
   - **Batch Scripting** (new — Windows automation fundamentals)

4. **Markup & Diagramming:**
   - **Markdown** (new — essential documentation format)
   - **PlantUML** (new — existing diagram standard in repository)

5. **Algorithmic:**
   - _Deferred to Phase 2_ (low priority for initial rollout)

**Agent Assignments:**
- **Researcher:** Gather authoritative resources, ecosystem documentation, community norms
- **Writer-Editor:** Draft primer content following family-specific templates
- **Lexical Analyst:** Tone and voice alignment with operational style
- **Curator:** Template compliance validation, cross-primer consistency
- **Diagrammer:** Create diagrams for architectural and diagramming primers

**Work Streams:**
1. **Research phase:** 2–3 days
   - Gather 5–7 authoritative references per primer
   - Document ecosystem conventions, style guides, canonical tooling
   - Identify representative code examples and diagrams
   
2. **Drafting phase:** 3–4 days
   - Populate template sections with factual, practical content
   - Include working code examples and quickstart commands
   - Link to official documentation and learning resources
   
3. **Review phase:** 1–2 days
   - Lexical alignment pass across all primers
   - Curator structural validation
   - Build verification and link checking
   
4. **Integration phase:** 1 day
   - Update family indexes with new primers
   - Cross-link related primers
   - Validate in Hugo build

**Dependencies:**
- Phase 0 completion (template curation and quality checklist)
- Template refinements incorporated
- PR template updated with quality criteria

**Validation Criteria:**
- [ ] All sections from family-specific templates present
- [ ] 2–5 authoritative references per primer
- [ ] Working examples verified (code snippets, quickstart commands, diagrams)
- [ ] Hugo build passes without errors
- [ ] Lexical tone consistent with existing content
- [ ] Cross-links functional
- [ ] Quality checklist from PR template satisfied

**Duration Estimate:** 1.5–2 weeks

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

4. **Architectural (2 additional):**
   - Ports and Adapters (new — hexagonal architecture)
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