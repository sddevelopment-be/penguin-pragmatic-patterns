+++
title = "Python Primer"
subtitle = ""
author = "Stijn Dejongh"
outputs = ['html','rss', 'json']
draft = true
date = "2024-06-10T12:00:00+00:00"
tags = ["programming", "python", "primer", "beginners", "introduction"]
+++

## 1. Language Philosophy

> “There should be one — and preferably only one — obvious way to do it.” — *The Zen of Python*

Python prizes clarity over cleverness and treats readability as a social contract. Code should look like well-edited prose: explicit, orthogonal, and easy to explain to the next engineer. The language stays small on purpose so that libraries, not the core grammar, carry most complexity.

- **Human-centric design.** Features exist to keep conversations about code short—naming, indentation, and structure all reinforce collective understanding.
- **Pragmatic dynamism.** Strong introspection and runtime flexibility let you build tools quickly, but the community expects discipline when touching metaprogramming or monkey-patching.
- **Batteries included.** The standard library covers files, networking, parsing, testing, and concurrency so teams can focus on their own logic.
- **Cultural restraint.** Community norms discourage “clever” one-liners when straight code is clearer; idioms evolve from practice, not dogma.

Treat Python as a glue language with range: ideal for orchestration, data analysis, scripting, and prototyping, yet capable of long-lived services when you apply structure intentionally.


## 2. Syntax and Naming Conventions

- Variable and function naming
- Class and constant conventions
- Module and package structure
- Style guide summary (e.g., PEP 8 for Python)
- Examples of idiomatic syntax
- Formatter tools and style enforcers


## 3. Version and Dependency Management

- Environment isolation tools (e.g., pyenv, virtualenv)
- Dependency managers and lockfiles
- Project initialization and dependency workflows
- Common pitfalls and cultural expectations around package management


## 4. Build and Packaging Tooling

- The canonical build tool(s)
- Lifecycle overview (build → test → publish)
- Common file structure and project layout
- Modern conventions (e.g., `pyproject.toml`, `package.json`, etc.)
- Deployment and distribution basics


## 5. Testing Frameworks

- Core philosophy of testing in this language
- Canonical frameworks and libraries
- Unit vs integration vs property-based testing
- Typical test directory structure
- Example test file and run commands


## 6. Programming Idioms

### 6.1 Object-Oriented Idioms
- Key language features (classes, dataclasses, properties)
- Example (Task with states, lifecycle transitions)
- When to use OO in this ecosystem

### 6.2 Functional Programming Idioms
- Pure functions, immutability, and pipelines
- Example (Task transformation and filtering)
- When FP shines and how it coexists with OO

### 6.3 Imperative Programming Idioms
- Straight-line control flow and orchestration
- Example (CLI or script-based workflow)
- Typical use cases and stylistic guidance

### 6.4 Idiom Integration
- Combining OO, FP, and imperative layers
- Realistic architecture layering (domain core → logic utilities → orchestration)


## 7. Workspace Bootstrap

- Prerequisites (toolchains, system dependencies)
- Project structure and Makefile targets
- Setting up Poetry (or equivalent) for dependencies
- Linting, formatting, type-checking, testing
- Pre-commit hooks and CI integration
- Example: full TODO app scaffolding


## 8. Quickstart Setup (Unix)

- Installing system dependencies (build essentials, curl, git)
- Installing pyenv, pipx, and Poetry
- Configuring environment variables
- Validating installations
- Setting up and activating virtual environments
- Basic project creation commands


## 9. First-Time Verification Checklist

- Commands and expected outputs for:
    - Tool version check
    - Environment validation
    - Lint/format/type/test passes
    - Pre-commit and git setup
    - CLI execution test
- Troubleshooting notes


## 10. Appendix

- Links to official docs (language, tools, style guide)
- Recommended learning resources
- Common pitfalls and recovery commands
- Optional IDE/editor configuration (VS Code, JetBrains, etc.)


