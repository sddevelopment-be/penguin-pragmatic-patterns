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
- 

{{% /section %}}

---

{{% section %}}

## Goal: Reducing friction!

---

### Useful

---

### Well-Maintained

---

### Accessible

{{% /section %}}

---

# Writing Documentation

---

{{% section %}}

## What to document?

---

### Structure

---

### Intent

---

### Decisions

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