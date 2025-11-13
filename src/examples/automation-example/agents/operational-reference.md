# Operational Reference

## Purpose

This document provides day-to-day operational guidelines for agents working within this framework. It defines standard practices, tooling preferences, and tactical execution patterns.

## Core Operating Principles

### 1. Minimal Change Philosophy

- Make the smallest possible changes to achieve the goal
- Preserve existing functionality unless explicitly asked to change it
- Avoid refactoring unrelated code
- Focus on surgical, targeted modifications

### 2. Safety and Validation

- Always validate changes before committing
- Test iteratively and incrementally
- Use existing test infrastructure
- Never remove or modify working tests without explicit instruction
- Disable pagers in git commands (use `--no-pager`)

### 3. Context Preservation

- Document assumptions and uncertainties
- State "I don't know" rather than speculate
- Expose trade-offs explicitly
- Cross-reference related decisions

## Tool Usage Guidelines

### Version Control

**Git Commands:**
- Always use `git --no-pager` to avoid interactive prompts
- Prefer `git status` and `git diff` before making changes
- Use descriptive commit messages
- Never force push or rebase
- Avoid modifying commit history

**Branch Management:**
- Work on feature branches
- Keep changes focused and atomic
- Follow existing branching conventions

### Code Search and Navigation

**Preferred Tools:**
- Use `grep` or `rg` (ripgrep) for code search
- Use `find` for file discovery
- Leverage language-specific tools when available
- Use `tree` for directory visualization (with depth limits)

**Search Best Practices:**
- Search before modifying to understand context
- Use case-insensitive search when appropriate
- Include file type filters to narrow results
- Document search patterns for repeatability

### File Operations

**Reading Files:**
- Use line-number views for large files
- Focus on relevant sections
- Cross-reference related files

**Editing Files:**
- Make targeted edits with precise old_str/new_str replacements
- Preserve formatting and style
- Maintain consistency with surrounding code
- Include enough context in old_str to ensure uniqueness

**Creating Files:**
- Follow existing naming conventions
- Use appropriate file extensions
- Place files in logical directories
- Include necessary headers/comments

## Build and Test Practices

### Build Process

1. **Understand before building:**
   - Check for build configuration files (package.json, Makefile, pom.xml, etc.)
   - Read build documentation
   - Identify build commands

2. **Execute builds:**
   - Run builds with appropriate timeouts
   - Capture and analyze build output
   - Address build failures incrementally

3. **Validate results:**
   - Verify expected outputs
   - Check for warnings and errors
   - Confirm no unintended side effects

### Testing Strategy

1. **Pre-change testing:**
   - Run existing tests to establish baseline
   - Document any pre-existing failures
   - Focus only on tests related to your changes

2. **Iterative testing:**
   - Test after each significant change
   - Fix issues immediately
   - Don't accumulate technical debt

3. **Test creation:**
   - Add tests for new functionality
   - Follow existing test patterns
   - Keep tests focused and maintainable

## Documentation Standards

### Code Comments

- Add comments only when necessary
- Match existing comment style
- Explain "why" not "what"
- Keep comments concise and relevant

### Documentation Updates

- Update docs when changing functionality
- Keep documentation synchronized with code
- Use clear, precise language
- Include examples where helpful

### Commit Messages

Format:
```
<type>: <short description>

<optional detailed explanation>
```

Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

## Error Handling

### When Things Go Wrong

1. **Read error messages carefully**
2. **Check recent changes**
3. **Consult relevant documentation**
4. **Ask for clarification if uncertain**
5. **Document the resolution**

### Common Issues

- **Build failures:** Check dependencies, environment, configuration
- **Test failures:** Verify test setup, data, and expectations
- **Merge conflicts:** Understand both sides, preserve intent
- **Missing dependencies:** Check package managers, installation docs

## Collaboration Patterns

### Working with Multiple Agents

- Respect agent specialization boundaries
- Hand off work explicitly
- Maintain status documents
- Avoid conflicting edits
- Log decisions and rationale

### Communication Protocol

- Use clear, structured language
- Employ status markers (✅, ❗️, ⚠️)
- Ask questions when uncertainty is high
- Confirm before high-impact operations
- Report progress regularly

## Quality Standards

### Code Quality

- Follow existing style conventions
- Maintain consistent formatting
- Use meaningful names
- Keep functions focused and small
- Minimize complexity

### Review Criteria

Before considering work complete:
- [ ] Changes accomplish stated goal
- [ ] No unintended side effects
- [ ] Tests pass
- [ ] Documentation updated
- [ ] Code follows style guidelines
- [ ] Commits are clean and descriptive

## Resource Management

### Performance Considerations

- Be mindful of operation timeouts
- Use appropriate wait times for long-running operations
- Monitor resource usage
- Avoid unnecessary re-computation

### File System

- Use temporary directories for scratch work
- Clean up temporary files
- Respect .gitignore patterns
- Don't commit generated artifacts

## Continuous Improvement

### Learning from Experience

- Document unexpected behaviors
- Note effective patterns
- Share learnings across agents
- Update guidelines based on experience

### Feedback Loop

- Request clarification when needed
- Suggest improvements to processes
- Identify repetitive patterns for automation
- Contribute to knowledge base

---

**Note:** These operational guidelines should be adapted to your specific project context. The principles remain consistent, but implementation details may vary based on technology stack, team preferences, and project constraints.
