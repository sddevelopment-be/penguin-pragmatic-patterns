+++
title = "Markdown Primer"
subtitle = "Lightweight markup for readable, version-controllable documentation"
aliases = ["markdown-primer", "markup-and-diagramming/markdown"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2025-11-13T22:00:00+00:00"
tags = ["documentation", "markdown", "primer", "reference", "markup"]
summary = """
Markdown is a plain-text formatting syntax designed for readability in both raw and rendered form. 
It enables version-controlled documentation, README files, and static site content without requiring 
specialized editors or complex markup languages.
"""
further_exploration = [
    { type="raw", year="?", title = "CommonMark Specification", link = "https://commonmark.org/", site="commonmark.org", author="CommonMark Community" },
    { type="raw", year="?", title = "GitHub Flavored Markdown (GFM)", link = "https://github.github.com/gfm/", site="github.github.com", author="GitHub" },
    { type="raw", title = "Markdown Guide", link = "https://www.markdownguide.org/", site="markdownguide.org", author="Matt Cone", year=2025 },
    { type="raw", title = "Original Markdown Syntax", year=2002, author = "John Gruber", link = "https://daringfireball.net/projects/markdown/syntax", site="daringfireball.net" },
]
image = "primers/markdown_logo"
+++

## 1. Purpose and Philosophy

> Simplicity and readability over feature completeness.

Markdown was created by [John Gruber](https://daringfireball.net/projects/markdown/syntax#philosophy) in 2004 with a clear goal: enable writers to **create formatted documents using plain text that remains readable in its source form**. It prioritizes simplicity and accessibility over feature completeness.

**Strengths:**

- **Human-readable source:** Raw markdown is as legible as rendered output
- **Version control friendly:** Plain text diffs cleanly in Git
- **Universal adoption:** GitHub, GitLab, static site generators, documentation tools
- **Minimal syntax:** Learn the basics in minutes
- **Tool independence:** Edit with any text editor; render with countless tools (VS Code, Typora, static site generators, git hosting platforms)
- **Extensible:** HTML embedding for advanced needs; many flavors/extensions ([GFM](https://github.github.com/gfm/), [MultiMarkdown](https://fletcherpenney.net/multimarkdown/), [Markua](https://markua.com/))

**Limitations:**

- **Inconsistent implementations:** CommonMark, GitHub Flavored Markdown (GFM), and others have variations that can lead to rendering differences (especially with tables, task lists, images, and extensions)
- **Limited semantic structure:** No native support for complex layouts or interactive elements
- **Extensibility via HTML:** Power users embed HTML, breaking portability and reading in pure markdown renderers
- **Table complexity:** Advanced tables require extensions or workarounds

**Use Markdown for:**

- README files, CONTRIBUTING guides, changelogs
- Static site content (Hugo, Jekyll, MkDocs)
- Inline documentation in code repositories
- Personal notes, Zettelkasten systems, wikis

**Avoid Markdown for:**

- Print-quality documents (use LaTeX, word processors, or HTML/CSS) unless converted, parsed through specialized tools
- Complex layouts with precise formatting requirements
- Interactive or dynamic content (unless combined with frameworks)

**Authoritative References:**

- [CommonMark Specification](https://commonmark.org/) — Standardized Markdown syntax
- [GitHub Flavored Markdown (GFM)](https://github.github.com/gfm/) — GitHub's extended syntax
- [Markdown Guide](https://www.markdownguide.org/) — Comprehensive reference and best practices
- [Original Markdown Syntax by John Gruber](https://daringfireball.net/projects/markdown/syntax)

## 2. Core Syntax

**Minimal cheatsheet:**

### Headings

```markdown
# Heading 1

## Heading 2

### Heading 3

#### Heading 4
```

### Text Formatting

```markdown
**Bold text**
*Italic text*
***Bold and italic***
~~Strikethrough~~ (GFM extension)
`Inline code`
```

### Lists

```markdown
Unordered list:

- Item 1
- Item 2
    - Nested item

Ordered list:

1. First item
2. Second item
    1. Nested item
```

### Links and Images

```markdown
[Link text](https://example.com)
[Link with title](https://example.com "Optional title")

![Alt text for image](path/to/image.png)
![Image with title](image.png "Optional title")
```

### Code Blocks

````markdown
```python
def hello():
    print("Hello, world!")
```
````

### Blockquotes

```markdown
> This is a blockquote.
> It can span multiple lines.
>
> — Attribution
```

### Horizontal Rule

```markdown
---
```

### Tables (GFM)

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Data 1   | Data 2   | Data 3   |
| Data 4   | Data 5   | Data 6   |

Alignment:
| Left | Center | Right |
|:-----|:------:|------:|
| A | B | C |
```

### Task Lists (GFM Extension)

```markdown
- [x] Completed task
- [ ] Pending task
```

## 3. Patterns and Idioms

Here are some common usage patterns for using markdown effectively in documentation and READMEs.

### README Structure

Most README files follow a consistent pattern:

```markdown
# Project Name

Brief one-sentence description.

## Installation

\```bash
npm install project-name
\```

## Usage

\```javascript
const project = require('project-name');
project.doSomething();
\```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

MIT License

```

### Documentation Organization

```markdown
# Feature Name

## Overview
High-level description

## Motivation
Why this exists

## Usage
How to use it with examples

## API Reference
Detailed function/class descriptions

## Further Reading
Links to related docs
```

### Linking Within Repository

```markdown
Relative links to other markdown files:
[See the guide](docs/guide.md)

Linking to specific headings:
[Jump to Installation](#installation)

Cross-file heading links:
[See Setup in Guide](docs/guide.md#setup)
```

### Embedding Code Snippets

Inline snippet with highlighting:

```python
# File: src/example.py
def process_data(items):
    return [item.upper() for item in items]
```

### Embedding ASCI DIagrams

Wrapping Ascii diagrams in code blocks for proper rendering:

```asciidoc
  +---------+
  |  Start  |
  +---------+
       |
       v
  +---------+
  | Process |
  +---------+
       |
       v
  +---------+
  |   End   |
  +---------+
```

## 4. Tooling and Rendering

### Editors
- [VS Code](https://code.visualstudio.com/) with Markdown extensions (preview, linting)
- [Typora](https://typora.io/) — WYSIWYG markdown editor
- [Obsidian](https://obsidian.md/) — Note-taking with markdown and linking
- [Zettlr](https://www.zettlr.com/) — Academic markdown editor

### Linters and Formatters
- [markdownlint](https://github.com/DavidAnson/markdownlint) — Style checker and linter
- [Prettier](https://prettier.io/) — Auto-formatter for markdown
- [Remark](https://remark.js.org/) — Markdown processor with plugins

### Static Site Generators
- [Hugo](https://gohugo.io/) — Fast static site generator (used by this site)
- [Jekyll](https://jekyllrb.com/) — GitHub Pages default generator
- [MkDocs](https://www.mkdocs.org/) — Documentation-focused generator
- [Docusaurus](https://docusaurus.io/) — React-based documentation sites

### Rendering Libraries
- [marked](https://github.com/markedjs/marked) — JavaScript markdown parser
- [markdown-it](https://github.com/markdown-it/markdown-it) — Extensible markdown parser
- [Python-Markdown](https://python-markdown.github.io/) — Python implementation
- [CommonMark](https://commonmark.org/help/) — Reference implementation

## 5. Integration

### Version Control

```bash
# All markdown files are plain text, perfect for Git
git add README.md
git commit -m "Update installation instructions"
git diff HEAD~1 README.md  # Clean, readable diffs
```

### CI/CD Documentation Builds

```yaml
# GitHub Actions example
name: Build Docs
on: [ push ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Build with Hugo
        run: |
          hugo --minify
      - name: Lint markdown
        run: |
          npm install -g markdownlint-cli
          markdownlint '**/*.md'
```

### Auto-Generated Documentation

Example usage of badges and links to generated docs in a README.md file:

```markdown
<!-- Embed badges -->
![Build Status](https://github.com/user/repo/workflows/CI/badge.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

<!-- Link to auto-generated API docs -->
See [API Documentation](https://user.github.io/repo/api/)
```

### Documentation as Code

```markdown
Store documentation alongside source:
project/
├── src/
├── docs/
│ ├── architecture.md
│ ├── api-reference.md
│ └── guides/
│ ├── quickstart.md
│ └── advanced.md
└── README.md
```

## 6. Accessibility and Review

### Accessibility Practices

- **Alt text for images:** Always provide meaningful descriptions
  ```markdown
  ![Architecture diagram showing three-layer separation](diagrams/architecture.png)
  ```
- **Descriptive link text:** Avoid "click here"
  ```markdown
  Bad:  [Click here](https://example.com)
  Good: [Read the installation guide](https://example.com/install)
  ```
- **Heading hierarchy:** Use headings in order (don't skip levels)
- **Table headers:** Ensure tables have proper header rows for screen readers

### Review and Versioning

- **Preview before committing:** Use editor preview or local site build
- **Lint for consistency:** Run markdownlint in pre-commit hooks
- **Track changes with Git:** Markdown diffs are human-readable
- **Version documentation with code:** Tag releases include corresponding docs

### Common Pitfalls

- **Inconsistent spacing:** Blank lines around headings, code blocks vary by renderer
- **HTML fallback abuse:** Embedding complex HTML reduces portability
- **Broken relative links:** Test links in rendered context, not just source
- **Forgotten fenced code blocks:** Backticks must match (three for blocks)

## 7. Example and Reference

A complete working example can be seen by downloading this file: [Project README](/attachments/EXAMPLE_README.md)

**Best practices demonstrated:**
- Clear hierarchy of headings
- Code blocks with language hints
- Working examples with explanations
- Relative links to repository files
- Consistent formatting throughout

