+++
title = "Consistency through conventions"
author = "Stijn Dejongh"
problem=""
description = ""
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
  {name = "minimal", delta = "0"},
  {name = "maintainable", delta = "0"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "0"},
]
pubdate="2023-08-26"
+++

## Problem Statement

## Intent

## Contextual forces

### Enablers

### Deterrents

## Solution

## Examples

### Nuke 'em, duke!

A great example of this is the use of brackets to identify code blocks in Java. While not strictly necessary to make your code compile or work, 
many teams explicitly ask their developers to include brackets, even on conditionals that could be written as one-liners. This particular 
convention tends to irk newer developers who like their code to be as concise as possible. 
While brevity is a usually a good thing, at other times it can be confusing. 

Letś take a quick look at the code below, which checks whether we are under attack, and whether to launch a retaliatory nuclear strike.

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
