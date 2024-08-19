+++
title = "Clean code"
author = "Stijn Dejongh"
description = "Code that is easy to understand, maintain, and extend. Clean code minimizes complexity and avoids unnecessary clutter."
categories = [
    "software development",
]
tags = [
    "maintainability", "cleanliness", "readability"
]
uuid = "1f3849c8-28bc-4934-95bf-66d9dcee6858"
aliases = ["1f3849c8-28bc-4934-95bf-66d9dcee6858"]
pubdate = "2023-09-13"
image = "concepts/banner_clean_code.webp"
related_concepts = []
related_practices = ["1848f4a6-3acb-4dc8-aa49-e57a1b87cf3b", "94a558cd-4e86-4814-a5e9-d6ecafcb0d6b"]
further_exploration = [
    { type = "biblio", id = "93c3d298-690e-48b5-8140-b34ce90c2083" },
    { type = "biblio", id = "9d8ff83e-f49a-4c7c-8e40-e34ac63e2792" },
    { type = "biblio", id = "8572443d-2c27-462a-b9d7-839dd6e4d58b" },
    { type = "biblio", id = "644de556-142a-42d7-8b86-1b513b320af6" },
    { type = "raw", author = "unknown", year = "2009", title = "Manifesto for Software Craftsmanship", site = "softwarecraftsmanship.org", link = "https://manifesto.softwarecraftsmanship.org/" }
]
+++

{{<quote text="But it works! That's all that matters, right?" author="A lazy developer">}}

## Definition

Clean code refers to code that is easy to understand, maintain, and extend. It is written in a way that clearly communicates its intent, making it
accessible to other developers and to the original author when revisiting the code after some time. Clean code minimizes complexity and avoids
unnecessary clutter.

## Key Components

* **Readability:** The code is easily readable and understandable by others.
* **Maintainability:** The code is structured in a way that makes it easy to maintain and modify.
* **Expressiveness:** The code clearly expresses its intent and logic.
* **Simplicity:** The code avoids unnecessary complexity and verbosity.

When developing software, it is tempting to focus solely on making it function correctly. Undoubtedly, functionality is paramount in software
development. However, if you have ever worked on a substantial software project, you have likely spent a considerable amount of time reading and
deciphering existing code. Even if you primarily work in isolation, confusion can still arise when revisiting your own code after a significant
time-lapse.

{{<image
  src="/images/concepts/wtf_per_minute.png"  
  alt="my attempt at reproducing the infamous `WTF-per-minute` cartoon"
  float="left"
  size="30%" >}}

The mean culprit for this confusion is often code that's simply hard to understand.
It lacks expressiveness or becomes overly verbose. One helpful metric to gauge the cleanliness of your code is humorously known as the 'WTFs per
minute metric,' inspired by a well-known cartoon that has been recreated numerous times.

Writing clean code does more than pleasing your colleagues; you are doing your future self a favour.
Projects inevitably evolve, and what was once insignificant can become critical to the application's success. When the code handling this
functionality is messy, adapting to changing requirements can feel like a descent into chaos. So, do yourself a favour, and strive to keep your code
comprehensible at a glance.

Your colleagues and your future self will thank you.

## Background

### Origin

The concept of clean code has been emphasized by many influential figures in software development. Books like "The Clean Coder" by
Robert "Uncle Bob" Martin, "Refactoring" by Martin Fowler and "The Pragmatic Programmer" by Andrew Hunt and David Thomas have highlighted the
importance of writing clean, maintainable code. It was also mentioned in the "C++ Complete Reference" by Herbert Schildt, where he stated that
"a program should be written for people to read, and only incidentally for machines to execute".

### Application

Clean code is essential in software development as it facilitates collaboration, reduces the risk of introducing bugs, and makes the codebase easier
to work with over time. It is particularly crucial in large projects where multiple developers are involved, and in projects that are expected to
evolve and grow.

Many of us have encountered advice from experienced developers urging us to 'write clean code.' While the idea is straightforward —clean,
understandable code is easier to extend and maintain — the challenge lies in understanding how to achieve it.
Seasoned developers often seem to possess an intuitive sense for what constitutes 'clean' code, a skill that you will develop over time.
Yet, when you're just starting out, it is invaluable to have a set of best practices to guide you in evaluating your code's cleanliness.

### Comparisons

The idea of clean code is closely related to:

* the principles of **software craftsmanship**, which emphasize the importance of writing code that is not only functional but also well-crafted.
* the concept of **technical debt**, as clean code helps to reduce the accumulation of technical debt by making it easier to maintain and extend the
  codebase.
* the practice of **refactoring**, which involves restructuring existing code to improve its readability, maintainability, and extensibility.

### Examples

* **Readability:** Using descriptive variable and function names, writing comments where necessary, and organizing code logically to make it easy to
  follow.
* **Maintainability:** Structuring code in small, reusable functions or classes, adhering to coding standards, and avoiding hard-coding values that
  might change.
* **Expressiveness:** Writing code that clearly shows its purpose without requiring additional explanation. For example, using meaningful names and
  avoiding cryptic abbreviations.
