+++
draft = true
title = "Living Glossary Practice"
subtitle = "Keeping shared terminology accurate and current"
author = "Stijn Dejongh"
description = "A concept for maintaining a glossary as an active collaboration artifact to reduce ambiguity and improve alignment."
summary="""
A living glossary is a continuously maintained terminology index that evolves with the system. It prevents language drift and makes collaboration faster by anchoring key terms in shared definitions.
"""
categories = ["software development"]
tags = ["communication", "terminology", "collaboration", "documentation"]
uuid="e4ffef72-dc79-4822-9ae4-b2b1797224fb"
aliases=["e4ffef72-dc79-4822-9ae4-b2b1797224fb", "living-glossary"]
pubdate="2026-02-12"
image = ""
related_concepts = []
related_practices = []
further_exploration = []
+++

## Definition

A living glossary is a maintained set of project terms and definitions that is updated as concepts, patterns, and boundaries evolve.

## Key Components

- Canonical term list with concise definitions.
- Update triggers (new concept, renamed concept, conflicting usage).
- Ownership and review cadence.
- Cross-links to related practices, decisions, and artifacts.

## Background

### Origin

Glossaries are common in technical writing, but the "living" variant emphasizes active maintenance during delivery rather than static publication.

### Application

Teams use a living glossary to align language across docs, code reviews, planning artifacts, and agent prompts. New terms are added when first introduced and refined when meaning changes.

### Comparisons

Unlike a static appendix, a living glossary is operational and revised frequently. Unlike ad hoc team jargon, it provides explicit, searchable definitions.

## Examples

A team introduces "decision chain" and adds it to the glossary with definition, context, and links to traceability practices. Later, they refine it after adoption feedback to avoid overlap with existing ADR terms.
