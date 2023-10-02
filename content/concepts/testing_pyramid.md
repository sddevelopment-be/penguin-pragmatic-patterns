+++
title = "The Testing Pyramid"
author = "Stijn Dejongh"
description = ""
type = "concept"
categories = [
    "software development",
]
tags = [
    "software development", "testing"
]
uuid = "6169f9c0-dfe0-49b1-b459-acf01ac69c40"
aliases = ["6169f9c0-dfe0-49b1-b459-acf01ac69c40"]
pubdate = "2023-09-25"
+++

Think of tests as a bunch of experiments. Just like in science, we set out to prove a hypothesis. In the case of software development, our
hypothesis is: "this code does what I want it to do". Writing tests is a semi-formal way to prove that the actual behaviour of our code is what
we expect it to be.

Software is created by combining numerous small building blocks, and arranging them in such a way that makes the resulting system behave the way
we want it to[^1]. We want to make sure that our building blocks behave the way we want them to. While this does not guarantee to make the
combination of these blocks work perfectly, working with broken tools will guarantee the resulting system does not work.
In short: testing the different components of your system does not guarantee success. Not validating them does guarantee failure.

There are numerous ways of validating the behaviour of software. These can range from highly isolated tests, verifying only a very small chunck
of the codebase, to having a user feedback form in the software, and letting your users inform you of any issues they encounter.

## Description


The testing pyramid displays different types of test. These are ordered top-to-bottom from "more integrated" to "more isolated".
Tests that are more isolated are generally easier to create, as there is less work needed to set up the context for the experiment.

{{< image src="/images/concepts/testing_pyramid.png" alt="The testing pyramid" >}}

## Detailed Description

* **Function/Method tests**: The lowest level of tests. These verify the behaviour of a single (public) method. These tests are usually employed 
  to validate a tricky bit of logic, or to make sure exceptional cases are handled properly.
* **Unit tests**:
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