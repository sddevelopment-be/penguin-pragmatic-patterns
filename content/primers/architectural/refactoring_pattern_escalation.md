+++
title = "Refactoring Pattern Escalation Primer"
subtitle = "When to move from local refactoring to architectural patterns"
aliases = ["refactoring-escalation", "architectural/refactoring-pattern-escalation"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
draft = true
tags = ["refactoring", "architecture", "escalation", "primer"]
summary = """
This primer explains how to decide when local refactoring is sufficient and when to escalate to architecture-level patterns. It emphasizes evidence, staged progression, and risk-aware adoption.
"""
+++

## 1. Purpose and Positioning

Refactoring escalation decisions are high leverage. Over-escalation creates complexity; under-escalation preserves recurring pain. This primer provides thresholds and staged guidance.

## 2. First-Wave Refactoring Before Escalation

Start with low-blast-radius techniques:

- Guard clauses for nested conditionals
- Replace magic numbers with named constants
- Extract class by responsibility
- Move method closer to data ownership

Escalate only if repeated evidence shows local techniques are insufficient.

## 3. Trigger-to-Pattern Mapping

Examples:

- Repeated semantic mismatch across boundaries -> Anti-Corruption Layer
- Persistent client-specific branching in one backend -> BFF
- Rigid sequential transformations -> Pipes and Filters
- Stable requirement for immutable replay history -> Event Sourcing
- Repeated read/write tension in one context -> CQRS

## 4. Escalation Preconditions

- Pain is recurrent across multiple changes.
- Simpler refactorings no longer resolve root issue.
- Transition test strategy exists.
- Observability is sufficient to validate outcomes.

## 5. Risk Trade-offs

Escalation benefits:
- Cleaner boundaries
- Lower recurring design friction
- Better long-term adaptability

Escalation risks:
- Higher cognitive load
- Migration complexity
- Operational overhead

## 6. Practical Decision Sequence

1. Detect trigger.
2. Apply first-wave local refactoring.
3. Measure residual pain.
4. Evaluate candidate architecture pattern.
5. Decide and document rationale.
6. Roll out incrementally with validation.

## References

- Refactoring Trigger to Pattern Map
- Refactoring Architecture Pattern Escalation Guide
- Refactoring First-Wave Selection
