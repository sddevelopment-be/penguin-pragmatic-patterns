# Prompt Documentation: Doctrine Content Iteration and Orchestration

**Agent:** manager-mike (executed by backend-benny)
**Date:** 2026-02-12T22:32:00Z
**Task Slug:** doctrine-content-iteration
**Related Work Log:** `work/logs/2026-02-12T2232-doctrine-content-iteration-1.md`

## Original Prompt (Verbatim)

> Update the local AGENTS.md to indicate that content templates are available at "/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/docs/templates". Commit. Then: Based on the contents of `/media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development/doctrine/approaches` and `/media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development/doctrine/docs/references`, Identify any descriptions that should be added to the practices, or concepts in this directory. Then, as Mike make a rudimentary plan, select the most appropriate agent profiles to add a draft version of the contents ( practices / concepts / primers ), and assign the work to them. Then: coordinate / orchestrate an iteration to perform the work. Commit often. Adhere to directives 014 and 015.

## Clarification Received

> Worklog are to be stored in `work/logs`

## SWOT Analysis

### Strengths

- Very clear sequencing with explicit commit boundaries.
- Explicit source-of-truth paths for analysis.
- Explicit role framing ("as Mike") for orchestration behavior.
- Explicit compliance directives (014/015).

### Weaknesses

- Scope of "descriptions that should be added" is broad; no limit on count.
- "Commit often" is directional but non-quantified.
- Output acceptance criteria for draft quality are implicit.

### Opportunities

- Add explicit minimum/maximum number of draft artifacts.
- Define completion checks for each artifact type.
- Include preferred naming conventions for new files.

### Threats

- Path-heavy prompts can lead to brittle assumptions if upstream moves.
- Directive path defaults may conflict with repository-local conventions.
- Over-broad scope could encourage excessive content creation in one iteration.

## Improvement Suggestions

1. Add expected artifact count (for example: 4 drafts in iteration 1).
2. Add mandatory review criteria for drafts (template sections, frontmatter keys).
3. Add explicit commit checkpoints (for example: after planning, after execution, after logs).
4. Include a fixed location policy for both work logs and prompt logs.
