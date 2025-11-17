# Agent Framework Configuration

## Purpose

This file defines repository-specific agent behavior, constraints, and operational context. It serves as the primary configuration point for customizing the agent framework to your project's needs.

## Instruction Hierarchy

The agent framework operates on a clear instruction hierarchy to ensure safety, consistency, and alignment with project goals:

1. **System directives** (highest priority) - Core safety and operational rules
2. **Strategic context** (from agents/strategic-context.md) - Long-term direction and principles
3. **Operational guidelines** (from agents/operational-reference.md) - Day-to-day practices
4. **Local configuration** (this file) - Repository-specific constraints
5. **User requests** (lowest priority) - Task-specific instructions

**Critical Rule:** Lower-priority instructions cannot override higher-priority directives. When conflicts arise, agents must clarify with users rather than assume intent.

## Repository Context

### Project Overview

**Project Name:** [Your Project Name]

**Description:** [Brief description of what this project does]

**Technology Stack:**
- [Language/Framework 1]
- [Language/Framework 2]
- [Key dependencies]

**Key Directories:**
- `/src` - [Description]
- `/test` - [Description]
- `/docs` - [Description]
- `/config` - [Description]

### Build and Development

**Build Command:**
```bash
[Your build command, e.g., npm run build]
```

**Test Command:**
```bash
[Your test command, e.g., npm test]
```

**Development Server:**
```bash
[Your dev server command, e.g., npm run dev]
```

**Linting:**
```bash
[Your linting command, e.g., npm run lint]
```

## Active Constraints

### Code Modification Rules

- **Preserve Existing Functionality:** Do not modify working code unless explicitly requested
- **Minimal Changes:** Make the smallest possible changes to achieve goals
- **Test Coverage:** Maintain or improve test coverage with all changes
- **Style Consistency:** Follow existing code style and formatting conventions
- **Documentation:** Update documentation when changing functionality

### File System Rules

- **Generated Files:** Never manually edit files in [list directories like `/dist`, `/build`, `/node_modules`]
- **Configuration Files:** Require explicit approval before modifying [list critical config files]
- **Protected Paths:** Do not modify [list any protected directories or files]

### Version Control Rules

- **Branch Strategy:** [Describe branching strategy, e.g., feature branches from main]
- **Commit Messages:** Use [conventional commits / semantic commits / your standard]
- **Review Requirements:** [List any PR/review requirements]
- **Protected Branches:** [List branches that require special handling]

### Security Constraints

- **No Credentials:** Never commit credentials, tokens, or secrets
- **Dependency Updates:** [Specify policy for updating dependencies]
- **Security Scanning:** [List required security checks]
- **Data Privacy:** [Any data handling restrictions]

## Communication Rules

### Status Reporting

- Use structured status indicators: ✅ (complete), ⚠️ (warning), ❗️ (critical), ❓ (unclear)
- Report progress at meaningful checkpoints
- Document assumptions and uncertainties explicitly
- Escalate ambiguities rather than making assumptions

### Collaboration Protocol

- **Tone:** [Professional / Casual / Technical - specify preference]
- **Verbosity:** [Concise / Detailed - specify preference]
- **Format:** [Prefer markdown / plain text / specific format]
- **Questions:** Ask clarifying questions when confidence < [threshold, e.g., 70%]

### Hand-off Standards

When agents hand off work:
1. Summarize work completed
2. Document current state
3. List next steps
4. Flag any blockers or concerns
5. Provide relevant context for continuation

## Agent-Specific Guidelines

### Architect
- [Any specific guidelines for architecture decisions]
- [Preferred documentation formats, e.g., ADR, C4 diagrams]

### Developer Agents (Backend, Frontend)
- [Code style preferences]
- [Testing requirements]
- [Performance considerations]

### Scribe/Documentation
- [Documentation style guide]
- [Target audience considerations]
- [Format preferences]

### Curator
- [Quality standards]
- [Consistency requirements]
- [Validation criteria]

### Manager
- [Coordination preferences]
- [Status tracking methods]
- [Escalation procedures]

## Context Management

### Documentation Structure

**Primary Documentation:**
- `docs/REPO_MAP.md` - High-level repository structure
- `docs/SURFACES.md` - Integration points and build commands
- `docs/WORKFLOWS.md` - Build, test, and CI/CD processes
- `docs/CONTEXT_LINKS.md` - Agent instructions and references

**Reference Documentation:**
- `docs/references/` - Detailed technical references
- `docs/references/TODO_BOOTSTRAP.md` - Outstanding tasks and gaps

