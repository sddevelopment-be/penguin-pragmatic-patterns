+++
title = "Mind Mapping: visualizing a topic"
author = "Stijn Dejongh"
problem = "You are learning a wealth of new information, but find it difficult to keep an overview of what you know."
description = "Draw a map of the concepts you know, in order to deepen your understanding."
type = "practice"
categories = [
    "learning",
]
tags = [
    "ideation", "research", "diagramming"
]
displaySection = "learning"
uuid="71261539-4964-4575-820b-1b155d1b6071"
aliases=["71261539-4964-4575-820b-1b155d1b6071"]
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "0"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "0.5"},
]
pubdate="2023-09-05"
+++

## Problem Statement

You are learning a wealth of new information, but find it difficult to keep an overview of what you know or how certain things relate to other
knowledge you have.

## Intent

* Organize your understanding of a certain topic
* Force yourself to add structure to your thoughts
* Allow for train-of-thought note-taking, while keeping track of the whole

## Contextual forces

### Enablers

* You are comfortable being confronted with your own gaps of understanding
* Having non-complete, non-final representation of your knowledge is okay
* Modern technology makes it easy to create mindmaps

### Deterrents

* Mindmaps are relatively high effort
* The resulting visual artefact of a mindmapping exercise becomes stale quickly
* Not knowing what concept to attach something to can lead to frustration or abandoning of the mindmap

## Solution

Create a _mindmap_ that structure the core ideas of a certain domain or piece of work.
As a spiders web, the mindmap starts by putting a central concept or question at the center of the page.
You then attach words to this central theme, as they appear in your head.

Make sure not to put too much effort into your mindmap, the act of mapping is where the value lies.
You will soon realize that as your understanding grows, your map will no longer be accurate.
At this point, just create a new one. If you want to solidify your newfound knowledge, repeat this process until you are satisfied.

If you work digitally, you can keep your mindmaps up to date a bit more easily as you will not run into spacing issues as fast.
Though, if your sketch is not updated for a long time, consider ditching or revisting it, as it likely lost most of its value.

{{<tip text=`Do not focus on the result too much. The drawing you end up with is secondary to the process of creating it.
Most mindmaps are used as a temporary tool to organize your thoughts, or help you understand a concept in a broader way.
The drawing is less important than the clarity of mind you gain by creating it.
` >}}

## Rationale

* Visualizations are a tremendous helps in remembering facts. Popular culture is filled with the idea of "mind palaces", which is a technique used
  by people who display extraordinary capabilities or short-term memory storage.
* We are good at thinking creatively, but our recollection is often times flawed. This leads us to forget about certain aspects
* Not knowing what something relates to makes it harder to remember facts.
* Humans prefer to think in structures, it has been shown that structuring a text or idea helps you refine the knowledge.

## Examples

### Mind-mapping the concepts and intent of this publication

While preparing to write this publication, I considered what knowledge a software developer should have so they are equipped to handle most
challenges. With "handling most challenges", I do not mean the developer will be able to draw upon a fixed list of existing solutions.
Rather that they can combine the information they already have, and to come up with of a way of resolving the issue at hand.
This is what I came up with as a general structure, which you can see reflected in how this work has been structured.

{{< image src="/images/practices/knowledge_map.png"  alt="A mindmap of topics in this work"  caption="A mindmap of topics in this work" >}}

This map was made digitally by using [PlantUml](https://plantuml.com/mindmap-diagram). This is a text-based graphing language, that you can play
with on their online editor.
The main advantage here is that you can move quickly (provided your typing speed is up to par). As the syntax is very simple, the brain-to-screen
barrier is quite low. Having a digital copy of your mindmap around can come in handy if you want to update it later on.

````
@startmindmap
+ Dev knowledge
-- Learning
--- Knowledge vs Beliefs
--- Styles
--- Biases_mindmap-Software_developer_learning_path
--- Techniques
---- Empericism
---- Exploration
--- Knowledge portfolio
---- Directed learning
---- Finding gaps
@endmindmap
````

## References

* {{<reference author="Hunt, A."
  year="2008"
  title="Pragmatic Thinking and Learning: Refactor Your wetware"
  publisher="The Pragmatic Bookshelf"
  isbn="9781934356050"
  link="https://pragprog.com/titles/ahptl/pragmatic-thinking-and-learning/" >}}