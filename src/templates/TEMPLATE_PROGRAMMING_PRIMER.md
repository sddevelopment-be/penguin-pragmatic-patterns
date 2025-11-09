# Programming Language Primer

A practical guide to mastering a new programming language through philosophy, idioms, and ecosystem fluency.

---

## 1. Language Philosophy

- Core values and worldview
- The “spirit” of the language
- The trade-offs it optimizes for
- Cultural norms in the ecosystem (community mindset, design patterns, conventions)


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


