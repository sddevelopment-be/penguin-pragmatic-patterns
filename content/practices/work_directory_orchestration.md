+++
title = "Work Directory Orchestration"
author = "Stijn Dejongh"
draft = true
problem = "Multi-agent or asynchronous collaboration becomes opaque when tasks and handoffs are scattered across chat or undocumented side channels."
description = "Coordinate work through explicit task files and state transitions in the work directory to preserve transparency and auditability."
summary = """
Work-directory orchestration uses file-based task lifecycles to coordinate humans and agents. State is explicit, transitions are reviewable, and handoffs remain traceable in Git history.
"""
categories = ["software development"]
tags = ["orchestration", "collaboration", "workflow", "traceability"]
uuid="8e6d8ae0-9543-4e09-9bd6-4411f21893fb"
aliases=["8e6d8ae0-9543-4e09-9bd6-4411f21893fb", "work-directory-orchestration"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.55", rationale = "Clear handoffs reduce waiting and misrouting."},
  {name = "minimal", delta = "0.25", rationale = "Introduces explicit artifacts but keeps mechanisms simple."},
  {name = "maintainable", delta = "0.85", rationale = "Lifecycle state in files provides durable operational traceability."},
  {name = "environmental", delta = "0.1", rationale = "Less rework from lost context."},
  {name = "reachable", delta = "0.6", rationale = "Task states improve progress visibility."},
  {name = "solvable", delta = "0.75", rationale = "Explicit statuses make blockers diagnosable."},
  {name = "extensible", delta = "0.65", rationale = "File-driven workflows are easy to extend incrementally."}
]
related_concepts = []
related_practices = []
further_exploration = []
image="practices/work_directory_orchestration.webp"
pubdate="2026-02-13"
+++

## Problem statement

Distributed work coordination degrades when task ownership, status, and output locations are implicit or inconsistently tracked.

## Intent

Make collaboration state explicit and reviewable through lightweight, deterministic file-based workflows.

## Solution

Define and enforce a simple lifecycle:

- new -> assigned -> in_progress -> done (or error)

Represent each task as a structured artifact with owner, status, context, and result links. Use scripted transitions where available.

## Contextual forces

### Enablers

- Git-based collaboration habits.
- Shared directory conventions.
- Teams needing asynchronous, auditable handoffs.

### Deterrents

- Workflows relying on private side-channel updates.
- Missing schema validation for task artifacts.
- Inconsistent naming/status discipline.

## Rationale

File-based orchestration keeps coordination lightweight while preserving observability. It reduces hidden state and makes handoff history inspectable.

## Application

### Consequences

- Better handoff reliability and operational transparency.
- Stronger audit trail for completed work.
- Need for lifecycle discipline to avoid stale tasks.

### Mitigation strategies

- Use standard templates and status checks.
- Keep task sizes small.
- Run periodic cleanup and archival for completed artifacts.

## Examples

A manager assigns writer/editor work by placing a task descriptor in `work/collaboration/assigned/writer-editor/`. After completion, the task moves to `work/collaboration/done/writer-editor/` with linked artifacts and a work log.

## Criticism & Clarifications

This pattern is not a replacement for human judgment. It is a coordination scaffold that makes judgment outcomes visible and traceable.
