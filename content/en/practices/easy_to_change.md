++
title = "Easy to Change"
author = "Stijn Dejongh"
draft = true
problem = "Software often ossifies because structures are optimised for today’s feature, not for tomorrow’s uncertainty."
description = "Design and refactor systems so that the cost of change stays proportional to the value gained."
summary = """
Shape architecture around seams that mirror business variability, keep dependencies light, and cultivate refactoring habits so the system bends without breaking when new needs surface.
"""
categories = [
    "software development",
]
tags = [
    "design",
    "architecture",
    "refactoring",
    "adaptability",
]
uuid = "9b5ead25-2d2b-483d-b05e-a0f86a6d0de7"
aliases = ["9b5ead25-2d2b-483d-b05e-a0f86a6d0de7"]
outputs = ['html', 'json']
ammerse = [
    { name = "agile", delta = "0.5", rationale = "Change-friendly structures shorten iteration cycles and make reprioritisation less risky." },
    { name = "minimal", delta = "0.2", rationale = "Intentional seams add a thin layer of upfront thought but avoid heavyweight frameworks." },
    { name = "maintainable", delta = "0.9", rationale = "Small, cohesive modules with clear contracts shrink future rework and support long-lived teams." },
    { name = "environmental", delta = "0.25", rationale = "Reducing rewrite churn lowers stress and avoids waste, though impact remains indirect." },
    { name = "reachable", delta = "0.35", rationale = "Clear extension points make it simpler to deliver roadmap items without derailing existing commitments." },
    { name = "solvable", delta = "0.55", rationale = "Easier change enables faster experimentation on solution options." },
    { name = "extensible", delta = "0.6", rationale = "Well-factored architecture exposes safe hook points for future capabilities." }
]
related_concepts = []
related_practices = []
further_exploration = []
++

## Problem statement

Technical choices should support future adaptation, not just current implementation.
When systems embed assumptions in the wrong places, even simple features demand cross-cutting edits, dragging velocity down and risking defects.

## Intent

Keep the system supple so the next wave of change feels routine, not catastrophic.
Teams should be able to add or replace behaviour with small, safe steps instead of rewriting swathes of code.

## Solution

1. **Surface the volatility** — identify which business concepts change the fastest and draw boundaries so those modules stay independent.
2. **Prefer composition over inheritance** — wire behaviour by assembling smaller parts so you can replace pieces without perturbing the whole.
3. **Automate safety nets** — invest in characterising tests around critical seams to provide fast feedback when behaviour shifts.
4. **Continuously refactor** — treat design debt as part of the work; run “scout rule” clean-ups whenever you touch a module.
5. **Document decisions** — record architectural choices and the context that led to them so future teams can revisit assumptions confidently.

## Contextual forces

### Enablers

- A culture that budgets for refactoring and treats it as feature work.
- Modular deployment or service boundaries that can be iterated independently.
- Strong automated test suites that protect critical behaviour.
- Product partners who articulate variability and evolution of business rules.

### Deterrents

- Legacy monoliths with deep coupling between UI, logic, and persistence.
- Teams measured purely on feature output rather than sustainable pace.
- High regulatory friction that slows schema or API changes.
- Tooling that makes dependency management painful (e.g. shared binary blobs).

## Rationale

Design never freezes; it is a snapshot of current understanding.
By placing seams where change is likely, we protect areas that should remain stable and give ourselves permission to evolve the rest.
Small, reversible steps reduce fear and help teams learn which abstractions hold up under pressure.

## Application

### Consequences

- Maintenance becomes more predictable as change sets shrink.
- Time-to-first-value for new features drops because teams extend existing seams instead of carving new ones.
- Architectural clarity improves onboarding, but investment in clean contracts can slow teams that only need throwaway prototypes.
- Inconsistent discipline across teams may reintroduce coupling if standards are not socialised.

### Mitigation strategies

- Run regular architecture syncs to highlight new seams or hot spots before coupling spreads.
- Budget a percentage of each iteration for refactoring and debt repayment so clean-up is not perpetually postponed.
- Use fitness functions or architecture tests to automatically detect when modules depend on forbidden layers.
- Pair senior engineers with newer teammates during refactorings to spread heuristics and maintain quality.

## Examples

- **Feature toggle decay:** After a major launch, the team schedules a “toggle clean-up” sprint to remove temporary scaffolding, restoring clarity before the next wave of work.
- **Plugin architecture:** A payments platform isolates country-specific rules in plugin modules. When new regulations arrive, only the relevant plugin changes while the core stays intact.
- **Architectural decision record cadence:** Every significant trade-off gets a one-page ADR stored alongside the code. When priorities shift, engineers review the ADR, understand the original context, and decide whether to amend or retire it.

## Criticism & Clarifications

- Over-engineering in the name of flexibility can backfire—validate that potential variability is real before introducing abstract factories everywhere.
- Change-friendliness depends on operational excellence. Without observability and deployment discipline, even modular code can cause outages.
- Some legacy systems cannot be made nimble overnight. Use strangler or façade patterns so you can incrementally carve out change-friendly fronts while the core stabilises.
