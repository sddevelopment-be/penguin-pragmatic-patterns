+++
title = "Consistency through conventions"
author = "Stijn Dejongh"
problem="Developers struggle to maintain code consistency, negatively affecting code maintainability and reliability."
description = "Maintaining a consistent coding style within a team, using automation and documentation to enforce it."
type = "practice"
categories = [
    "software development",
]
tags = [
    "programming", "complexity", "readability"
]
uuid="1848f4a6-3acb-4dc8-aa49-e57a1b87cf3b"
aliases=["1848f4a6-3acb-4dc8-aa49-e57a1b87cf3b"]
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "1"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0.5"},
  {name = "extensible", delta = "0.5"},
]
pubdate="2023-08-26"
+++

{{<image
src="/images/practices/outlier_consistency.png"
alt="A field of blue circles and a single orange square"
caption="Find the orange square! Illustrating that finding an outlier is easier in a mostly uniform environment." >}}

## Problem Statement

Developers struggle to maintain code consistency, negatively affecting code maintainability and reliability.

## Intent

We wish to maintain a higher level of code discipline, increasing the reliability of the code.

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

* Your language of choice has a recommended style guide
* Automated code analysis/linting is in place, or available
* Your team is coherent, and able to align on a preferred style
* Your development environment offers a way to share/import code styles

### Deterrents

* We have a need for expressing our individuality.
* You work with many distinct codebases or programming languages.
* Manually reviewing code for consistency is a tedious task, that most prefer to avoid.
* Normalization of deviance: if most of your operating process is "exceptional", the "exception" becomes the norm.

## Solution

Define a consistent coding style for your team, document it, use it, and enforce it.
If possible, add automation to your build process to point out any irregularities.
<br /><br />
Even if code is not fully up to spec, it is better to be consistent with the rest of the surrounding code than to introduce yet another style to 
an existing project. If you are going to change conventions midway through the life-cycle of a codebase, be sure to change all of it.
Do not let inconsistent styles creep into your repositories.
<br />

{{<info text=`
Being consistent within a codebase does not mean your need to apply the same style to all repositories within your project.
It can be a viable option to apply a certain style within one repository, and a different one in another.
As long as the code is consistent with it's surrounding, you will get the benefit of pattern recognition.
` >}}

## Rationale

* Code is write-once, read-often.
* Working with consistent representations lowers mental load.
* Humans are excellent at recognizing deviations from the norm.

## Examples

### Nuke 'em, duke!

A great example of this is the use of brackets to identify code blocks in Java. While not strictly necessary to make your code compile or work, 
many teams explicitly ask their developers to include brackets, even on conditionals that could be written as one-liners. This particular 
convention tends to irk newer developers who like their code to be as concise as possible. 
While brevity is a usually a good thing, at other times it can be confusing. 

Let's take a quick look at the code below, which checks whether we are under attack, and whether to launch a retaliatory nuclear strike.

```java
public void failSafe(boolean thePresidentIsDead){
    if(thePresidentIsDead)
        launchNukes();

    businessAsUsual();
}
```
   
Now imagine someone in the team is tasked to add logging statements to the entire codebase. 
They do as they are told, resulting in the code below.
At first glance, everything looks fine. Can you spot the cataclysmic mistake?

```java
public void failSafe(boolean thePresidentIsDead){
    LOG.info("Checking to see if everything is still okay...");

    if(thePresidentIsDead)
        LOG.warn("OMG! You killed him. You bastards!");
        launchNukes();

    LOG.info("Carry on, carrying on");
    businessAsUsual();
}
```

The nukes will be launched, regardless of the president being alive or not.
A simple log statement, combined with misleading indentation has set forth a thermonuclear apocalypse.

### Use Case: Enforce coding standards automatically

Most (semi-mature) languages have a preferred style. It is usually wise to stick to it, even if you do not personally like it.
As a few examples: Java is written mostly in camelCase, C# uses PascalCase for everything but variables, python and javascript developers tend to 
put expected variable types in the names,... . The list on small and large differences between different language default writing styles is long. 

Even on your project, you might decide to use a particular spacing/indentation convention, method ordering, or you might enforce a certain level 
of test coverage for parts of your project. Basically: there is a lot of custom conventions that exist within a project. On most projects, the 
biggest part of review comments are related to people not following the preferred style correctly.

In order to avoid mostly useless back-and-forth on stylistic differences, delegate these things to an automated system.
There are plent of good linters and static code analysis tools out there that let your automatically find and highlight issues with the style of 
code that is being written. Additionally: most modern IDE's allow developers to import a stylesheet into their tooling, and reformat the code prior to commiting it to the 
source control system. 

{{<tip text=`
Let a machine handle the easily spotted and corrected "issues" in your code base, enforcing consistency.
Spend your time on digging into the important things, such as functionality or the architecture of the code.
` >}}

## References

* {{<reference author="Hoover, D.; Oshineye, A."
  year="2009"
  title="Apprenticeship Patterns"
  isbn="9780596518387"
  publisher="O'Reilly Media, Inc."
  link="https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842/" >}}
* {{<reference author="Fowler, M.; Beck, K.; Brant J.; Opdyke W.; Roberts D."
  year="2012"
  title="Refactoring: Improving the Design of Existing Code"
  isbn="9780133065268"
  publisher="Addison-Wesley Professional"
  link="https://www.goodreads.com/book/show/18624706-refactoring" >}}
* {{<reference author="Thomas, D.; Hunt, A."
  year="2019"
  title="The Pragmatic Programmer, 20th Anniversary Edition: your journey to mastery"
  isbn="9780135957059"
  publisher="Addison-Wesley Professional"
  link="https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/" >}}
* {{<reference author="Various authors"
  year="2023"
  title="Programming Style"
  site="wikipedia.org"
  link="https://en.wikipedia.org/wiki/Programming_style" >}}
* {{<reference author="Gravley, L."
  year="2020"
  title="Introducing GitHub Super Linter"
  site="github.blog"
  link="https://github.blog/2020-06-18-introducing-github-super-linter-one-linter-to-rule-them-all/" >}}
* {{<reference author="Google Open Source"
  year="2023"
  title="Google Style Guides"
  site="github.io"
  link="https://google.github.io/styleguide/" >}}