### Agent Profiles

Available agents are defined in `.github/agents/` (or `agents/`):
- `architect.agent.md` - System architecture and design
- `backend-dev.agent.md` - Backend implementation
- `bootstrap-bill.agent.md` - Repository scaffolding
- `build-automation.agent.md` - CI/CD and automation
- `curator.agent.md` - Quality and consistency
- `diagrammer.agent.md` - Visual diagrams
- `frontend.agent.md` - Frontend implementation
- `lexical.agent.md` - Terminology management
- `manager.agent.md` - Multi-agent coordination
- `project-planner.agent.md` - Strategic planning
- `researcher.agent.md` - Research and verification
- `scribe.agent.md` - Documentation and notes
- `synthesizer.agent.md` - Content integration
- `translator.agent.md` - Localization
- `writer-editor.agent.md` - Content refinement

## Quality Standards

### Code Quality

**Required Checks:**
- [ ] Linting passes
- [ ] Tests pass
- [ ] Build succeeds
- [ ] No new warnings
- [ ] Documentation updated

**Optional Checks:**
- [ ] Performance benchmarks
- [ ] Security scan
- [ ] Code coverage threshold
- [ ] Accessibility checks

### Documentation Quality

**Requirements:**
- Clear and concise
- Accurate and up-to-date
- Includes examples where appropriate
- Links to related documentation
- Follows project style guide

### Review Criteria

Before considering work complete:
1. Objective achieved
2. No unintended side effects
3. Tests pass
4. Documentation current
5. Code follows conventions
6. Changes are minimal
7. Commits are clean

## Technology-Specific Guidelines

### [Language/Framework 1]
- [Specific conventions]
- [Common patterns]
- [Tools and commands]

### [Language/Framework 2]
- [Specific conventions]
- [Common patterns]
- [Tools and commands]

## Environment Configuration

### Development Environment

**Required Tools:**
- [Tool 1] version [X.Y]
- [Tool 2] version [X.Y]

**Environment Variables:**
```bash
# Example
export NODE_ENV=development
export DEBUG=true
```

**Setup Steps:**
```bash
# Installation
[Installation commands]

# Configuration
[Configuration steps]

# Verification
[How to verify setup]
```

### CI/CD Environment

**Pipeline:** [GitHub Actions / GitLab CI / Jenkins / etc.]

**Key Workflows:**
- `.github/workflows/[workflow].yml` - [Purpose]

**Deployment:**
- [Deployment process overview]

## Error Handling

### When Things Go Wrong

1. **Read error messages carefully**
2. **Check recent changes**
3. **Consult documentation**
4. **Search for similar issues**
5. **Ask for clarification if needed**
6. **Document the resolution**

### Common Issues

**Issue:** [Common problem]
- **Solution:** [How to resolve]

**Issue:** [Another common problem]
- **Solution:** [How to resolve]

## Customization Notes

### How to Customize This File

1. **Repository Context:** Update with your project details
2. **Active Constraints:** Add project-specific rules and restrictions
3. **Communication Rules:** Define your preferred communication style
4. **Agent Guidelines:** Customize per-agent instructions
5. **Quality Standards:** Define your quality gates and requirements
6. **Technology Guidelines:** Add language/framework-specific guidance

### Regular Maintenance

This file should be reviewed and updated:
- **Weekly:** For active projects with frequent changes
- **Monthly:** For stable projects
- **After major changes:** Architecture, tech stack, or process updates

### Version History

Track significant changes to this configuration:

```
[YYYY-MM-DD] - Initial configuration
[YYYY-MM-DD] - Added [what was added]
[YYYY-MM-DD] - Updated [what was updated]
```

## Support and Resources

### Getting Help

- **Documentation:** See `docs/` directory
- **Agent Profiles:** See `.github/agents/` directory
- **Examples:** [Link to examples if available]
- **Community:** [Link to community resources if available]

### External References

- [Project documentation site]
- [Technology documentation]
- [Team wiki or knowledge base]
- [Other relevant resources]

## Notes

**Remember:** This AGENTS.md file defines repository-specific behavior. For general framework guidelines, see:
- `agents/strategic-context.md` - Long-term strategy and principles
- `agents/operational-reference.md` - Day-to-day operational practices
- `agents/command-aliases.md` - Common commands and shortcuts
- `agents/system-bootstrap.md` - Setup and initialization procedures
- `agents/guidelines/rehydrate.md` - Context recovery procedures

---

**Last Updated:** [Date]
**Maintained By:** [Team or individual responsible]
