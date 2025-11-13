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
- ⬜ Implementation roadmap (this document)
- ⬜ Quality checklist template for primer validation
- ⬜ Build verification workflow for primer content

**Agent Assignments:**
- **Project Planner:** Roadmap creation, milestone definition, dependency mapping
- **Bootstrap Bill:** Infrastructure documentation, validation tooling setup
- **Curator:** Template compliance audits, structural consistency checks

**Dependencies:**
- Hugo build system operational (✓)
- Template alignment with vision document (✓)
- Agent collaboration protocol established (✓)

**Validation Criteria:**
- [ ] Hugo builds without errors: `hugo --gc --minify --buildDrafts=false`
- [ ] All family index files render correctly
- [ ] Templates match vision specifications
- [ ] Roadmap approved by human maintainer

**Duration Estimate:** 1–2 days (in-progress)

---

### Phase 1: Programming Languages — Core Set

**Objective:** Deliver foundational programming language primers covering major paradigms and ecosystems.

**Target Primers (Batch 1A: 4 primers):**
1. Python (✓ existing — needs alignment check)
2. Perl (✓ existing — needs alignment check)
3. Rust (new — systems programming, modern safety)
4. JavaScript/TypeScript (new — web ecosystem, dual-language treatment)

**Target Primers (Batch 1B: 4 primers):**
5. Go (new — concurrency, cloud-native)
6. Java (new — enterprise, OOP foundation)
7. Kotlin (new — modern JVM, mobile)
8. C# (new — .NET ecosystem)

**Agent Assignments:**
- **Researcher:** Gather authoritative resources, ecosystem documentation, community norms
- **Writer-Editor:** Draft primer content following TEMPLATE_PROGRAMMING_PRIMER.md
- **Lexical Analyst:** Tone and voice alignment with operational style
- **Curator:** Template compliance validation, cross-primer consistency
- **Diagrammer:** Create ecosystem diagrams (toolchain flow, paradigm relationships)

**Work Streams:**
1. **Research phase:** 1–2 days per batch
   - Gather 5–7 authoritative references per language
   - Document ecosystem conventions, style guides, canonical tooling
   - Identify representative code examples
   
2. **Drafting phase:** 2–3 days per batch
   - Populate template sections with factual, practical content
   - Include working code examples and quickstart commands
   - Link to official documentation and learning resources
   
3. **Review phase:** 1 day per batch
   - Lexical alignment pass
   - Curator structural validation
   - Build verification and link checking
   
4. **Integration phase:** 0.5 days per batch
   - Update family index with new primers
   - Cross-link related primers
   - Publish to staging environment

**Dependencies:**
- Phase 0 validation gates passed
- Template refinements incorporated
- Agent workflows tested with 1 pilot primer

**Validation Criteria:**
- [ ] All sections from TEMPLATE_PROGRAMMING_PRIMER.md present
- [ ] 2–5 authoritative references per primer
- [ ] Working quickstart commands verified
- [ ] Hugo build passes
- [ ] Lexical tone consistent with existing content
- [ ] Cross-links functional

**Duration Estimate:** 2–3 weeks (2 batches × 1.5 weeks)

---

### Phase 2: Markup & Diagramming — Communication Foundations

**Objective:** Enable reproducible documentation and visualization across the knowledge base.

**Target Primers (Batch 2A: 4 primers):**
1. Markdown (essential — core documentation format)
2. PlantUML (essential — existing diagram standard)
3. Mermaid (high-value — GitHub integration)
4. YAML (high-value — configuration literacy)

**Target Primers (Batch 2B: 3 primers):**
5. JSON (practical — data interchange)
6. TOML (practical — Hugo configuration format)
7. AsciiDoc (optional — advanced documentation)

**Agent Assignments:**
- **Researcher:** Identify canonical tools, syntax references, ecosystem conventions
- **Writer-Editor:** Draft primers following TEMPLATE_MARKUP_AND_DIAGRAMMING.md
- **Diagrammer:** Create comparison diagrams (when to use which format)
- **Lexical Analyst:** Voice and clarity checks
- **Curator:** Structural validation, template compliance

**Work Streams:**
1. **Research phase:** 1 day per batch
   - Focus on practical usage patterns
   - Identify common pitfalls and conventions
   - Gather tooling recommendations
   
2. **Drafting phase:** 2 days per batch
   - Populate templates with syntax examples
   - Include tool integration guidance
   - Demonstrate real-world use cases from the repository
   
3. **Review phase:** 1 day per batch
   - Validate examples against repository usage
   - Curator alignment check
   - Build verification
   
4. **Integration phase:** 0.5 days per batch
   - Update family index
   - Cross-reference with programming primers
   - Link from existing content using these formats

