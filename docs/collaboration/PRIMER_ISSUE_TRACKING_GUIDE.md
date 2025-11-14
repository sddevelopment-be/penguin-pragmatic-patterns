# Primer Series - Issue Tracking Guide

## Overview

This guide explains how to use GitHub Issues to plan, track, and execute primer series work with both human and agent contributors.

## Quick Start

### For Human Maintainers

1. **Create Strategic Epic** (once):
   - Use template: `primer-epic.yml`
   - Define overall primer series goals and success metrics
   - Example: "Epic: Primer Series Implementation"

2. **Plan Feature Batches** (per phase):
   - Use template: `primer-feature.yml`
   - Plan 2-4 primers per batch
   - Link to parent epic
   - Assign collaboration type and agents
   - Example: "Feature: Phase 1 - Programming Languages Batch"

3. **Create or Assign Tasks** (per primer):
   - Use template: `primer-task.yml`
   - One task per primer
   - Link to parent feature
   - Assign to appropriate agent
   - Example: "Task: Create PowerShell Primer"

4. **Monitor Progress**:
   - Check epic for overall completion percentage
   - Review feature issues for batch status
   - Validate at feature boundaries (quality gates)

### For Agents

1. **Check for assigned tasks**:
   - Look for issues labeled with your agent type
   - Example: `agent-driven` + `primer-series` + `researcher`

2. **Complete assigned work**:
   - Follow implementation steps in task description
   - Update issue with progress comments
   - Mark checklist items as complete

3. **Request review when done**:
   - Complete all acceptance criteria
   - Run validation steps
   - Add `human-review-required` label if needed
   - Link to PR if created

