# Issue Templates Guide

This directory contains templates for creating different types of issues in the repository.

## Available Templates

### 00-epic.yml
**Epic** - Multi-phase initiative with strategic value
- Use for: Large initiatives spanning multiple features
- Duration: Weeks to months
- Example: "Epic: Custom Theme Extraction"

### 01-feature.yml
**Feature** - Cohesive set of related tasks delivering specific capability
- Use for: Significant functionality or component
- Duration: Days to weeks
- Belongs to: An Epic
- Example: "Feature: Phase 0 - Foundation and Preparation"

### 02-task.yml (replaces 10-task.yml)
**Task** - Discrete unit of work with clear completion criteria
- Use for: Individual work items
- Duration: Hours to 2 days
- Belongs to: A Feature
- Example: "Task: Set up visual regression testing"

### Legacy Templates (Maintained for Backward Compatibility)

#### primer-epic.yml
**Primer Epic** - Multi-phase primer series initiative
- Use for: Strategic primer series development across families
- Duration: Months to ongoing
- Example: "Epic: Primer Series Implementation"

#### primer-feature.yml
**Primer Feature** - Cohesive batch of primers
- Use for: Family-specific or split-focus primer batches
- Duration: 1-3 weeks
- Belongs to: A Primer Epic
- Example: "Feature: Phase 1 - Programming Languages Batch"

#### primer-task.yml
**Primer Task** - Create a single primer
- Use for: Individual primer creation (research → draft → review → integrate)
- Duration: 2-8 hours
- Belongs to: A Primer Feature
- Example: "Task: Create PowerShell Primer"

#### 10-task.yml
Legacy primer task template - **Deprecated**, use 02-task.yml instead
- Retained for existing primer-specific workflows
- Consider migrating to 02-task.yml

#### bug_report.md
Bug tracking template
- Use for: Reporting defects or unexpected behavior

#### pattern-review.md
Pattern review template
- Use for: Reviewing practices or concepts before publication

#### pattern-suggestion.md
Pattern suggestion template
- Use for: Proposing new practices or concepts

#### resource-recommendation.md
Resource recommendation template
- Use for: Suggesting books, tools, or learning materials

## Issue Hierarchy

For complex initiatives, use this hierarchy:

```
Epic (00-epic.yml)
└── Feature (01-feature.yml)
    └── Task (02-task.yml)
```

For primer-specific work, use specialized templates:

```
Primer Epic (primer-epic.yml)
└── Primer Feature (primer-feature.yml)
    └── Primer Task (primer-task.yml)
```

## Recommended Labels

### Hierarchy Labels
- `epic` - Multi-phase initiatives
- `feature` - Capability deliverables
- `task` - Discrete work items
- `draft` - Work in progress

### Collaboration Labels
- `agent-driven` - Primarily automated agent work
- `human-review-required` - Requires human validation
- `mixed-collaboration` - Collaborative agent + human work

### Type Labels
- `type: enhancement` - New features or improvements
- `type: bug` - Defects to fix
- `type: maintenance` - Documentation and refactoring
- `type: automation` - CI/CD and workflow improvements

### Primer Labels
- `primer-series` - All primer-related work
- `primer-programming` - Programming language primers
- `primer-markup` - Markup and diagramming primers
- `primer-toolchain` - Toolchain and automation primers
- `primer-architectural` - Architectural primers
- `primer-algorithmic` - Algorithmic primers
- `primer-phase-0` through `primer-phase-5` - Roadmap phase tracking

## Best Practices

1. **Start with Epic for large initiatives**
   - Define strategic goal and outcomes
   - Break into 3-7 features
   - Create tasks as features are scoped

2. **Use Features for cohesive capabilities**
   - Clear objective and deliverables
   - Belongs to exactly one Epic
   - 3-10 tasks typically

3. **Keep Tasks atomic**
   - Completable in 1-2 days
   - Clear acceptance criteria
   - Single assignee or agent

4. **Link issues properly**
   - Features reference parent Epic: `Part of #123`
   - Tasks reference parent Feature: `Part of #124`
   - Use `Related to #125` for dependencies

5. **Use appropriate labels**
   - Hierarchy label (epic/feature/task)
   - Collaboration style (agent-driven, etc.)
   - Type classification (enhancement, bug, etc.)
   - For primer work: Add `primer-series`, family label, and phase label

## Primer-Specific Guidelines

When working with primer issues:

1. **Always use primer-specific templates** (primer-epic.yml, primer-feature.yml, primer-task.yml)
   - These templates include primer-specific fields and validation criteria
   - Reference PRIMER_VISION.md for scope split guidance

2. **Label primer issues consistently:**
   - Always include `primer-series` label
   - Add appropriate family label (e.g., `primer-programming`)
   - Add phase label for roadmap tracking (e.g., `primer-phase-1`)
   - Add collaboration type (`agent-driven`, `mixed-collaboration`, etc.)

3. **Follow batch sizing recommendations:**
   - Features: 2-4 primers per batch for quality control
   - Tasks: One primer per task (research → draft → review → integrate)

4. **Link issues properly:**
   - Primer Features reference Primer Epic
   - Primer Tasks reference Primer Feature
   - Maintain traceability from task to strategic goal

5. **Use quality checklist:**
   - Reference `.github/PULL_REQUEST_TEMPLATE/primer.md` for acceptance criteria
   - Validate against family-specific templates in `src/templates/primers/`

## Creating Issues

1. Navigate to repository Issues tab
2. Click "New Issue"
3. Select appropriate template
4. Fill required fields (marked with *)
5. Add recommended labels
6. Assign to milestone if applicable
7. Create and link to parent issue

## Multiple PR Templates

When creating a Pull Request, you can select a specific template:
- Default: General purpose
- Feature: Add `?template=PULL_REQUEST_TEMPLATE_FEATURE.md` to PR URL
- Task: Add `?template=PULL_REQUEST_TEMPLATE_TASK.md` to PR URL
- Documentation: Add `?template=PULL_REQUEST_TEMPLATE_DOCUMENTATION.md` to PR URL
