+++
title = "Mind Mapping"
subtitle = "Organize your thoughts and knowledge visually"
author = "Stijn Dejongh"
problem = "You are learning a wealth of new information, but find it difficult to keep an overview of what you know."
description = "Mind mapping is a technique that helps you visually organize and structure your thoughts, enhancing your ability to understand, connect, and retain knowledge."
summary = """
Struggling to keep track of your growing knowledge? 

Learn how to use mind mapping to organize your thoughts, clarify complex ideas, and improve your learning process. 
This technique helps you structure information visually, making it easier to connect concepts and retain knowledge over time.
"""
categories = [
    "learning",
]
tags = [
    "ideation", "research", "visualization", "knowledge management", "thought structuring", "brainstorming"
]
displaySection = "learning"
uuid="71261539-4964-4575-820b-1b155d1b6071"
aliases=["71261539-4964-4575-820b-1b155d1b6071"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0", rationale = "Mind maps support flexibility but require regular updates, leading to a neutral impact."},
  {name = "minimal", delta = "-0.2", rationale = "The effort and complexity involved in creating and maintaining mind maps slightly detract from minimalism."},
  {name = "maintainable", delta = "0", rationale = "The maintenance required is balanced by the ease of updating digital mind maps, resulting in a neutral impact."},
  {name = "environmental", delta = "0.4", rationale = "Mind maps significantly aid in understanding broader contexts and organizing knowledge effectively."},
  {name = "reachable", delta = "0.4", rationale = "Mind maps make goals more attainable by organizing information clearly, leading to a moderately positive impact."},
  {name = "solvable", delta = "0.7", rationale = "Mind maps greatly enhance problem-solving capabilities by structuring complex information."},
  {name = "extensible", delta = "0.3", rationale = "The technique is adaptable and extendable but requires effort to maintain, resulting in a moderately positive impact."}
]
related_concepts = []
related_practices = []
further_exploration = [
  {type="biblio", id="d33fc09e-39c6-411e-a70e-2ca98375abd6"},
  {type="biblio", id="f537c66d-38e8-40cc-aa94-81880f270475"},
]
pubdate = "2023-09-05"
image = "practices/mindmapping_cover"
+++

## Problem Statement

You are learning a wealth of new information, but find it difficult to keep an overview of what you know or how certain things relate to other
knowledge you have.

## Intent

* Organize your understanding of a certain topic
* Force yourself to add structure to your thoughts
* Allow for train-of-thought note-taking, while keeping track of the whole

## Solution

Create a _mind map_ that structure the core ideas of a certain domain or piece of work.
As a spiders web, the mind map starts by putting a central concept or question at the centre of the page.
You then attach words to this central theme, as they appear in your head.

Make sure not to put too much effort into your mind map, the act of mapping is where the value lies.
You will soon realize that as your understanding grows, your map will no longer be accurate.
At this point, just create a new one. If you want to solidify your newfound knowledge, repeat this process until you are satisfied.

If you work digitally, you can keep your mind maps up to date a bit more easily as you will not run into spacing issues as fast.
Though, if your sketch is not updated for a long time, consider ditching or revisiting it, as it likely lost most of its value.

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

## Rationale

* Visualizations are a tremendous helps in remembering facts. Popular culture is filled with the idea of "mind palaces", which is a technique used
  by people who display extraordinary capabilities or short-term memory storage.
* We are good at thinking creatively, but our recollection is often times flawed. This leads us to forget about certain aspects
* Not knowing what something relates to makes it harder to remember facts.
* Humans prefer to think in structures, it has been shown that structuring a text or idea helps you refine the knowledge.

## Application

{{<tip text=`Do not focus on the result too much. The drawing you end up with is secondary to the process of creating it.
Most mind maps are used as a temporary tool to organize your thoughts, or help you understand a concept in a broader way.
The drawing is less important than the clarity of mind you gain by creating it.
` >}}

### Considerations

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
  src="/images/practices/knowledge_map"  
  alt="A mind map of topics in this work"
  caption="A mind map of topics in this work" 
  size="40%" >}}

This map was made digitally by using [PlantUml](https://plantuml.com/mindmap-diagram). This is a text-based graphing language, that you can play
with on their online editor.
The main advantage here is that you can move quickly (provided your typing speed is up to par). As the syntax is very simple, the brain-to-screen
barrier is quite low. Having a digital copy of your mind map around can come in handy if you want to update it later on.

````plantuml
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
