+++
title = "Organize your workflow"
author = "Stijn Dejongh"
problem = "You find it difficult to remember what you want to achieve, and are distraught by the amount of tasks you have yet to finish."
description = "Apply a personalized approach to productivity, helping you offload and organize tasks and ideas using a trusted system, ultimately reducing mental stress and enhancing focus."
summary = """
Struggling to keep track of your tasks and goals? 

Discover a personalized productivity flow that helps you offload mental clutter, prioritize effectively, and find peace of mind by trusting your external systems. 
Explore different tools and techniques to create a workflow that fits your lifestyle and keeps you on top of your game.
"""
categories = [
    "productivity",
]
tags = [
    "tasks", "organizing", "personal productivity", "task management", "time management"
]
uuid="ef0c0e1b-f395-4ee0-8360-e419e97f7447"
aliases=["ef0c0e1b-f395-4ee0-8360-e419e97f7447", "gtd"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.5", rationale = "The pattern supports adaptability by encouraging experimentation with different tools and methods, though potential over-reliance on a single system slightly tempers this."},
  {name = "minimal", delta = "-0.15", rationale = "While the pattern offloads mental tasks, the complexity of maintaining multiple tools can counteract the intended simplicity."},
  {name = "maintainable", delta = "0.25", rationale = "The pattern encourages consistent review and organization, leading to a slightly positive impact on maintainability."},
  {name = "environmental", delta = "0", rationale = "The environmental impact is neutral, though reliance on digital tools could have a minor negative effect."},
  {name = "reachable", delta = "0.75", rationale = "The pattern strongly supports setting and achieving realistic goals through structured task management."},
  {name = "solvable", delta = "0.75", rationale = "Organizing thoughts and tasks enhances problem-solving capabilities, leading to a positive impact on solvability."},
  {name = "extensible", delta = "0.5", rationale = "The pattern is adaptable and can be extended to various contexts, making it positive for extensibility."}
]
related_concepts = [
  "b86230c6-49fb-4792-9008-a5241c5cdcb2"
]
related_practices = [
  "47f32286-17b0-471e-90d6-eb0de9f60ac0",
  "d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"
]
further_exploration = [
  { type="biblio", id="a688ad2e-beb4-4b84-ad38-e64f523a33d8"},
  { type="biblio", id="77fd967c-fe5b-4095-a36b-7e6d0ecbb33e"},
  { type="raw", author="Unknown", year="2023", title="What is the Eisenhower Matrix?", site="productplan.com", link="https://www.productplan.com/glossary/eisenhower-matrix/" }
]
pubdate="2023-08-26"
image="practices/organize_workflow_cover"
+++

## Problem Statement

You find it difficult to remember what you want to achieve, and are distraught by the amount of tasks you have yet to finish.

## Intent

* Find peace of mind by offloading your ideas and tasks to an external system.
* Habitually use your tracking system to stay on top of your tasks, and ideas.
* Experiment and find a knowledge/task storage system that fits your lifestyle.

## Solution

Use a personalized productivity flow, using whatever tool (or combination of tools) you feel comfortable with.
Make sure your chosen toolset is readily available, and trustworthy.
For some, this will be a pen-and-paper system. Others prefer to leverage their digital prowess and lifestyle to have
their productivity tool available to them constantly[^1].

Whichever tools you choose, make sure you:

* Have a specific location to dump out your thoughts
* Regularly review your brain dump tool and curate it. Some of your ideas will be crappy. Get rid of them.
* You should **trust** your tools. Peace of mind only happens when you are convinced your ideas and to-dos are stored reliably.
* Categorize and Prioritize your thoughts **after** you have collected them
  * The Eisenhower Matrix is an excellent technique to do this
  * differentiate between "things to remember" and "things that require action"
  * assign "due dates" if able

### Mind like water

One of the most popular personal productivity methods is called the _"Getting things done"_ method.
The core ideas of the GTD approach is to have:

* A place to note down ideas or tasks that pop into your head
* A way to organize these by priority or type of work to do
* A calendar to plan time-allocations in

