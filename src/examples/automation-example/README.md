# Agent Framework Example

This directory contains a shareable repository template that illustrates the use of a generic agent-based automation framework in software projects. The framework enables multi-agent collaboration through specialized agent profiles and comprehensive documentation scaffolding.

## Purpose

This example demonstrates how to structure agent configurations, documentation templates, and workflow orchestration for efficient AI-assisted development. It can be used as a starting point for projects that want to leverage agent-based automation.

## Contents

### Agent Configuration Files

**Location:** `agents/`

This directory contains specialized agent profiles that define:
- Agent purpose and specialization
- Collaboration contracts
- Tool access permissions
- Mode defaults (analysis, creative, meta)
- Initialization patterns

**Available Agent Profiles:**

1. **architect.agent.md** - System architecture and design decisions
2. **backend-dev.agent.md** - Backend service implementation
3. **bootstrap-bill.agent.md** - Repository structure and scaffolding
4. **build-automation.agent.md** - CI/CD pipeline design
5. **curator.agent.md** - Content quality and consistency
6. **diagrammer.agent.md** - Visual diagram generation
7. **frontend.agent.md** - Frontend development
8. **lexical.agent.md** - Terminology and glossary management
9. **manager.agent.md** - Multi-agent coordination and routing
10. **project-planner.agent.md** - Strategic planning and roadmaps
11. **researcher.agent.md** - Research and source verification
12. **scribe.agent.md** - Documentation and note-taking
13. **synthesizer.agent.md** - Content integration and synthesis
14. **translator.agent.md** - Cross-language translation
15. **writer-editor.agent.md** - Content editing and refinement

**Configuration Registry:**
- `specialist-agents.json` - Machine-readable agent registry with metadata

### Documentation Templates

**Location:** `docs/`

Bootstrap artifacts and reference documentation for multi-agent collaboration:

1. **REPO_MAP.md** - High-level directory structure and purposes
2. **SURFACES.md** - Integration points, APIs, and build commands
3. **CONTEXT_LINKS.md** - Agent instructions and context hierarchy
4. **WORKFLOWS.md** - Build processes and CI/CD pipelines

These files minimize agent re-parsing of repositories by providing structured context upfront.

### Content Templates

**Location:** `templates/`

Standardized templates for content creation:
- **TEMPLATE_SPECIALIST_AGENT.agent.md** - Agent profile scaffold

## Usage Scenarios

### Scenario 1: New Project Setup

1. Copy the `agents/` directory to your project's `.github/agents/`
2. Copy documentation templates to your project's `docs/` directory
3. Customize agent profiles for your project's specific needs
4. Update `specialist-agents.json` with your agent configurations
5. Create repository-level `AGENTS.md` with project-specific constraints

### Scenario 2: Adding a New Agent

1. Copy `templates/TEMPLATE_SPECIALIST_AGENT.agent.md` to `agents/`
2. Fill in agent purpose, specialization, and collaboration contract
3. Define available tools and mode defaults
4. Register the agent in `specialist-agents.json`
5. Update documentation references in `docs/CONTEXT_LINKS.md`

### Scenario 3: Multi-Agent Workflow

1. Use `manager.agent.md` to coordinate multiple agents
2. Agents reference `docs/` files for context
3. Each agent operates within its specialization boundaries
4. Manager tracks status and prevents conflicts
5. Artifacts are handed off between agents sequentially

### Scenario 4: Documentation Bootstrap

1. Use `bootstrap-bill.agent.md` to scan repository structure
2. Generate `REPO_MAP.md`, `SURFACES.md`, `WORKFLOWS.md`
3. Update `CONTEXT_LINKS.md` with agent profiles
4. Maintain documentation alongside code changes
5. Provide quick onboarding for new agents and developers

## Framework Architecture

### Instruction Hierarchy

The framework operates on a clear instruction hierarchy:
1. **System directives** (highest priority)
2. **Developer guidance** (middle priority)
3. **User requests** (lowest priority)

This ensures safety and consistency across agent operations.

### Context Layers

Agents load context from multiple layers:
- **Global Principles** - Organization-wide protocols
- **Operational Context** - Day-to-day operational rules
- **Strategic Context** - Long-term strategic direction
- **Command Aliases** - Shorthand command mappings
- **System Bootstrap** - Initial setup procedures
- **Localized Protocol** - Repository-specific rules

### Agent Modes

Agents operate in different modes for different tasks:
- **/analysis-mode** - Structured reasoning and technical analysis
- **/creative-mode** - Generative narrative and ideation
- **/meta-mode** - Process reflection and validation

### Collaboration Patterns

Agents follow collaboration contracts:
- Ask clarifying questions when uncertainty > 30%
- Use ❗️ for critical deviations, ✅ for alignment
- Respect reasoning modes across handoffs
- Never override higher-priority directives
- Maintain traceability and version control

## Integration with CI/CD

The framework integrates with standard CI/CD workflows:
- Agents can read GitHub Actions configurations
- Workflow orchestration through manager agent
- Build automation through build-automation agent
- Quality gates through curator agent
- Documentation updates through scribe agent

## Best Practices

### Agent Design
- Keep agent specializations narrow and focused
- Define clear boundaries of what agent should avoid
- Specify success criteria explicitly
- Document collaboration patterns

### Context Management
- Keep documentation current with code changes
- Use structured formats (TOML, JSON, Markdown)
- Cross-link related concepts
- Version control all agent configurations

### Workflow Orchestration
- Use manager agent for multi-agent coordination
- Maintain status tracking documents
- Avoid conflicting edits across agents
- Log hand-offs chronologically

### Quality Assurance
- Run consistency checks via curator agent
- Validate terminology via lexical agent
- Review outputs through editor agent
- Test integrations regularly

## Customization Guide

### Adapting to Your Project

1. **Update Context Sources**
   - Replace organization references with your project details
   - Update URLs in agent profiles
   - Customize operational and strategic context

2. **Adjust Agent Specializations**
   - Add or remove agents based on project needs
   - Modify tool permissions per agent
   - Update mode defaults for your workflow

3. **Configure Documentation Structure**
   - Adapt `REPO_MAP.md` to your directory structure
   - Update `SURFACES.md` with your build commands
   - Customize `WORKFLOWS.md` for your CI/CD

4. **Define Project Constraints**
   - Create repository-level `AGENTS.md`
   - Specify active constraints
   - Document communication rules

## License and Attribution

This framework example is provided as a template for agent-based automation. When using this template:
- Remove placeholder text and customize for your project
- Update context sources to reference your organization
- Adapt agent profiles to your specific needs
- Maintain attribution to original framework concepts

## Further Reading

For more information on agent-based development:
- Multi-agent systems and collaboration patterns
- CI/CD automation best practices
- Documentation-driven development
- Context management in AI systems

---

**Note:** This is a generic framework template. All references to specific organizations, individuals, or projects have been anonymized. Replace placeholders with your own project information when implementing.