**Dependencies:**
- Phase 1 Batch 1A completed (to establish rhythm)
- Diagramming tools validated in repository
- PlantUML examples from existing content cataloged

**Validation Criteria:**
- [ ] Examples render correctly in Hugo
- [ ] Syntax highlighting functional
- [ ] Tool recommendations current and tested
- [ ] Cross-references to repository usage examples
- [ ] Family index updated

**Duration Estimate:** 1.5–2 weeks (2 batches × 1 week)

---

### Phase 3: Toolchain & Automation — Delivery Literacy

**Objective:** Build competency in modern development workflows and reproducibility practices.

**Target Primers (Batch 3A: 4 primers):**
1. Shell Scripting (foundational — Bash automation)
2. Make (foundational — build orchestration)
3. Docker (high-impact — containerization)
4. GitHub Actions (high-impact — CI/CD in use)

**Target Primers (Batch 3B: 3 primers):**
5. Task Runners (practical — npm scripts, just, task)
6. Environment Management (practical — dotfiles, direnv)
7. Liquibase/Flyway (specialized — database versioning)

**Agent Assignments:**
- **Build Automation Agent:** Lead content creation for CI/CD and pipeline primers
- **Researcher:** Tool comparisons, best practices, ecosystem evolution
- **Writer-Editor:** Draft primers following TEMPLATE_TOOL_AND_AUTOMATION.md
- **Architect:** Design workflow diagrams and integration patterns
- **Curator:** Validation and consistency checks

**Work Streams:**
1. **Research phase:** 1–2 days per batch
   - Catalog existing repository automation (GitHub Actions workflows)
   - Document tool trade-offs and selection criteria
   - Identify reproducibility patterns
   
2. **Drafting phase:** 2–3 days per batch
   - Create working examples from repository context
   - Include quickstart scaffolds
   - Document integration patterns
   
3. **Review phase:** 1 day per batch
   - Build Automation Agent technical validation
   - Architect pattern verification
   - Curator structural check
   
4. **Integration phase:** 0.5 days per batch
   - Link to repository workflows as examples
   - Update family index
   - Cross-reference with programming primers

**Dependencies:**
- Phase 1 Batch 1A completed (establishes agent workflow)
- Repository CI/CD workflows documented
- Template validated with one pilot primer

**Validation Criteria:**
- [ ] Examples executable and tested
- [ ] Integration with repository workflows documented
- [ ] Trade-off sections complete
- [ ] Quickstart commands verified
- [ ] Cross-links to related primers functional

**Duration Estimate:** 2–3 weeks (2 batches × 1.5 weeks)

---

### Phase 4: Architectural Primers — System Shapes

**Objective:** Provide rapid literacy in common architectural patterns and their evolution paths.

**Target Primers (Batch 4A: 4 primers):**
1. Big Ball of Mud (foundational — recognize emergent chaos)
2. Three-Layer Architecture (foundational — presentation-business-data)
3. Ports and Adapters (high-value — hexagonal architecture)
4. Service-Oriented Architecture (high-value — capability decomposition)

**Target Primers (Batch 4B: 5 primers):**
5. CQRS (practical — read/write separation)
6. Event-Based Architecture (practical — async patterns)
7. Domain Split (practical — bounded contexts)
8. Access Control Layer (specialized — security patterns)
9. DSL Design (specialized — language as modeling)

**Agent Assignments:**
- **Architect:** Lead content creation, trade-off analysis, pattern evolution paths
- **Researcher:** Historical context, case studies, authoritative references
- **Diagrammer:** Create architectural diagrams (component, sequence, deployment)
- **Writer-Editor:** Draft primers following TEMPLATE_ARCHITECTURAL.md
- **Curator:** Pattern coherence across primers

**Work Streams:**
1. **Research phase:** 2 days per batch
   - Identify canonical pattern definitions
   - Gather evolution case studies
   - Document common misapplications
   
2. **Drafting phase:** 3–4 days per batch
   - Architect-led pattern documentation
   - Trade-off narration and context analysis
   - Evolution path mapping
   
3. **Diagramming phase:** 1–2 days per batch
   - Create reference diagrams
   - Illustrate pattern variations
   - Show migration paths
   
4. **Review phase:** 1 day per batch
   - Architect peer review
   - Curator consistency validation
   - Build verification
   
5. **Integration phase:** 0.5 days per batch
   - Update family index
   - Cross-link to related practices and concepts
   - Link from existing architectural content

**Dependencies:**
- Phase 2 completed (diagramming primers available)
- Architect agent workflow validated
- Pattern catalog from existing content analyzed