{{<image
  src="/images/practices/task_flow"
  alt="Mind like water, a productivity flow inspired by the Getting Things Done methodology"
  caption="A high-level productivity flow inspired by the Getting Things Done methodology" >}}

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* You are able to write relatively quickly.
* You are able to think critically of the ideas you have.
* You can plan your time expenditure in advance, and are disciplined enough to stick to it (mostly).
* You have a device that you bring with you to most places, or have a toolset that you can access from anywhere.

### Deterrents
The following factors prevent effective application of the practice:

* You have little control over how you spend your time.
* Even though you plan events, they usually fall through.
* You have a particularly difficult time picking up new habits.
* You tend to change your system too often, not allowing yourself to get used to it.
* You are not able to note down your thoughts quickly (slow writing speed, analysis-paralasys).
* You generally spend more time refining your methods, or toolset, rather than focussing on the things you want to do.

## Rationale

* People are often distracted by their own thoughts.
* Having mental "open loops"[^0] is tiring, and stressful.
* It is difficult to keep up the habit of organizing your ideas.
* Most productivity applications and techniques force you into a particular set of tools.

## Application

### Consequences

While the approach of using a personalized productivity flow brings numerous benefits, it also has the potential for several unexpected or unintended outcomes:

* **Overcomplication:** By experimenting with different tools and methods, there is a risk of overcomplicating the system. This could lead to
  increased time spent managing the system rather than actually accomplishing tasks, which would negate the intended benefits of the pattern.
* **Tool Dependency:** Relying heavily on specific tools (especially digital ones) can create dependency, where productivity falters if those
  tools are unavailable due to technical issues or changes in platform support.
* **Difficulty in Habit Formation:** Establishing a new productivity system requires discipline and consistency. If users frequently switch tools
  or methods, it may become challenging to build the habit of regularly updating and reviewing tasks, which could lead to a decline in productivity.
* **Mental Overload:** Although the pattern aims to offload mental tasks to an external system, the effort of constantly curating and updating
  the system might create mental fatigue, especially if the system is not streamlined or becomes overly complex.
* **Lack of Flexibility:** While categorizing and prioritizing tasks is crucial, becoming too rigid in following the system might limit
  flexibility and adaptability, making it difficult to adjust to unexpected changes or new priorities.


### Mitigation strategies

To mitigate the potential negative consequences of using this pattern, consider the following strategies:

* **Simplicity is Key:** Start with a minimal set of tools that cover your essential needs. Gradually build on this foundation only if
  necessary, to avoid overcomplicating your system. Focus on simplicity to ensure that your productivity system remains manageable and effective.
* **Regular Review and Adjustment:** Schedule regular reviews of your productivity system to ensure it continues to meet your needs. This can
  involve streamlining processes, discarding tools that are no longer useful, and updating methods to better align with your current goals and work
  habits.
* **Set Boundaries for Tool Usage:** Be mindful of your reliance on specific tools. Consider having a backup plan (e.g., pen-and-paper methods)
  in case your primary tools become unavailable. This ensures that your productivity doesn't suffer due to technical issues or platform changes.
* **Prioritize Habit Formation:** Focus on building a habit of regularly using your chosen system before adding more complexity. Consistency in
  updating and reviewing your tasks is more important than finding the perfect tool.
* **Flexibility in Application:** While categorization and prioritization are important, allow for flexibility in how you approach tasks. Be
  open to adjusting your system as needed, especially when facing unexpected changes or new priorities.

By following these strategies, you can maximize the benefits of your personalized productivity flow while minimizing potential downsides. This will help you maintain peace of mind and stay on top of your tasks and ideas effectively.

## Examples

### Personal productivity flow using MS online tooling

In recent years, Microsoft has pivoted towards providing office-as-a-service applications.
Most if these can be easily incorporated into your personal workflow. Having everything online makes it easier to be
productive, without losing your mobility.
  
[^0]: An "open loop" is any task, idea, or though that keeps you occupied. You have not yet taken action on it, and as such were not able to come to a satisfying conclusion. In short: thoughts that live in your mind, for which you were not yet able to find closure.
[^1]: Unless of course your computers die and your internet connection goes on hiatus

