# Rehydrate

## Purpose

This document provides procedures for restoring agent context after interruptions, resuming work on paused tasks, and re-establishing shared understanding. It helps agents quickly "rehydrate" their working knowledge without re-parsing entire repositories.

## When to Rehydrate

### Common Scenarios

1. **Session Resumption**
   - Starting work after a break
   - Continuing from previous day
   - Picking up interrupted task

2. **Agent Handoff**
   - Receiving work from another agent
   - Taking over stalled task
   - Joining collaborative effort

3. **Context Loss**
   - After system restart
   - Following error recovery
   - When context window is exceeded

4. **Repository Updates**
   - After significant changes
   - Following branch merges
   - When structure changes

## Rehydration Process

### Quick Rehydration (< 5 minutes)

For short interruptions or simple tasks:

#### Step 1: Load Status
```bash
# Check current state
git status
git log --oneline -5
```

#### Step 2: Review Recent Work
- Check last commit message
- Review current branch
- Identify pending changes

#### Step 3: Consult Context Files
- Read relevant sections of REPO_MAP.md
- Check SURFACES.md for commands
- Review TODO_BOOTSTRAP.md for pending items

#### Step 4: Verify Objective
- Confirm current goal
- Check success criteria
- Identify next action

### Standard Rehydration (5-15 minutes)

For moderate interruptions or complex tasks:

#### Step 1: Context Review
```bash
# Review repository state
git status
git log --oneline -10
git diff

# Check documentation
cat docs/CONTEXT_LINKS.md
cat docs/TODO_BOOTSTRAP.md
```

#### Step 2: Objective Clarification
- Read task description
- Review success criteria
- Check constraints
- Verify assumptions

#### Step 3: State Assessment
- Identify completed work
- List pending tasks
- Note blockers
- Check dependencies

#### Step 4: Environment Check
- Verify build status
- Check test status
- Confirm tool availability
- Validate configuration

#### Step 5: Plan Next Steps
- List immediate actions
- Identify dependencies
- Estimate effort
- Set milestones

### Deep Rehydration (15-30 minutes)

For long interruptions or major context changes:

#### Step 1: Full Context Load

Load all relevant context layers:
```bash
# Strategic context
cat agents/strategic-context.md

# Operational guidelines
cat agents/operational-reference.md

# Command aliases
cat agents/command-aliases.md

# Repository context
cat AGENTS.md
```

#### Step 2: Repository Scan

Understand current state:
```bash
# Directory structure
tree -L 2

# Recent changes
git log --oneline --graph -20

# Current diff
git diff --stat

# Uncommitted changes
git status -v
```

#### Step 3: Documentation Review

Read key documentation:
- REPO_MAP.md - Structure overview
- SURFACES.md - Integration points
- WORKFLOWS.md - Build and test processes
- TODO_BOOTSTRAP.md - Current priorities

#### Step 4: Agent Profile Review

Refresh understanding of role:
- Read agent profile
- Review specialization
- Check tool permissions
- Verify collaboration contract

#### Step 5: Context Validation

Verify understanding:
- Summarize current state
- List key objectives
- Note critical constraints
- Identify risks

#### Step 6: Execution Planning

Create detailed plan:
- Break down into steps
- Identify dependencies
- Set checkpoints
- Define success criteria

## Rehydration Checklists

### For Task Resumption

- [ ] Loaded git status
- [ ] Reviewed recent commits
- [ ] Checked current branch
- [ ] Read task description
- [ ] Verified success criteria
- [ ] Identified next action
- [ ] Confirmed build status
- [ ] Ready to proceed

### For Agent Handoff

- [ ] Read handoff notes
- [ ] Reviewed previous agent's work
- [ ] Understood context and rationale
- [ ] Verified current state
- [ ] Clarified expectations
- [ ] Loaded relevant documentation
- [ ] Confirmed tool access
- [ ] Ready to continue

### For Context Recovery

- [ ] Loaded all context layers
- [ ] Scanned repository state
- [ ] Reviewed documentation
- [ ] Validated environment
- [ ] Checked dependencies
- [ ] Identified current objective
- [ ] Assessed progress
- [ ] Created action plan

## Rehydration Strategies

### Incremental Loading

Load context in layers:
1. Essential context (what, why, where)
2. Operational context (how, with what)
3. Historical context (background, rationale)
4. Future context (goals, plans)