4. **Update coordination files** (if you're Coordinator Manager):
   - `docs/coordination/AGENT_STATUS.md` - Current assignments
   - `docs/coordination/WORKFLOW_LOG.md` - Completion log
   - `docs/coordination/HANDOFFS.md` - Ready-for-next-step tracking

## Issue Templates

### primer-epic.yml
**Purpose:** Strategic planning for entire primer series or major expansions

**When to use:**
- Starting the primer series initiative
- Planning multi-phase expansions
- Tracking long-term strategic goals

**Key fields:**
- Strategic goal and success metrics
- Phases and milestones
- Scope across families
- Dependencies and risks

**Labels:** `epic`, `primer-series`

### primer-feature.yml
**Purpose:** Planning cohesive batches of primers

**When to use:**
- Implementing a roadmap phase
- Creating 2-4 related primers
- Split-focus or single-family batches

**Key fields:**
- Parent epic reference
- Batch approach (split-focus or single-family)
- Specific primers to create
- Deliverables and acceptance criteria
- Agent assignments and workflow steps

**Labels:** `feature`, `primer-series`, `primer-[family]`, `primer-phase-X`

### primer-task.yml
**Purpose:** Creating individual primers

**When to use:**
- Research phase for a primer
- Drafting a specific primer
- Review and validation work
- Integration tasks

**Key fields:**
- Parent feature reference
- Primer family and name
- Implementation steps (research → draft → validate → integrate)
- Acceptance criteria from quality checklist
- Assigned agent and collaboration type

**Labels:** `task`, `primer-series`, `primer-[family]`, collaboration type

## Label System

### Hierarchy Labels
- `epic` - Strategic initiatives
- `feature` - Primer batches
- `task` - Individual primers

### Series and Family Labels
- `primer-series` - All primer work
- `primer-programming` - Programming language primers
- `primer-markup` - Markup and diagramming primers
- `primer-toolchain` - Toolchain and automation primers
- `primer-architectural` - Architectural primers
- `primer-algorithmic` - Algorithmic primers

### Phase Labels
- `primer-phase-0` - Foundation and infrastructure
- `primer-phase-1` - Split-focus initial batch
- `primer-phase-2` - Family expansion
- `primer-phase-3` - Deep coverage
- `primer-phase-4` - Consolidation and QA
- `primer-phase-5` - Continuous expansion

### Collaboration Labels
- `agent-driven` - Primarily automated work
- `human-review-required` - Needs human validation
- `mixed-collaboration` - Agent + human collaboration

## Workflows

### Workflow 1: Create New Primer Batch (Feature)

1. **Plan** (Human maintainer):
   - Create Feature issue using `primer-feature.yml`
   - Define which 2-4 primers to create
   - Set batch approach (split-focus recommended for early phases)
   - Assign collaboration type and primary agents

2. **Decompose** (Coordinator Manager agent):
   - Create Task issues for each primer using `primer-task.yml`
   - Link tasks to parent feature
   - Assign tasks to appropriate agents
   - Add family and collaboration labels

3. **Execute** (Specialist agents):
   - Researcher: Gather resources for assigned primers
   - Writer-Editor: Draft content from templates
   - Architect/Diagrammer: Create specialized content
   - Lexical Analyst: Review tone and voice
   - Curator: Validate template compliance

4. **Validate** (Human maintainer + Curator):
   - Review completed primers against quality checklist
   - Verify Hugo build passes
   - Check cross-links and navigation
   - Approve feature completion

### Workflow 2: Create Single Primer (Task)

1. **Research** (Researcher agent - 1-2 hours):
   - Gather 5-7 authoritative resources
   - Document ecosystem conventions
   - Identify code examples
   - Update task with research findings

2. **Draft** (Writer-Editor agent - 2-3 hours):
   - Use appropriate family template
   - Populate all required sections
   - Include examples and quickstart
   - Link to research resources

3. **Specialize** (Architect/Diagrammer - 1-2 hours, if needed):
   - Create diagrams for architectural/algorithmic primers
   - Review technical accuracy for architectural primers

4. **Review** (Lexical Analyst - 30-60 minutes):
   - Check tone alignment
   - Verify consistent terminology
   - Optimize readability

5. **Validate** (Curator - 30-45 minutes):
   - Template compliance check
   - Cross-reference validation
   - Run Hugo build verification

6. **Integrate** (Curator or Build Automation - 30 minutes):
   - Update family index
   - Add cross-links
   - Final build check
   - Close task and update feature

## Quality Gates

### Task Completion
**Who:** Assigned agent + Curator
**Criteria:**
- [ ] All template sections complete
- [ ] 2-5 authoritative references included
- [ ] Examples tested and verified
- [ ] Hugo build passes locally
- [ ] Links functional

### Feature Completion
**Who:** Human maintainer + Curator
**Criteria:**
- [ ] All tasks in batch completed
- [ ] Family indexes updated
- [ ] Cross-links functional
- [ ] Hugo build passes in CI
- [ ] Lexical consistency validated
- [ ] Quality checklist satisfied

### Epic Milestones
**Who:** Human maintainer
**Criteria:**
- [ ] Phase objectives achieved
- [ ] Success metrics met
- [ ] Quality standards maintained
- [ ] Documentation updated

## Agent Assignments

### By Task Type

| Task Type | Primary Agent | Supporting |
|-----------|--------------|------------|
| Research primers | Researcher | - |
| Draft content | Writer-Editor | Researcher |
| Architectural primers | Architect | Diagrammer |
| Create diagrams | Diagrammer | Architect |
| Tone review | Lexical Analyst | Writer-Editor |
| Template validation | Curator | - |
| Cross-primer consistency | Synthesizer | Curator |
| Integration | Curator | Build Automation |
| Quality gate | Curator | Human maintainer |

### Coordination Roles

**Coordinator Manager:**
- Routes work between agents
- Maintains status files
- Prevents conflicting edits
- Escalates blockers

**Project Planner:**
- Creates Feature issues from roadmap
- Maps dependencies
- Tracks milestones

**Human Maintainer:**
- Validates at quality gates
- Approves phase transitions
- Resolves escalations
- Makes strategic decisions

## Best Practices

### For Human Maintainers

1. **Start with clear scope**: Use scope split guidance in PRIMER_VISION.md
2. **Batch sizing**: 2-4 primers per feature for quality control
3. **Quality first**: Validate each batch before advancing
4. **Clear ownership**: Each issue has exactly one owner
5. **Link hierarchy**: Always Task → Feature → Epic

### For Agents

1. **Check assignments**: Look for your agent type in labels
2. **Update progress**: Comment on issues with status updates
3. **Follow templates**: Use family-specific templates strictly
4. **Validate work**: Run local builds before marking complete
5. **Request review**: Add `human-review-required` when uncertain

### For Coordinator Manager

1. **Prevent conflicts**: Assign tasks to single agent
2. **Monitor progress**: Update status files regularly
3. **Route work**: Match agent expertise to task type
4. **Escalate early**: Flag blockers immediately
5. **Document handoffs**: Track work transitions

## Troubleshooting

**Issue: Agent unsure which template to use**
→ Check primer family in task, use corresponding template from `src/templates/primers/`

**Issue: Build fails after integration**
→ Run `hugo --gc --minify --buildDrafts=false` locally, fix errors, re-validate

**Issue: Multiple agents assigned to same task**
→ Coordinator Manager should reassign to single primary agent

**Issue: Quality gate fails**
→ Review against checklist in `.github/PULL_REQUEST_TEMPLATE/primer.md`, fix issues, re-submit

**Issue: Template missing sections**
→ Check if using correct family template, refer to PRIMER_VISION.md for template mapping

## References

- **Vision Document:** `docs/collaboration/PRIMER_VISION.md`
- **Templates:** `src/templates/primers/`
- **Quality Checklist:** `.github/PULL_REQUEST_TEMPLATE/primer.md`
- **Issue Templates:** `.github/ISSUE_TEMPLATE/primer-*.yml`
- **Label Definitions:** `.github/labels.yml`
- **Agent Profiles:** `.github/agents/*.agent.md`

## Coordination Files

When primer work begins, Coordinator Manager will create a `docs/coordination/` directory with:

- `AGENT_STATUS.md` - Current agent assignments and progress
- `WORKFLOW_LOG.md` - Chronological completion log
- `HANDOFFS.md` - Ready-for-next-step tracking

These files enable transparency and prevent conflicts in multi-agent workflows.

**Note:** The coordination directory and files will be created by the Coordinator Manager agent at the start of Phase 1 execution. Until then, the structure is documented but not yet instantiated.
