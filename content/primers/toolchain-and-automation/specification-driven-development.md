+++
title = "Specification-Driven Development Primer"
subtitle = "Using specifications as the bridge between intent and implementation"
aliases = ["sdd-primer", "specification-driven-development", "toolchain-and-automation/spec-driven"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
draft = true
tags = ["specification", "requirements", "workflow", "quality", "primer"]
summary = """
Specification-Driven Development clarifies what to build before implementation details. This primer positions specifications alongside acceptance tests and ADRs, and provides a lightweight execution loop for practical adoption.
"""
+++

## 1. Purpose and Positioning

Specification-Driven Development (SDD) uses a specification as the operational bridge between strategic goals and implementation work. The specification defines expected behavior, constraints, and scenarios in enough detail for developers and agents to execute without guesswork.

Use SDD when:
- Work spans components, roles, or teams.
- Requirements are ambiguous or high-risk.
- Interfaces, workflows, or non-functional constraints need explicit alignment.

## 2. SDD in the Documentation Stack

SDD complements, rather than replaces:

- Specifications: what to build and under which constraints.
- Acceptance tests: how to verify observable behavior.
- ADRs: why architectural choices were made.

A practical chain:

`Goal -> Specification -> Acceptance Tests -> ADRs -> Implementation -> Work Logs`

## 3. Minimal SDD Cycle

1. Capture functional requirements and boundaries.
2. Add concrete scenarios (Given/When/Then style where useful).
3. Identify non-functional constraints (performance, security, reliability).
4. Link acceptance tests and ADR candidates.
5. Implement incrementally and keep spec synchronized.
6. Freeze or archive spec when implementation stabilizes.

## 4. Quality Criteria for Useful Specs

A useful specification is:
- Testable: requirements map to verifiable behavior.
- Unambiguous: avoids vague verbs and open interpretation.
- Bounded: includes explicit in-scope and out-of-scope items.
- Traceable: linked to tests, decisions, and implementation artifacts.

## 5. Trade-offs

Benefits:
- Better cross-role alignment.
- Reduced rework from implicit assumptions.
- Stronger onboarding and handoff quality.

Costs:
- Upfront writing and review effort.
- Ongoing maintenance if scope changes rapidly.

## 6. Starter Checklist

- [ ] Problem statement and outcomes are explicit
- [ ] Functional requirements are numbered
- [ ] Scenarios cover happy path and failure modes
- [ ] Non-functional constraints are defined
- [ ] Links to acceptance tests and decision records exist
- [ ] Spec is reviewed before major implementation starts

## References

- Upstream doctrine approaches: `spec-driven-development.md`, `spec-driven-6-phase-cycle.md`
- Local related content: `content/practices/traceable_decisions.md`
