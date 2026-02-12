+++
draft = true
title = "Language-First Architecture"
subtitle = "Using semantic drift as an early architecture signal"
author = "Stijn Dejongh"
description = "A concept where terminology conflicts are treated as precursors of architectural issues, enabling earlier intervention and cleaner boundaries."
summary="""
Language-First Architecture views vocabulary fragmentation as a leading indicator of coupling and boundary problems. By monitoring terms across artifacts, teams can detect architecture risk before it surfaces as defects or delivery drag.
"""
categories = ["software development"]
tags = ["architecture", "language", "ddd", "governance"]
uuid="ccad8051-4e4c-4805-9dac-1276e5dcc383"
aliases=["ccad8051-4e4c-4805-9dac-1276e5dcc383", "language-first"]
pubdate="2026-02-12"
image = ""
related_concepts = []
related_practices = []
further_exploration = []
+++

## Definition

Language-First Architecture is the practice of treating terminology quality and drift as first-class architectural signals that guide boundary, integration, and decision-making.

## Key Components

- Continuous terminology observation across code, docs, and discussions.
- Conflict detection for same-term/different-meaning and synonyms with divergent intent.
- Human-led decisions with agent-assisted detection.
- Feedback loops at PR, weekly, and quarterly cadences.

## Background

### Origin

The concept emerged from DDD and ubiquitous language practice, extended by modern agentic workflows that make continuous language analysis operationally feasible.

### Application

Teams integrate linguistic checks in reviews, capture terminology decisions in ADRs/specs, and maintain glossary updates as part of normal delivery.

### Comparisons

Unlike purely style-focused writing checks, this concept targets architectural integrity. Unlike static glossaries, it emphasizes active drift detection and intervention.

## Examples

A platform team detects conflicting use of "identity" across auth and profile modules. They clarify bounded contexts, add translation at boundaries, and prevent further coupling through shared terminology guidance.
