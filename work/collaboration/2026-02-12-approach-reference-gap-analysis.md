# Gap Analysis: Doctrine Approaches and References vs Local Content

Date: 2026-02-12  
Coordinator: manager-mike (orchestrated by backend-benny)

## Scope

Compared:
- Upstream approaches: `/media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development/doctrine/approaches`
- Upstream references: `/media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development/doctrine/docs/references`

Against local content inventories:
- `content/practices/`
- `content/concepts/`
- `content/primers/`

## Findings

### High-value additions (recommended now)

1. `locality-of-change` (approach) -> new **practice**: `locality_of_change.md`
2. `test-first-bug-fixing` + `bug-fixing-checklist` (approaches) -> new **practice**: `test_first_bug_fixing.md`
3. `ralph-wiggum-loop` (approach) -> new **concept**: `ralph_wiggum_loop.md`
4. `spec-driven-development` + `spec-driven-6-phase-cycle` (approaches) -> new **primer**: `specification-driven-development.md`

### Existing local pages that should be enhanced

1. `content/practices/traceable_decisions.md`
- Add explicit traceability-chain section (goal -> spec -> tests -> ADR -> implementation -> logs)
- Add links to refactoring trigger/escalation references as "when to escalate" guidance

2. `content/practices/target_audience_personas.md`
- Add fit-validation loop from `target-audience-fit` approach
- Add practical checks for multi-persona split decisions

3. `content/primers/toolchain-and-automation/version-control-and-branching.md`
- Add trunk-based-development guidance from upstream approach

## Deferred candidates (next iteration)

- `decision-first-development`
- `living-glossary-practice`
- `tooling-setup-best-practices`
- `work-directory-orchestration`
- `traceable-decisions-detailed-guide`
- `refactoring-trigger-to-pattern-map` and related escalation guides as advanced architecture primer content

## Recommendation

Run one execution iteration focused on 4 draft artifacts (2 practices, 1 concept, 1 primer), then run a curator pass and queue the deferred candidates for iteration 2.
