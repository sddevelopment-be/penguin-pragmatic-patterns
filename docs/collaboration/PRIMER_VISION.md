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