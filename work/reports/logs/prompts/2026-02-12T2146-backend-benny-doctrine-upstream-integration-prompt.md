# Prompt Documentation: Doctrine Upstream Integration

**Agent:** backend-benny
**Date:** 2026-02-12T21:46:00Z
**Task Slug:** doctrine-upstream-integration
**Related Work Log:** `work/reports/logs/backend-benny/2026-02-12T2146-doctrine-upstream-integration.md`

## Original Prompt (Verbatim)

> I want to set up this repository (pragmatic penguins) to use the doctrine stack in the /media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development . The doctrine-config directory is already created here, but is empty. A very old agents stack exists at .github/agents . Initialize as Benny, then set up this directory/repository  to use the agent doctrine ( do not copy the stack here but refer to the upstream one). Also copy over the `.doctrine-config` base files. Commit. Initialize the work directory. Commit. Then update the `.doctrine-config` yaml configuration and set the correct parameters. Afterwards, review the .github/agents directory and add any specific styleguides or agent customizations to the .doctrine-config overrides. If anything is unclear, ask me for clarification before commencing. Adhere to directives 014 and 015.

## SWOT Analysis

### Strengths

- Clear sequence of required actions and explicit commit checkpoints.
- Explicit architectural constraint (reference upstream stack, do not copy).
- Explicit compliance constraints (Directives 014 and 015).
- Clear fallback instruction for ambiguity handling.

### Weaknesses

- "correct parameters" in `.doctrine-config` is underspecified (no expected values listed).
- "Initialize as Benny" does not specify expected artifact beyond role posture.
- "review the .github/agents directory" becomes ambiguous after symlink replacement unless history-based review is allowed.

### Opportunities

- Add expected target values for `config.yaml` keys.
- Add explicit acceptance criteria for migrated customizations.
- Add expected number of commits to remove interpretation ambiguity.

### Threats

- Path-based symlink approach may behave differently across environments.
- Missing explicit portability requirement could lead to absolute symlink choices.
- Legacy content may be lost if migration is performed before capture/review.

## Improvement Suggestions

1. Specify required `config.yaml` keys and expected values in bullet form.
2. State commit count explicitly (e.g., "create exactly 3 commits").
3. Define whether legacy `.github/agents` review should come from current tree or git history.
4. Add portability requirement for symlink style (relative vs absolute).

## Pattern Notes

- Prompt quality is high for orchestration tasks: ordered steps, constraints, and compliance directives are explicit.
- Main risk is under-specification of "correct parameters" and migration acceptance criteria.
