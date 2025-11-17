# Programming Language Primer Creation Directive

> Process guide for creating comprehensive programming language primers following the established template structure.

## Overview

Programming language primers are educational resources designed for developers who already know how to code but want to feel at home in a new ecosystem quickly and sustainably. They emphasize understanding over memorization, teaching how a language "thinks" rather than just how it's written.

## Location and Structure

- **Directory**: `content/en/primers/`
- **Template**: Follow the 10-section structure from `src/templates/TEMPLATE_PROGRAMMING_PRIMER.md`
- **File naming**: Use language name in lowercase (e.g., `perl.md`, `python.md`)
- **Images**: 
  - Full logo: `static/images/primers/{language}_logo.webp`
  - Thumbnail: `static/images/thumbnails/primers/{language}_logo.webp`

## Required Front Matter

```toml
+++
title = "{Language} Primer"
subtitle = "{Language's defining philosophy or motto}"
aliases = ["{language}-primer", "programming-languages/{language}"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "{YYYY-MM-DD}T{HH:MM:SS}+00:00"
tags = ["programming", "{language}", "primer", "reference", "intermediate"]
summary = """
{2-3 sentence summary capturing the language's core philosophy, key characteristics, and primary use cases}
"""
image = "primers/{language}_logo"
+++
```

## Template Structure (10 Sections)

### 1. Language Philosophy
- Core values and worldview
- The "spirit" of the language (e.g., "TIMTOWTDI" for Perl, "One obvious way" for Python)
- Trade-offs the language optimizes for
- Cultural norms and community mindset
- When to use this language (ideal domains)

### 2. Syntax and Naming Conventions
- Variable, function, class, and constant naming patterns
- Module and package structure conventions
- Style guide reference (e.g., PEP 8, perlstyle)
- Idiomatic syntax examples with tables
- Formatter tools and linters (e.g., Black, Perl::Tidy)

### 3. Version and Dependency Management
- Version managers (e.g., pyenv/perlbrew, nvm, rbenv)
- Environment isolation tools
- Dependency managers and lockfile formats
- Project initialization workflows
- Common pitfalls and best practices

### 4. Build and Packaging Tooling
- Canonical build tool(s) by era (legacy vs. modern)
- Build lifecycle (build → test → publish)
- Standard project layout with example tree
- Configuration file formats (e.g., pyproject.toml, cpanfile, package.json)
- Publishing/distribution basics

### 5. Testing Frameworks
- Testing philosophy in the ecosystem
- Core frameworks (de facto standard vs. alternatives)
- Test types: unit, integration, property-based
- Test directory structure conventions
- Example test file with assertions
- Coverage and quality tooling

### 6. Programming Idioms
Demonstrate **all code examples using a TODO application domain** with consistent naming (e.g., `TaskManager`, `Task`, `TaskState`).

#### 6.1 Object-Oriented Idioms
- Language-specific OO features (classes, interfaces, traits)
- Example: Task entity with state transitions
- When to reach for OO in this ecosystem

#### 6.2 Functional Programming Idioms
- Pure functions, immutability, composition
- Example: Task filtering and transformation pipelines
- When FP patterns shine

#### 6.3 Imperative Programming Idioms
- Control flow and orchestration
- Example: File I/O, CLI commands, task persistence
- Typical use cases

#### 6.4 Idiom Integration
- Layered architecture combining paradigms:
  1. Domain core (pure logic)
  2. Application services (stateful coordination)
  3. Orchestration (I/O, CLI, adapters)

### 7. Workspace Bootstrap
Seven-step local environment setup:
1. Install system prerequisites (build tools, libraries)
2. Provision language runtime (version manager)
3. Install package manager
4. Initialize project with dependencies
5. Set up automation (Makefile, scripts)
6. Configure quality gates (linters, formatters, pre-commit hooks)
7. Scaffold domain application (TODO app structure)

