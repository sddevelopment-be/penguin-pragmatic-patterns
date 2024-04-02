+++
title = "Traceable decisions"
author = "Stijn Dejongh"
description = ""
type = "practice"
categories = [
    "software development",
]
tags = [
    "decision making", "tracking", "tracability", "log"
]
uuid="e6cdeaa2-cc30-4928-95fd-f28ea7cb489d"
aliases=["e6cdeaa2-cc30-4928-95fd-f28ea7cb489d", "ADRs"]
ammerse = [
    {name = "agile", delta = "0"},
    {name = "minimal", delta = "0"},
    {name = "maintainable", delta = "0"},
    {name = "environmental", delta = "0"},
    {name = "reachable", delta = "0"},
    {name = "solvable", delta = "0"},
    {name = "extensible", delta = "0"},
]
+++

## Problem Statement

## Intent

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

### Deterrents

## Solution



## Examples

### Minimal design documentation

#### Functional Requirements Template

```markdown
    # Functional Requirements

    ## Business Statement
    Briefly describe the problem that the system is intended to solve. How it aims to solve it, and what the expected benefits are.
    Write this in a way that is understandable to all stakeholders, not just technical people. Think of it as your 2-minute elevator pitch on 
    which you can expand if people are interested.

    ## Stakeholders Overview
    A short summary of the key people / personas that will interact with the system in some way. Be sure to include the developers, testers, and 
    your organization, as well as the envisioned customers and end-users.

    | Persona name | Description | Cares about |
    | --- | --- | --- |
    | Developers | Technical staff implementing new features, and maintaining the code. | Clarity in code, easy-to-read documentation, ability to be creative, speed of change |
    
    ## Top-level functional requirements

    A very short list of the most important features that the system must have. These are the features that are most important to the 
    stakeholders, and that will be used to prioritize the work later on. You can format these as a bullet list, or as a table. 
    It is advisable to add an indication of the relative importance of each feature, to help with prioritization.
    A light-weight way to do this is to use the MoSCoW method, where you indicate if a feature is Must-have, Should-have, Could-have, or Won't-have.
    

```

#### Design Vision Template

#### Architecture Decision Records Template

```markdown
    # Architecture Decision Records
    
    ## ADR-001: Title
    **status**: Proposed/Accepted/Rejected
    **date**: YYYY-MM-DD

    ### Context

    ### Decision

    ### Rationale

    ### Envisioned Consequences
    
    ### Considered Alternatives
    
```

#### Implementation roadmap Template

#### Technical Design Template

## References

* {{<reference author="Keeling, M."
    year="2017"
    isbn="1680502093"
    title="Design It: From Programmer to Software Architect"
    publisher="The Pragmatic Bookshelf"
    link="https://pragprog.com/titles/mkdsa/design-it/" >}}


---


