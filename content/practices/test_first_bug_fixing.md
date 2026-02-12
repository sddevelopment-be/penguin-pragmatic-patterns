+++
title = "Test-First Bug Fixing"
author = "Stijn Dejongh"
draft = true
problem = "Bug fixes performed directly in production code often lack proof, causing regressions and repeated incidents."
description = "Resolve defects by first writing a failing test that reproduces the issue, then fixing code until tests pass."
summary = """
Test-First Bug Fixing turns debugging into a verifiable workflow: reproduce with a failing test, fix minimally, then prove no collateral damage with a full test run.
"""
categories = ["software development"]
tags = ["testing", "debugging", "quality", "tdd"]
uuid="6527259a-9098-4a9e-af2b-50ed41ff605d"
aliases=["6527259a-9098-4a9e-af2b-50ed41ff605d", "bugfixing-test-first"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.65", rationale = "Fast feedback loops shorten defect-resolution cycles."},
  {name = "minimal", delta = "0.5", rationale = "Encourages smallest change that satisfies failing tests."},
  {name = "maintainable", delta = "0.9", rationale = "Regression tests preserve fixes over time."},
  {name = "environmental", delta = "0.15", rationale = "Fewer repeated failures reduce wasted effort."},
  {name = "reachable", delta = "0.5", rationale = "Clear pass/fail criteria improve predictability."},
  {name = "solvable", delta = "0.9", rationale = "Transforms ambiguous defects into reproducible problems."},
  {name = "extensible", delta = "0.55", rationale = "Growing test coverage supports safe future changes."}
]
related_concepts = []
related_practices = []
further_exploration = []
image="practices/test_first_bug_fixing.webp"
pubdate="2026-02-12"
+++

## Problem statement

Without reproducible tests, bug fixes are often guesswork. Teams may believe a defect is fixed while silently introducing new failures.

## Intent

Create objective proof that a defect existed, was fixed, and remains fixed.

## Solution

Apply this sequence:

1. Understand expected vs actual behavior.
2. Write a failing test that reproduces the defect.
3. Verify the failure reason is correct.
4. Implement the smallest production-code fix.
5. Run full relevant test suite.
6. Commit test and fix together.

## Contextual forces

### Enablers

- Automated test infrastructure.
- Clear bug reports or reproducible scenarios.
- Teams trained in test design.

### Deterrents

- Difficult-to-reproduce environment defects.
- Missing test seams in legacy code.
- Pressure to hot-fix without safeguards.

## Rationale

Tests convert defect handling from intuition to evidence. This reduces incident recurrence and supports safer collaboration.

## Application

### Consequences

- Better confidence in defect resolution.
- Increased regression coverage.
- Slightly higher upfront effort per bug.

### Mitigation strategies

- Use integration or acceptance tests when unit reproduction is hard.
- Refactor minimally to create test seams.
- Use temporary characterization tests for legacy components.

## Examples

A parser misclassifies edge-case input. Team writes a failing test with the offending payload, patches classification logic, and confirms all parser and integration tests pass.

## Criticism & Clarifications

Not every production incident is purely code-related; infrastructure and operational issues may require complementary diagnostics.