### 8. Quickstart Setup (Unix)
Step-by-step commands for macOS, Ubuntu, and Linux:
- System dependencies (apt/brew install)
- Runtime installation (version manager)
- Tool installation (package managers, CLI tools)
- Project scaffolding
- Verification steps
- Optional IDE/editor configuration
- Convenience aliases

### 9. First-Time Verification Checklist
Table format with:
- Check description
- Command to run
- Expected output/result
- Troubleshooting notes for common failures

### 10. Appendix
- **Core References**: Official docs, style guides, key tools
- **Practice Accelerators**: Weekly habits, rebuild exercises, experimentation tips
- **Recovery Moves**: Common environment issues and fixes
- **Common Pitfalls**: Language-specific gotchas with examples
- **Modern Features**: Recent language additions (version-gated)
- **Further Learning**: Newsletters, communities, curated resources

## Content Guidelines

### Code Examples
- **All examples use TODO application domain**
- Use consistent naming: `Task`, `TaskManager`, `TaskState`, `TaskRepository`
- Include realistic features: title, state (todo/in_progress/done), due dates, tags
- Show state transitions, filtering, persistence patterns
- Keep examples self-contained and production-ready

### Writing Style
- Technical but accessible to polyglot developers
- Explain "why" not just "what"
- Compare to other ecosystems where helpful
- Use tables for tool comparisons and naming conventions
- Include shell commands in fenced code blocks with language tags
- Backtick inline code for tool names: `perlbrew`, `cpanm`, `Moose`

### Tools and Ecosystem
- Cover both legacy and modern tooling
- Explain when teams use each approach
- Provide migration/compatibility notes
- Reference official documentation URLs
- Include version numbers where stability matters

## CHANGELOG Entry Format

Add to "Unreleased → Added" section:

```markdown
- New programming primer: [{Language} Primer](/primers/{language}) - Comprehensive guide to modern {Language} development covering language philosophy, syntax, tooling (`{tool1}`, `{tool2}`, `{tool3}`), testing frameworks, and programming idioms (OO with `{framework}`, functional, imperative) using a TODO application domain
```

## Quality Checklist

Before submission:
- [ ] All 10 sections present and complete
- [ ] TODO application domain used in all code examples
- [ ] Front matter includes all required fields
- [ ] Hugo build succeeds: `hugo --gc --minify --buildDrafts=false`
- [ ] Page renders at `/primers/{language}/`
- [ ] CHANGELOG.md updated
- [ ] Language logo images added (if available)
- [ ] Inline code uses backticks for tool names
- [ ] Links to official documentation verified
- [ ] No placeholder or TODO markers in content

## Common Particularities

### Language-Specific Focus Areas
- **Perl**: Sigils ($/@/%), TIMTOWTDI, CPAN ecosystem, Moose/Moo OO
- **Python**: Zen of Python, indentation, type hints, Poetry/pip ecosystem
- **JavaScript/TypeScript**: Event loop, async patterns, npm/yarn, bundlers
- **Ruby**: Blocks and procs, gems, bundler, Rails influence
- **Go**: Goroutines, interfaces, modules, simplicity philosophy

### Build System Eras
Many languages have 2-3 generation shifts:
1. Classic/legacy tools (still in production)
2. Transitional improvements
3. Modern unified approaches

Document all layers with "why teams use it" context.

### Testing Culture
Varies by ecosystem:
- Perl: TAP protocol, comprehensive CPAN coverage expectations
- Python: pytest dominance, doctest for documentation
- JavaScript: Jest/Mocha evolution, async testing patterns
- Go: Built-in testing, table-driven tests

Match primer to ecosystem expectations.

## Example Reference

See existing primers:
- `content/en/primers/python.md` — 405 lines, modern Python 3.12+ workflow
- `content/en/primers/perl.md` — 625 lines, Moose/Moo OO, CPAN ecosystem

Length varies by language complexity; aim for comprehensive coverage over brevity.
