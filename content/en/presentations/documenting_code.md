+++
title = "(self-)Documenting Code"
subtitle = "low friction doc creation & maintenance"
author = "Stijn Dejongh"
[logo]
src = "/images/logos/sdd_logo.svg"
width = "5%"
[reveal_hugo]
margin = 0.2
+++

{{% section %}}

<section data-noprocess>
<h1 style="font-size: 7rem;"> (Self-)Documenting Code </h1>
<h2 style="font-size: 4.125rem; color: #f39200;"> Low friction doc creation & maintenance </h2>

<div style="font-size: 1.2rem; margin-top: 10.25em;">
    <a href="https://www.linkedin.com/in/stijn-dejongh/" target="_blank">Stijn Dejongh</a> | <span>2024-10-24</span>
</div>

</section>

<section data-noprocess>
<h2 style="">Abstract</h2>
<div style="border-left: 2px solid #f39200; text-align: justify; font-size: 1.65rem; padding: 0">
    <p style="padding: 1.75rem; ">
    The goal of software documentation is to be useful: providing clarity and support to developers maintaining and expanding the codebase.
    Yet, the time spent on external tools to write and update documentation often feels like a distraction from actual coding.
    In this lightning talk, we’ll explore a more streamlined approach: using tools and techniques that allow developers to stay in the codebase
    while generating useful documentation artifacts.
    </p>
    <p style="padding: 1.75rem; ">
    From naming conventions, comments, and tests to diagrams-as-code and static site generators, we’ll dive into practical strategies to reduce friction
    and make documentation as low-effort as possible. The aim isn’t to eliminate documentation tasks, but to integrate them smoothly into the
    development workflow. Providing actionable tips, this session is aimed at developers looking to maintain useful documentation without breaking their flow.
    </p>
</div>
</section>

{{% /section %}}

---

{{% section %}}

## Why (don't we) document code?

---

### The docs are a lie

<img src="/images/presentations/wtf_documentation.png" style="width: 60%;" />

> Source Code never lies

---

### We like good documentation

- helps us understand the code
- helps us implement new features
- helps us avoid mistakes
- saves us mental energy

---

### We hate writing it

- [Working Software](https://agilemanifesto.org/) over Comprehensive Documentation
- Low immediate value
- Maintenance burden
- Tools are often cumbersome

{{% note %}}
* We don't need it until we do.  
* Most documentation artefacts are outdated the moment they are written.
{{% /note %}}

{{% /section %}}

---

{{% section %}}

## Goal: Reducing friction!

* Documentation should be a byproduct of the process
* Good documentation should be: **UWMA**

---

### Useful

* The code
* The project
* The organization
* Past decisions
* Common tricks and traps

---

### Well-Maintained

* Aligned with reality
* Updated frequently
* Whole team effort

{{% note %}}
* If it's not maintained, it's worse than no documentation at all.
* Whole team effort: everyone should contribute (dev, QA, FA, PM, ...)
{{% /note %}}

---

### Accessible

* Easy to find
* Clear and concise
* Actionable
* Searchable

{{% /section %}}

---

{{% section %}}

# Writing Documentation

---

> Most organizations have their own standards for design documentation. 
> These standards can range from _“You must use confluence”_ to _“Just write it
> down on a napkin and take a picture of it”_.

{{% /section %}}

---

{{% section %}}

## What to document?

---

### Intent

* Why are we doing this?
* Who cares?
* What are we trying to achieve?

---

#### Why? Who? What?

<img src="/images/concepts/ARCHI_chain_of_accountability_assigned.webp" style="width: 100%; background: #fefefe" />

---

### Structure

* High-level overview of placement in organization
* Key interaction with other systems
* Module-level overview
* Technical Dependencies

---

### Decisions

---

### Issues and Improvements

* Known bugs
* Code quality metrics
* Change rate
* Code smells and Security issues

---

### Usage and Examples

* How to use (part of) the code
* Usage metrics

---

### Recap

<img src="/images/practices/traceable_decisions_example_overview.webp" style="width: 50%; background: #fefefe" />

from: [traceable decisions](https://patterns.sddevelopment.be/practices/traceable_decisions/)


{{% /section %}}

---

{{% section %}}

## Self-documenting code?

---

### Repository Structure

---

### Test Cases

<img src="/images/presentations/readable_tests.png" style="width: 60%;" />

---

- Write test names as specifications
- Avoid weasel words
- 4xA Test Structure (Arrange, Assume , Act, Assert)
- Dogfooding

---

### Annotations and Comments


---

### Code Change Rate

{{% /section %}}

---

{{% section %}}

## Low-friction tools

> ~  
> Keep your friends close, and your documentation even closer!  
> ~ 

---

### Plain Text all the way!

---

### Make it shine

---

### your IDE and pipelines can help 

{{% /section %}}

---