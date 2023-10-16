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
    "team dynamics", "programming", "complexity"
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

## References

