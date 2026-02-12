+++
title = "Trunk-Based Development"
author = "Stijn Dejongh"
draft = true
problem = "Long-lived branches delay integration, increase merge conflicts, and hide incompatibilities until late in delivery cycles."
description = "A branching practice that keeps work close to trunk through frequent integration, small changes, and automated quality gates."
summary = """
Trunk-Based Development reduces integration risk by keeping branches short-lived and merging continuously. It favors small increments, fast feedback, and releasable mainline code.
"""
categories = ["software development"]
tags = ["git", "branching", "continuous-integration", "delivery"]
uuid="8103b7a2-6b82-4d27-99cf-654f2a69915b"
aliases=["8103b7a2-6b82-4d27-99cf-654f2a69915b", "trunk-based"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.8", rationale = "Frequent integration accelerates feedback and delivery cadence."},
  {name = "minimal", delta = "0.65", rationale = "Small pull requests reduce overhead and merge complexity."},
  {name = "maintainable", delta = "0.75", rationale = "Mainline stays healthier with regular integration and tests."},
  {name = "environmental", delta = "0.1", rationale = "Indirectly reduces wasted effort from conflict resolution."},
  {name = "reachable", delta = "0.55", rationale = "Short cycles make milestone progress more predictable."},
  {name = "solvable", delta = "0.7", rationale = "Integration issues surface early when they are easier to resolve."},
  {name = "extensible", delta = "0.5", rationale = "Stable trunk supports safer incremental expansion."}
]
related_concepts = []
related_practices = []
further_exploration = []
image="practices/trunk_based_development.webp"
pubdate="2026-02-12"
+++

## Problem statement

Teams with long-lived feature branches accumulate merge debt and discover integration failures late, when fixes are costly and risky.

## Intent

Maintain a continuously integrable mainline by merging small, tested changes frequently.

## Solution

Apply these practices:

- Branch briefly and merge quickly.
- Keep pull requests small and focused.
- Require automated checks before merge.
- Use feature toggles to hide incomplete behavior.
- Synchronize with trunk frequently during implementation.

## Contextual forces

### Enablers

- Good CI pipeline and reliable test suite.
- Team discipline around small increments.
- Fast review cycles.

### Deterrents

- Slow or unstable CI.
- Large, tightly coupled changes.
- Infrequent review availability.

## Rationale

Frequent integration reduces uncertainty and conflict surface area. This keeps trunk releasable and lowers operational risk.

## Application

### Consequences

- Faster issue detection.
- Lower merge complexity.
- Increased pressure for automation and review responsiveness.

### Mitigation strategies

- Invest in test reliability.
- Set explicit pull request size targets.
- Use pair/mob review for urgent integration windows.

## Examples

A team shipping web features keeps all branches under one day of lifetime, runs CI on every push, and uses flags for incomplete UI paths. Main remains deployable every day.

## Criticism & Clarifications

Trunk-based development is not "no branches"; it is "short-lived branches with fast integration". It requires discipline and automation to work well.
