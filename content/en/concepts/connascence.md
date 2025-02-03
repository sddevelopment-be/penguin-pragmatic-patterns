+++
title = "Connascence"
subtitle = "Interdependence of software components"
author = "Nicholas Ocket, Stijn Dejongh"
description = ""
summary="""
"""
categories = [
    "software development",
]
tags = [
    "connascence", "software development", "interdependence", "components", "design", "system characteristics"
]
uuid="c8c57ad1-c7f0-49ff-8aa1-f37166f8f65d"
aliases=["c8c57ad1-c7f0-49ff-8aa1-f37166f8f65d", "orthogonality"]
pubdate="2024-12-12"
image = ""
related_concepts = [
    "c57288e3-b102-4212-adb7-a4339a3a9e87",
    "3683719c-d1ff-4693-a5c5-d9eefb07e409"
]
related_practices = [
    "04c6129d-11f7-4aa0-a809-1b972a0d7ef9"
]
further_exporlation = [
    {type="biblio", id="9d8ff83e-f49a-4c7c-8e40-e34ac63e2792"},
    {type="raw", author="Mozingo, D.; Richards, T.", year="2019", title="What is Connascence?", url="https://connascence.io/", site="Connascence.io"},
    {type="raw", author="Weirich, J", year="2012", title="Talk: Connascence Examined", url="https://www.youtube.com/watch?v=HQXVKHoUQxY", site="YouTube"},
    {type="raw", author="Brown, G.", year="2011", title="Connascence as a Software Design Metric", url="https://practicingruby.com/articles/connascence", site="practicingruby.com"},
    {type="raw", author="Page-Jones, M.", year="1992", title="Comparing techniques by means of encapsulation and connascence", url="https://dl.acm.org/doi/abs/10.1145/130994.131004", publication="Communications of the ACM", volume="35", issue="9"}
]

+++

## Definition

Originating from the latin word _'connascere'_, meaning _'born together'_, connascence is a term used in software development to describe the interdependence of software components -- a property often referred to as _'coupling'_. It is a measure of how much two or more software components are dependent on each other, with respect to a particular reason for change. Excessive connascence in our software means that the system is hard to change and hard to maintain.

{{< quote text=`Two elements are connascent if a change to one element would also force a change to the other in order for the program to be correct.`author="Meilir Page-Jones" >}}

One of the most important benefits of connascence is that it gives developers a vocabulary to talk about different types of coupling. Connascence codifies what many experienced engineers have learned by trial and error: Having a common set of nouns to refer to different types of coupling allows us to share that experience more easily.

## Key Components

Reasoning about the amount of interdependence between softare components is tricky, as it is not a binary property. Components can be interdependent is various ways, and to various degrees. To make reasoning about coupling of components more manageable, the connascence metric has been broken down into several different facets. Software components can be evaluated for their connascence based on the following criteria:

- **Strength**: The strength of connascence is a measure of how much a change in one component would necessitate a change in another component. The higher the strength, the more tightly coupled the components are.
- **Degree**: The degree of connascence is a measure of how many components are dependent on each other. The higher the degree, the more components are affected by a change in one component.
- **Locality**: The locality of connascence is a measure of how close the dependent components are to each other. The closer the components, the more localized the connascence.

## Background

### Origin

> A very brief history of the concept, including its origins and evolution over time.

### Application

> A paragraph or two explaining how the concept is applied in practice, from a high-level perspective.
> This section should provide a clear understanding of the concept's purpose and value.

### Comparisons

> Compare the concept with related ideas to highlight its unique aspects.
> Make sure to express a clear distinction between the concept and related concepts. This is best done by providing a varied set of examples,
> some illustrating similarities and others highlighting differences.
> Be brief and to the point, focusing on the most important aspects. Further details can be referred to as a link to relevant background reading in
> the "Further Exploration" section.

## Examples
> Illustrate how the concept is applied in a specific scenario.


