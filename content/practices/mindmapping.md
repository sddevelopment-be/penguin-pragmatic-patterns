+++
title = "Mind Mapping: visualizing a topic"
author = "Stijn Dejongh"
problem = "You are learning a wealth of new information, but find it difficult to keep an overview of what you know."
description = "Draw a map of the concepts you know, in order to deepen your understanding."
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
  {name = "agile", delta = "0.5"},
  {name = "minimal", delta = "-0.5"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0.5"},
  {name = "extensible", delta = "0.5"},
]
pubdate = "2023-09-05"
image = "practices/mindmapping_cover.webp"
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
The following factors support effective application of the practice:

* You are comfortable being confronted with your own knowledge gaps.
* Having incomplete or evolving representations of knowledge is acceptable.
* Access to modern technology that facilitates easy creation and updating of mind maps.

### Deterrents
The following factors prevent effective application of the practice:

* The effort required to create mind maps is relatively high.
* The visual artifact of the mind map becomes outdated and is not refreshed.
* The individual experiences frustration from not knowing how to connect certain concepts within the mind map, potentially leading to abandonment.

## Solution

Create a _mind map_ that structure the core ideas of a certain domain or piece of work.
As a spiders web, the mind map starts by putting a central concept or question at the centre of the page.
You then attach words to this central theme, as they appear in your head.

Make sure not to put too much effort into your mind map, the act of mapping is where the value lies.
You will soon realize that as your understanding grows, your map will no longer be accurate.
At this point, just create a new one. If you want to solidify your newfound knowledge, repeat this process until you are satisfied.

If you work digitally, you can keep your mind maps up to date a bit more easily as you will not run into spacing issues as fast.
Though, if your sketch is not updated for a long time, consider ditching or revisiting it, as it likely lost most of its value.

{{<tip text=`Do not focus on the result too much. The drawing you end up with is secondary to the process of creating it.
Most mind maps are used as a temporary tool to organize your thoughts, or help you understand a concept in a broader way.
The drawing is less important than the clarity of mind you gain by creating it.
` >}}

## Rationale

* Visualizations are a tremendous helps in remembering facts. Popular culture is filled with the idea of "mind palaces", which is a technique used
  by people who display extraordinary capabilities or short-term memory storage.
* We are good at thinking creatively, but our recollection is often times flawed. This leads us to forget about certain aspects
* Not knowing what something relates to makes it harder to remember facts.
* Humans prefer to think in structures, it has been shown that structuring a text or idea helps you refine the knowledge.

## Considerations

* **High Effort:** Creating and maintaining mind maps can be time-consuming and require significant effort.
* **Staleness:** Mind maps can quickly become outdated if not regularly updated, losing their value as a knowledge management tool.
* **Frustration:** Difficulty in connecting certain concepts can lead to frustration and potential abandonment of the mind map.
* **Focus on the Result:** Over-emphasizing the final product can detract from the benefits of the process of creating the mind map.
* **Over-reliance on Visuals:** Some individuals may rely too heavily on visual aids, potentially neglecting other forms of cognitive processing
  and learning.

### Mitigation Strategies

* **Scheduled Updates:** Set regular intervals for reviewing and updating mind maps to keep fresh. Throw out outdated maps, and create new ones
  when learning new ideas.
* **Guided Structure:** Provide templates or examples to help individuals start their mind maps, reducing frustration related to connecting
  concepts.
* **Diverse Techniques:** Encourage the use of mind maps in conjunction with other learning and organizational techniques to avoid over-reliance on
  visual aids.

## Examples

### Mind-mapping the concepts and intent of this publication

While preparing to write this publication, I considered what knowledge a software developer should have so they are equipped to handle most
challenges. With "handling most challenges", I do not mean the developer will be able to draw upon a fixed list of existing solutions.
Rather that they can combine the information they already have, and to come up with of a way of resolving the issue at hand.
This is what I came up with as a general structure, which you can see reflected in how this work has been structured.

{{< image 
  src="/images/practices/knowledge_map.png"  
  alt="A mind map of topics in this work"
  caption="A mind map of topics in this work" 
  size="40%" >}}

This map was made digitally by using [PlantUml](https://plantuml.com/mindmap-diagram). This is a text-based graphing language, that you can play
with on their online editor.
The main advantage here is that you can move quickly (provided your typing speed is up to par). As the syntax is very simple, the brain-to-screen
barrier is quite low. Having a digital copy of your mind map around can come in handy if you want to update it later on.

````
@startmindmap
+ Dev knowledge
-- Learning
--- Knowledge vs Beliefs
--- Styles
--- Biases_mindmap-Software_developer_learning_path
--- Techniques
---- Empiricism
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