### Selective Focus

Prioritize relevant information:
- Current task over historical details
- Active files over entire repository
- Immediate needs over future plans
- Core concepts over edge cases

### Structured Query

Ask specific questions:
- What is the current objective?
- What has been completed?
- What remains to be done?
- What are the constraints?
- What are the risks?

## Context Preservation

### Before Pausing

To enable smooth rehydration:

#### Document State
- Commit work in progress (WIP commits OK)
- Write status update
- Note next steps
- Flag blockers

#### Create Checkpoint
```bash
# Save current state
git add .
git commit -m "WIP: [description] - next: [next action]"
git push

# Document context
echo "## Current State" > .rehydrate
echo "- Objective: ..." >> .rehydrate
echo "- Progress: ..." >> .rehydrate
echo "- Next: ..." >> .rehydrate
```

#### Update Documentation
- Update TODO lists
- Note decisions made
- Document assumptions
- Flag questions

### After Resuming

To confirm successful rehydration:

#### Verify Understanding
- Summarize current task
- List completed work
- Identify next actions
- Note any uncertainties

#### Validate State
- Run builds
- Execute tests
- Check documentation
- Verify assumptions

#### Update Status
- Mark resumption point
- Update progress tracking
- Document any changes
- Notify stakeholders

## Rehydration Templates

### Quick Status Summary

```markdown
## Rehydration Summary

**Task:** [Task description]
**Status:** [In progress / Blocked / Ready]
**Completed:** [List completed items]
**Next:** [Next action]
**Blockers:** [None / List blockers]
**ETA:** [Time estimate]
```

### Handoff Document

```markdown
## Agent Handoff

**From:** [Agent name]
**To:** [Agent name]
**Date:** [Date]

**Context:**
[Brief context description]

**Work Completed:**
- [Item 1]
- [Item 2]

**Current State:**
[Description of current state]

**Next Steps:**
1. [Step 1]
2. [Step 2]

**Notes:**
[Additional context or warnings]
```

### Recovery Checklist

```markdown
## Context Recovery

**Date:** [Date]
**Reason:** [Why recovery needed]

**Loaded:**
- [ ] Strategic context
- [ ] Operational guidelines
- [ ] Repository state
- [ ] Recent changes
- [ ] Documentation
- [ ] Agent profile

**Verified:**
- [ ] Build status
- [ ] Test status
- [ ] Environment
- [ ] Dependencies

**Understood:**
- [ ] Current objective
- [ ] Success criteria
- [ ] Constraints
- [ ] Next steps

**Ready:** [ ] Yes / [ ] No (explain: ___)
```

## Best Practices

### Minimize Rehydration Need

- Document decisions immediately
- Commit frequently with clear messages
- Maintain up-to-date documentation
- Use descriptive branch names
- Write self-documenting code

### Optimize Rehydration Speed

- Keep context files current
- Use structured formats
- Index key information
- Create quick reference guides
- Automate status checks

### Ensure Completeness

- Don't skip steps
- Verify understanding
- Ask questions when uncertain
- Test before proceeding
- Document assumptions

### Maintain Continuity

- Build on previous work
- Respect earlier decisions
- Maintain consistency
- Preserve intent
- Update documentation

## Recovery Scenarios

### Partial Context Loss

**Symptoms:** Remember task but unclear on details

**Recovery:**
1. Read task description
2. Check recent commits
3. Review modified files
4. Verify current state
5. Proceed with caution

### Complete Context Loss

**Symptoms:** No memory of task or context

**Recovery:**
1. Full context reload (30 min)
2. Deep documentation review
3. Environment validation
4. Test basic operations
5. Confirm understanding before proceeding

### Conflicting Context

**Symptoms:** Current state doesn't match expectations

**Recovery:**
1. Investigate discrepancy
2. Review recent changes
3. Check for concurrent work
4. Resolve conflicts
5. Re-establish ground truth

## Continuous Improvement

### Learn from Rehydration

- Note what helped
- Identify missing information
- Update documentation
- Improve process
- Share learnings

### Optimize Context Structure

- Make information findable
- Reduce redundancy
- Improve clarity
- Add examples
- Cross-reference effectively

---

**Note:** Effective rehydration is a skill that improves with practice. Customize these procedures to match your workflow and learn from each rehydration experience.
