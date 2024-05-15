+++
title = "The Testing Pyramid"
author = "Stijn Dejongh"
description = "The testing pyramid categorizes software tests ranging from isolated (fast, less realistic) to integrated (slow, more realistic)."
type = "concept"
categories = [
    "software development",
]
tags = [
    "testing", "overview", "trade-off"
]
uuid = "6169f9c0-dfe0-49b1-b459-acf01ac69c40"
aliases = ["6169f9c0-dfe0-49b1-b459-acf01ac69c40"]
pubdate = "2023-10-01"
+++

Think of tests as a series of experiments in the world of software development. Just like scientists aim to prove their hypotheses, software
developers set out to prove that their code does precisely what it's intended to do. Writing tests is our semiformal way of ensuring that the
actual behaviour of our code aligns with our expectations.

Software development involves combining numerous small building blocks, arranging them in a way that moulds the system into the desired behaviour
[^1].
Each of these building blocks must behave as intended. While validating individual components doesn't guarantee the perfect functioning of the
overall system, neglecting this step almost certainly guarantees failure.

There are various ways to validate software behaviour, ranging from highly isolated tests that scrutinize small code segments to user feedback 
forms,
where users report any issues they encounter.

## Description

Imagine a pyramid that categorizes different types of tests. These categories are organized from "more integrated" at the top to "more isolated" at
the bottom.

{{< image src="/images/concepts/testing_pyramid.png" alt="The testing pyramid" >}}

**Isolated tests** are the most straight-forward to create, since they require minimal setup effort.
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

* **Function/Method tests**: These tests focus on verifying the behaviour of individual methods, offering fast and highly isolated feedback. They are
  typically used to validate core logic and handle exceptional cases.

* **Unit tests**: Testing specific "units of work," which can encompass a set of methods or classes providing cohesive functionality to the system.
  While method-level tests are a subset of unit tests, the latter can involve multiple classes and methods, focusing on one main functionality while
  testing in isolation, minimizing the need for external functionality stubbing/mocking[^2].

* **Acceptance tests**: These determine when a particular feature is ready for deployment, spanning across multiple units to ensure correct
  implementation. It's good practice to cover both expected "happy flow" and main "exception flow" cases in these tests. They are sometimes referred
  to as "service tests," "contract tests," or "customer tests" in specific architectures, where external interactions are stubbed out, but internal
  code is used.

* **Integration tests**: These validate the connection to external systems, typically via a test implementation or a low-footprint approach.
  Integration tests are slower and more resource-intensive due to increased setup requirements. It's advisable to limit the use of integration tests
  to specific cases.

* **Smoke tests**: Performed during system launch to ensure every component initializes correctly. They are not meant to test functionality but
  rather to provide minimal validation that the system is operational. Smoke tests are often executed before resource-intensive tests. If smoke
  tests fail, it indicates an issue during system initialization, and running further tests would be inefficient until the system stabilizes.

* **E2E tests**: End-to-end tests validate the entire system in a live environment, ensuring that all modules interact as intended and accurately
  representing real-world use cases. While valuable for comprehensive validation, they require a substantial setup time and have a longer execution
  duration, resulting in delayed feedback, particularly for complex systems. These tests generally do not validate user interface logic and
  visuals, but stick to using machine-to-machine entrypoints.

* **Performance tests**: Also referred to as "load tests," these are end-to-end (E2E) tests that employ large volumes of data or requests to
  evaluate the system's behaviour when subjected to heavy usage. Performance tests serve as a means to assess the runtime efficiency of your systems,
  particularly under extreme conditions, and to identify bottlenecks or performance degradation within the system.

* **UI tests**: User Interface tests, often abbreviated as UI tests, belong to the category of end-to-end tests that interact with the system
  through its graphical user interface (if available). These tests require specialized tooling, such as browser-control software, to be executed
  automatically. UI tests mimic user behaviour by navigating through the user interface, verifying that the UI accurately displays the expected
  results and maintains its intended appearance. However, UI tests are challenging to set up, have a lengthy execution time, and are known for their
  fragility, as even minor alterations to the UI structure can lead to test failures[^3].

* **Exploratory tests**: These are manual tests aimed at uncovering unexpected behaviours or system properties that may not have been previously
  known. They are designed to reveal unusual situations, such as using extreme or nonsensical values, and are best conducted by individuals who were
  not directly involved in the system's creation to avoid unintentional bias towards expected behaviours.

* **Recovery tests**: In simple terms, recovery tests involve intentionally disrupting (either partially or entirely) your system and observing how
  it recovers. The recovery process can be performed manually or automatically. Think of these tests as a fire drill for your software systems,
  helping assess their resilience.

* **User feedback**: While not always included in traditional testing approaches, user feedback is an invaluable source of insights. It provides
  information on how real end-users interact with your system, which features are meaningful to them, and common issues they encounter. However,
  this type of feedback typically occurs at the end of a release cycle and may not always be reliable.

## Summary

The Testing Pyramid categorizes various test types, ranging from isolated tests that provide fast, highly focused feedback to integrated tests that
simulate real-world scenarios but demand more setup effort. Developers must strike a balance between feedback speed and realism when choosing the
right tests for their context. 

The pyramid offers a versatile framework, with different test types serving specific purposes, from function/method
tests for core logic validation to end-to-end tests for comprehensive system validation. Additionally, user-interface tests, exploratory tests, 
recovery tests, and user feedback play crucial roles in uncovering unexpected behaviours and gathering valuable insights, though they come with their unique challenges. By
Understanding these testing categories, software teams can craft effective testing strategies that enhance software quality.

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

[^2]: Being too strict in your definition of "Unit Tests" can lead to difficult-to-maintain code, as it commonly pushes people towards
structural testing (i.e. verifying a certain method calls another method). This will make future refactoring and restructuring a lot more
difficult. In general, write your tests as if you are unaware of the internal structure of your code. If you decide to extract part of the
functionality in a class to a composite object (helper class), there should be no effect on your test suite.

[^3]: The most common web=based UI test frameworks work by parsing their HTML DOM-tree and using identifiers or position-based
logic to perform user interaction. If you make some visual changes to your web application, such as moving a menu around, or changing the order
of elements, these tests tend to break in spectacular fashion. As they are difficult to set up and maintain, and tend to result in false-negative
issue reports, developers tend to avoid using them. Have a look at [cypress.io](https://www.cypress.io/)
or [selenium.dev](https://www.selenium.dev/) if you are interested in learning more about this type of tests.