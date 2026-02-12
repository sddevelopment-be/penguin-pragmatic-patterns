+++
title = "Locality of Change"
author = "Stijn Dejongh"
draft = true
problem = "Teams introduce unnecessary abstractions too early and pay long-term maintenance cost for hypothetical problems."
description = "Assess problem evidence and severity before introducing complexity; prefer reversible, local changes over broad speculative redesign."
summary = """
Locality of Change is a discipline for avoiding gold plating. Start from observed pain, measure severity, compare with a do-nothing baseline, and only then choose the smallest viable intervention.
"""
categories = ["software development"]
tags = ["architecture", "decision-making", "simplicity", "refactoring"]
uuid="92ff4b36-0ee9-4584-8171-c8d5c4e01c70"
aliases=["92ff4b36-0ee9-4584-8171-c8d5c4e01c70", "avoid-gold-plating-locality-of-change"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.6", rationale = "Smaller validated changes reduce cycle time and rework."},
  {name = "minimal", delta = "0.85", rationale = "The practice explicitly optimizes for low-blast-radius interventions."},
  {name = "maintainable", delta = "0.8", rationale = "Avoiding speculative abstractions lowers maintenance burden."},
  {name = "environmental", delta = "0.2", rationale = "Lower churn can reduce wasteful effort."},
  {name = "reachable", delta = "0.55", rationale = "Concrete evidence thresholds improve planning realism."},
  {name = "solvable", delta = "0.7", rationale = "Problem framing and baseline comparison improve solution quality."},
  {name = "extensible", delta = "0.45", rationale = "Local changes preserve future options without overcommitting architecture."}
]
related_concepts = []
related_practices = []
further_exploration = []
image="practices/locality_of_change.webp"
pubdate="2026-02-12"
+++

## Problem statement

Software teams often respond to possible future needs by adding frameworks, abstractions, and extension points before there is concrete evidence the current design fails. The immediate result is slower delivery and higher cognitive load.

## Intent

Favor the smallest effective change that solves a real, observed problem while preserving optionality for future evolution.

## Solution

Use a short evidence-first protocol before escalating complexity:

1. Confirm the problem appears in practice.
2. Measure frequency, impact, and risk.
3. Compare against a "do nothing" baseline.
4. Evaluate lightweight alternatives first.
5. Escalate only when repeated evidence shows local fixes are insufficient.

## Contextual forces

### Enablers

- Teams with good observability and post-incident notes.
- Engineering cultures that value reversibility and explicit trade-offs.
- Iterative delivery models with regular checkpoints.

### Deterrents

- Environments rewarding speculative architecture over measured outcomes.
- Weak instrumentation and poor feedback loops.
- Pressure to "future-proof" without problem data.

## Rationale

Complexity is a cost center. By making problem evidence a precondition, teams avoid premature abstractions and keep architecture aligned with verified needs.

## Application

### Consequences

- Faster local delivery and easier review.
- Fewer accidental dependencies.
- Reduced risk of architecture drift.

### Mitigation strategies

- Timebox discovery when evidence is incomplete.
- Add explicit escalation thresholds for pattern-level changes.
- Capture decision rationale to prevent repeated debates.

## Examples

A team sees occasional conditional complexity in one service. Instead of introducing a full strategy framework, they first apply guard clauses and extract a small helper. After several iterations with measured recurrence, they then formalize strategy boundaries.

## Criticism & Clarifications

This practice is not anti-architecture. It is anti-premature architecture. When evidence indicates systemic pain, deliberate pattern adoption is still the correct move.