**Validation Criteria:**
- [ ] Trade-off sections thorough and contextualized
- [ ] Diagrams render and add clarity
- [ ] Evolution paths documented
- [ ] Links to 3–5 authoritative sources
- [ ] Consistency with existing practices/concepts
- [ ] Family index updated

**Duration Estimate:** 3–4 weeks (2 batches × 2 weeks)

---

### Phase 5: Algorithmic Primers — Problem-Shape Literacy

**Objective:** Refresh algorithmic thinking with focus on design-relevant patterns and trade-offs.

**Target Primers (Batch 5A: 4 primers):**
1. Search Algorithms (foundational — BFS, DFS, A*, Dijkstra)
2. Sorting and Ordering (foundational — comparison sorts, topological sort)
3. Recursion and Aggregation (high-value — recursive patterns, divide-and-conquer)
4. Dynamic Programming (high-value — optimization under constraints)

**Target Primers (Batch 5B: 4 primers):**
5. Greedy Methods (practical — local optimization)
6. Graph Coloring (practical — constraint satisfaction)
7. Geometric Algorithms (specialized — spatial reasoning)
8. Stochastic Methods (specialized — Monte Carlo, simulated annealing)

**Agent Assignments:**
- **Researcher:** Algorithm taxonomy, canonical resources, complexity analysis
- **Writer-Editor:** Draft primers following TEMPLATE_ALGORITHMIC.md
- **Diagrammer:** Visualize algorithm flow and problem transformations
- **Lexical Analyst:** Ensure clarity without losing precision
- **Curator:** Mathematical notation consistency, structural validation

**Work Streams:**
1. **Research phase:** 1–2 days per batch
   - Identify canonical algorithm references
   - Document complexity classes
   - Gather problem-to-algorithm mappings
   
2. **Drafting phase:** 2–3 days per batch
   - Explain intuition before mechanics
   - Provide pseudocode and complexity analysis
   - Include design-relevant trade-offs
   
3. **Diagramming phase:** 1 day per batch
   - Visualize problem transformations
   - Illustrate decision trees or state spaces
   
4. **Review phase:** 1 day per batch
   - Lexical clarity check (avoid academic jargon)
   - Curator mathematical consistency
   - Build verification
   
5. **Integration phase:** 0.5 days per batch
   - Update family index
   - Cross-reference with architectural primers
   - Link from related practices

**Dependencies:**
- Phase 2 completed (diagramming literacy established)
- Notation conventions defined
- Template validated with pilot primer

**Validation Criteria:**
- [ ] Intuition-first explanations
- [ ] Complexity analysis present
- [ ] Trade-offs clearly articulated
- [ ] Diagrams aid understanding
- [ ] 2–5 authoritative references
- [ ] Family index updated

**Duration Estimate:** 3–4 weeks (2 batches × 2 weeks)

---

### Phase 6: Consolidation & Quality Assurance

**Objective:** Ensure structural integrity, cross-primer coherence, and publication readiness.

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
- ⬜ Audit report with corrections applied
- ⬜ Cross-reference map and link verification
- ⬜ Updated navigation structure
- ⬜ Performance benchmark report
- ⬜ Translation preparation package
- ⬜ Accessibility compliance report
- ⬜ Staging environment validated

**Dependencies:**
- All Phase 1–5 primers completed
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

### Phase 7: Expansion & Iteration (Future)

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
Phase 0 (Foundation)
    ↓
Phase 1 (Programming Languages Batch 1A) ← Establishes agent workflow
    ↓
┌───┴───┬───────┬───────┐
│       │       │       │
Phase 1B Phase 2A Phase 3A (parallel start possible after 1A validation)
│       │       │
Phase 2B Phase 3B (sequential within families)
│       │
└───┬───┴───────┘
    ↓
Phase 4 (Architectural) ← Requires diagramming primers from Phase 2
    ↓
Phase 5 (Algorithmic) ← Requires diagramming literacy
    ↓
Phase 6 (Consolidation) ← All content complete
    ↓
Phase 7 (Expansion) ← Continuous iteration
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

1. **Immediate (Human approval required):**
   - Review and approve this roadmap
   - Validate Phase 0 completion criteria
   - Select pilot primer for Phase 1 workflow validation

2. **Phase 0 Completion (Project Planner + Bootstrap Bill):**
   - Create quality checklist template
   - Document build verification workflow
   - Set up agent task tracking

3. **Phase 1 Kickoff (after approval):**
   - Researcher: Begin resource gathering for Batch 1A (Python, Perl, Rust, JS/TS)
   - Writer-Editor: Align existing Python/Perl primers to template
   - Curator: Prepare validation checklist

---

**Roadmap Version:** 1.0  
**Last Updated:** 2025-11-13  
**Status:** Pending human approval  
**Next Review:** After Phase 0 completion