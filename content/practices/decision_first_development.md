+++
title = "Decision-First Development"
author = "Stijn Dejongh"
draft = true
problem = "Implementation moves forward without preserving why key technical choices were made, causing repeated debate and fragile evolution."
description = "Capture decisions progressively from exploration to ADR formalization, and link them bidirectionally to implementation artifacts."
summary = """
Decision-First Development preserves architectural intent by making decisions discoverable throughout delivery: exploration notes, synthesis, ADRs, and implementation references.
"""
categories = ["software development"]
tags = ["decision-making", "adr", "architecture", "traceability"]
uuid="a3baa62a-c8f1-4e5e-bf72-2c5f370165c4"
aliases=["a3baa62a-c8f1-4e5e-bf72-2c5f370165c4", "decision-first"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.5", rationale = "Lightweight markers maintain flow while preserving rationale."},
  {name = "minimal", delta = "0.3", rationale = "Requires documentation discipline but can remain incremental."},
  {name = "maintainable", delta = "0.9", rationale = "Preserved decision context improves long-term change safety."},
  {name = "environmental", delta = "0.1", rationale = "Reduces waste from repeated rediscovery."},
  {name = "reachable", delta = "0.45", rationale = "Makes scope and trade-offs easier to communicate."},
  {name = "solvable", delta = "0.8", rationale = "Clarifies trade-off space before code hardens."},
  {name = "extensible", delta = "0.65", rationale = "New work can align with prior rationale instead of diverging."}
]
related_concepts = []
related_practices = []
further_exploration = []
image="practices/decision_first_development.webp"
pubdate="2026-02-12"
+++

## Problem statement

Teams often lose the rationale behind architectural choices, forcing future contributors to infer intent from code alone.

## Intent

Keep decision rationale visible and navigable across ideation, implementation, and maintenance.

## Solution

Use progressive-fidelity decision capture:

1. Exploration notes with options and open questions.
2. Synthesis of recurring patterns and trade-offs.
3. ADR formalization for stable architectural choices.
4. Implementation markers linking artifacts back to decisions.

## Contextual forces

### Enablers

- Teams using ADRs and traceability practices.
- Workflows with explicit review checkpoints.
- AI-assisted development where context carry-over matters.

### Deterrents

- Highly informal teams with no documentation habit.
- Overly rigid templates that block delivery flow.
- Trivial changes where decision capture adds no value.

## Rationale

Decision context is critical system metadata. Capturing it progressively prevents rationale loss without forcing heavyweight process at every step.

## Application

### Consequences

- Better onboarding and fewer repeated architecture debates.
- Stronger consistency across contributions.
- Moderate writing overhead.

### Mitigation strategies

- Use lightweight markers during deep flow.
- Batch formalization during natural pause points.
- Reserve full ADRs for high-impact choices.

## Examples

A team evaluating queue technology logs options in exploration notes, synthesizes compatibility constraints, formalizes an ADR, and links service modules to that ADR.

## Criticism & Clarifications

Decision-first does not mean document-first for every micro-change. Apply proportionally to impact and uncertainty.
