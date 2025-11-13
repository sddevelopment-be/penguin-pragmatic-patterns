# Command Aliases

## Purpose

This document defines shorthand commands and aliases that agents can use for common operations. It provides a consistent vocabulary for agent-agent and agent-human communication.

## Agent Mode Commands

### Analysis Mode
- `/analysis-mode` - Switch to structured reasoning and technical analysis
- `/analyze` - Perform analysis on current context
- `/decompose` - Break down complex problems into components

### Creative Mode
- `/creative-mode` - Switch to generative narrative and ideation
- `/ideate` - Generate ideas or alternatives
- `/explore` - Explore solution space

### Meta Mode
- `/meta-mode` - Reflect on process and approach
- `/reflect` - Review and assess current work
- `/optimize` - Identify improvements to process

## Status Indicators

### Confidence Levels
- `✅` - High confidence, validated
- `⚠️` - Medium confidence, needs review
- `❗️` - Low confidence or critical issue
- `❓` - Uncertain, needs clarification

### Work Status
- `[WIP]` - Work in progress
- `[DONE]` - Completed
- `[BLOCKED]` - Waiting on dependency
- `[REVIEW]` - Ready for review

## Common Operations

### Repository Operations
- `/scan` - Analyze repository structure
- `/map` - Create repository map
- `/index` - Index files for search

### Code Operations
- `/read <path>` - Read and analyze file
- `/edit <path>` - Modify file
- `/create <path>` - Create new file
- `/delete <path>` - Remove file (use with caution)

### Build and Test
- `/build` - Execute build process
- `/test` - Run test suite
- `/lint` - Run linters
- `/format` - Format code

### Documentation
- `/doc <topic>` - Document specified topic
- `/update-docs` - Refresh documentation
- `/generate-docs` - Auto-generate from code

### Search and Discovery
- `/find <pattern>` - Search for pattern
- `/grep <text>` - Search file contents
- `/where <concept>` - Locate concept in codebase

## Agent Communication

### Handoff Commands
- `/handoff <agent>` - Transfer work to another agent
- `/delegate <agent> <task>` - Assign task to agent
- `/consult <agent>` - Request input from agent

### Coordination
- `/status` - Report current status
- `/sync` - Synchronize with other agents
- `/checkpoint` - Mark completion of milestone

### Request for Help
- `/help <topic>` - Request assistance
- `/clarify <question>` - Request clarification
- `/escalate <issue>` - Escalate to human

## File Patterns

### Common Paths
- `@root` - Repository root directory
- `@src` - Source code directory
- `@test` - Test directory
- `@docs` - Documentation directory
- `@config` - Configuration files

### File Types
- `*.src` - All source files
- `*.test` - All test files
- `*.config` - All configuration files
- `*.doc` - All documentation files

## Git Operations

### Information
- `g st` - Git status (`git status`)
- `g log` - Git log (`git log --oneline`)
- `g diff` - Git diff (`git diff`)
- `g show` - Show commit details

### Branch Operations
- `g br` - List branches (`git branch`)
- `g co` - Checkout (`git checkout`)
- `g merge` - Merge branch

### Common Patterns
- `git --no-pager <command>` - Disable pager for automated use
- Always use `--no-pager` flag in automated contexts

## Build System Shortcuts

### Node.js/npm
- `npm i` - Install dependencies
- `npm run build` - Build project
- `npm test` - Run tests
- `npm run lint` - Run linter

### Python
- `pip install` - Install dependencies
- `pytest` - Run tests
- `pylint` - Run linter
- `black` - Format code

### Java/Maven
- `mvn clean` - Clean build artifacts
- `mvn install` - Build and install
- `mvn test` - Run tests
- `mvn verify` - Run verification

### Other
- `make` - Execute Makefile target
- `cargo build` - Rust build
- `go build` - Go build
- `dotnet build` - .NET build

## Documentation Shortcuts

### Markdown
- `h1`, `h2`, `h3` - Header levels
- `code` - Code block
- `link` - Hyperlink
- `list` - Bullet list

### Formatting
- `**bold**` - Bold text
- `*italic*` - Italic text
- `` `code` `` - Inline code
- `---` - Horizontal rule

## Agent-Specific Commands

### Architect
- `/adr` - Create Architecture Decision Record
- `/diagram` - Create architectural diagram
- `/trade-off` - Analyze trade-offs

### Scribe
- `/note` - Take note
- `/summarize` - Summarize content
- `/outline` - Create outline

### Curator
- `/validate` - Validate consistency
- `/check` - Run quality checks
- `/reconcile` - Reconcile conflicts

### Manager
- `/plan` - Create work plan
- `/assign` - Assign tasks
- `/track` - Track progress

### Researcher
- `/research` - Research topic
- `/cite` - Add citation
- `/verify` - Verify information

## Context Commands

### Load Context
- `/load <context>` - Load specific context layer
- `/refresh` - Refresh current context
- `/reset` - Reset to default context

### Context Layers
- `/operational` - Load operational guidelines
- `/strategic` - Load strategic context
- `/bootstrap` - Load bootstrap procedures

## Workflow Commands

### Standard Workflows
- `/init` - Initialize new component
- `/setup` - Setup environment
- `/deploy` - Deploy changes
- `/rollback` - Revert changes

### Quality Gates
- `/pre-commit` - Pre-commit checks
- `/pre-push` - Pre-push validation
- `/pre-merge` - Pre-merge review

## Response Patterns

### Standard Responses
- `ACK` - Acknowledged
- `CONFIRM` - Confirmed, proceeding
- `HOLD` - Pausing, awaiting input
- `COMPLETE` - Task completed

### Questions
- `CLARIFY:` - Requesting clarification
- `VERIFY:` - Requesting verification
- `SUGGEST:` - Proposing alternative

## Conventions

### File Naming
- Use kebab-case for files: `my-file.md`
- Use PascalCase for classes: `MyClass.java`
- Use camelCase for variables: `myVariable`
- Use UPPER_CASE for constants: `MY_CONSTANT`

### Directory Structure
- `/src` - Source code
- `/test` - Tests
- `/docs` - Documentation
- `/scripts` - Utility scripts
- `/config` - Configuration

### Commit Message Prefixes
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation change
- `refactor:` - Code refactoring
- `test:` - Test changes
- `chore:` - Maintenance tasks

## Custom Aliases

This section should be customized for your specific project needs. Add project-specific commands, shortcuts, and conventions here.

### Example Project Aliases
```
# Add your project-specific aliases
# /deploy-staging - Deploy to staging environment
# /run-e2e - Run end-to-end tests
# /generate-api - Generate API documentation
```

## Usage Notes

### When to Use Aliases
- To save typing in frequent operations
- To maintain consistency across agents
- To communicate intent clearly
- To standardize common patterns

### When NOT to Use Aliases
- When clarity requires full commands
- When working with unfamiliar teams
- When documentation needs to be explicit
- When aliases might be ambiguous

---

**Note:** This command alias document should be customized to match your project's specific tools, conventions, and workflows. Add or remove aliases as needed to support your team's work patterns.
