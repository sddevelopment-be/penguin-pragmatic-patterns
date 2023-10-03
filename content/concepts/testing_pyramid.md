+++
title = "The Testing Pyramid"
author = "Stijn Dejongh"
description = "The testing pyramid categorizes software tests ranging from isolated (fast, less realistic) to integrated (slow, more realistic)."
type = "concept"
categories = [
    "software development",
]
tags = [
    "software development", "testing", "overview"
]
uuid = "6169f9c0-dfe0-49b1-b459-acf01ac69c40"
aliases = ["6169f9c0-dfe0-49b1-b459-acf01ac69c40"]
pubdate = "2023-10-01"
+++

Think of tests as a series of experiments in the world of software development. Just like scientists aim to prove their hypotheses, software
developers set out to prove that their code does precisely what it's intended to do. Writing tests is our semi-formal way of ensuring that the
actual behavior of our code aligns with our expectations.

Software development involves combining numerous small building blocks, arranging them in a way that molds the system into the desired behavior[^1].
Each of these building blocks must behave as intended. While validating individual components doesn't guarantee the perfect functioning of the
overall system, neglecting this step almost certainly guarantees failure.

There are various ways to validate software behavior, ranging from highly isolated tests that scrutinize small code segments to user feedback forms,
where users report any issues they encounter.

## Description

Imagine a pyramid that categorizes different types of tests. These categories are organized from "more integrated" at the top to "more isolated" at
the bottom.

{{< image src="/images/concepts/testing_pyramid.png" alt="The testing pyramid" >}}

**Isolated tests** are the most straight-forward to create, since they require minimal set-up effort.
They are fast to write and fast to execute. However, isolated tests are the most artificial type of tests, as they are the furthest removed from
replicating real-world usage scenarios.

**Integrated tests**, on the other hand, are the most life-like scenario's we can create, simulating real-world usage. However, they demand
substantial setup effort, making them more time-consuming and expensive to create and slower to execute.

As a developer, you must make a trade-off decision: "How much feedback speed and implementation time am I willing to sacrifice in exchange for
additional realism?"

{{<tip text=`
The testing pyramid provides insight into various test types, but it doesn't imply that you should use all of them or that some are inherently
better than others. Like many aspects of software development, your choice should align with your specific context.

A recommended heuristic is to **aim for the fastest possible feedback loop.**
` >}}

## Detailed Description

* **Function/Method tests**: The lowest level of tests. These verify the behaviour of a single (public) method. Method-level tests are highly
  isolated, and provide the fastest feedback[^2]. These tests are usually employed to validate tricky bits of core logic, or to make sure
  exceptional cases are handled properly.
* **Unit tests**: These test a particular "unit of work", meaning a set of methods or classes that provide one cohesive, and encapsulated,  
  functionality to the rest of the system. Method level tests are a sub-set of unit tests, where the unit of work is as granular as can be. We
  make the distinction between method-level tests and unit tests[^3], to emphasize the fact that unit tests can encompas multiple classes and
  methods. However, unit tests stick to validating one main functionality, and test them in isolation. Meaning there should be little need to
  stub/mock external functionality.
* **Acceptance tests**:
* **Integration tests**:
* **Smoke tests**:
* **E2E tests**:
* **Performance tests**:
* **UI tests**:
* **Exploratory tests**:
* **Recovery tests**:
* **User feedback**:

## References

* {{<reference author="Fowler, M."
  year="2018"
  title="The Practical Test Pyramid"
  site="MartinFowler.com"
  link="https://martinfowler.com/articles/practical-test-pyramid.html" >}}
* {{<reference author="Cohn, M."
  year="2010"
  title="Succeeding with Agile: Software Development Using Scrum"
  isbn="0321579364"
  publisher="Addison-Wesley"
  link="https://www.goodreads.com/en/book/show/6707987-succeeding-with-agile" >}}
* {{<reference author="Kaner, C.; Bach, J.; Pettichord, B."
  year="2001"
  title="Lessons Learned in Software Testing: A Context-Driven Approach"
  isbn="9780471081128"
  publisher="Wiley"
  link="https://www.oreilly.com/library/view/lessons-learned-in/9780471081128/" >}}
* {{<reference author="Beck, K. & Andres, C."
  year="2004"
  title="Extreme Programming Explained: Embrace Change"
  isbn="9780321278654"
  publisher="Addison-Wesley"
  link="https://www.goodreads.com/book/show/67833.Extreme_Programming_Explained" >}}
* {{<reference author="SE Daily podcast"
  year="2019"
  title="Facebook Engineering Process with Kent Beck"
  site="Software Engineer Daily"
  link="https://softwareengineeringdaily.com/2019/08/28/facebook-engineering-process-with-kent-beck" >}}

[^1]: Decomposing functionality into smaller blocks is often called "divide and conquer", referencing Caesar's famous strategy in The Gallic
Wars (58-50 BC).

[^2]: Apart from compilation errors, that is.

[^3]: Being too strict in your definition of "Unit Tests" can lead to difficult-to-maintain code, as it commonly pushes people towards
structural testing (i.e. verifying a certain method calls another method). This will make future refactoring and restructuring a lot more
difficult. In general, write your tests as if you are unaware of the internal structure of your code. If you decide to extract part of the
functionality in a class to a composite object (helper class), there should be no effect on your test suite.