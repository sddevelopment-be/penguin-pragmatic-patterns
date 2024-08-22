+++
title = "Get your priorities straight"
author = "Stijn Dejongh"
problem="You find yourself constantly busy, yet achieving little of value."
description = "Assign a priority category to tasks based on their urgency and importance. Act depending on priority category."
summary="""
Struggling with a never-ending to-do list? This prioritization technique helps you focus on what truly matters, 
ensuring you tackle the most important tasks first and achieve your goals with clarity and purpose.
"""
categories = [
    "productivity",
]
tags = [
    "prioritization", "organizing", "decision-making", "task management", "goals", "time management", "workflow"
]
uuid="d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"
aliases=["d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"]
outputs = ['html', 'json']
pubdate="2023-11-23"
image = "practices/priorities_cover.webp"
ammerse = [
  {name = "agile", delta = "0.4", rationale = "The positive impact on agility comes from the structured approach that allows for clearer prioritization and quicker adjustments when priorities change. However, the technique's structured nature might slightly limit flexibility, leading to a moderate overall positive impact."},
  {name = "minimal", delta = "-0.05", rationale = "While the technique adds structure to task management, it also introduces a layer of complexity that detracts from minimalism. This results in a slightly negative impact on the minimal value."},
  {name = "maintainable", delta = "0.75", rationale = "The emphasis on regular reviews and prioritization strongly supports maintainability. The technique's ability to sustain effective task management over time leads to a significant positive impact on maintainability."},
  {name = "environmental", delta = "0.25", rationale = "The technique's alignment with professional practices and its potential for reducing stress contribute to a moderate positive impact on the environmental value."},
  {name = "reachable", delta = "1", rationale = "The technique directly supports the achievement of goals by prioritizing tasks that align with personal objectives, leading to a very strong positive impact on reachability."},
  {name = "solvable", delta = "0.65", rationale = "The clear focus on critical tasks enhances problem-solving capabilities, contributing to a positive impact on the solvable value."},
  {name = "extensible", delta = "0.35", rationale = "The technique's adaptability and scalability across different contexts contribute to a moderate positive impact on extensibility."},
]
related_concepts = [
  "b86230c6-49fb-4792-9008-a5241c5cdcb2",
  "97067bdd-7268-4098-ae66-7d4c3ea19fb2",
  "ec95a389-25c7-4919-8246-dc6e7c725b5c",
  "1af423be-8164-4974-bf5c-e2bd38f4b160"
]
related_practices = [
  "2cd8e850-9934-40f1-8d1a-d419ef96c33f",
  "ef0c0e1b-f395-4ee0-8360-e419e97f7447",
  "cfd81655-1c47-4ee9-9f73-ea959bba3af4"
]
further_exploration = [
  {type="biblio", id="77fd967c-fe5b-4095-a36b-7e6d0ecbb33e"},
  {type="biblio", id="a688ad2e-beb4-4b84-ad38-e64f523a33d8"},
  {type="biblio", id="ee406fae-4177-4abc-8d70-23175009bc58"},
  {type="biblio", id="faf35830-29af-4957-8ad1-0d37d6bd60db"},
  {type="tool", id="fa17a430-1b3c-487b-82a6-d1b6d5e35d48"},
  {type="raw", author="Unknown", year="2023", title="What is the Eisenhower Matrix?", site="productplan.com", link="https://www.productplan.com/glossary/eisenhower-matrix/"}
]
+++

## Problem Statement

You find yourself constantly busy, yet achieving little of value.

## Intent

* Priorities can change when the facts change.
* You know which tasks you should pick up first.
* You have peace of mind as tasks you need to do are not forgotten.

## Solution

Ensure your tasks have a clear order by assigning properties to them, allowing you to prioritize effectively. The Eisenhower Priority Matrix, a well-known technique, can be a great starting point. This allows you to work down your list starting with the task with the highest priority and working your way down.
Working in this way ensures that your most important tasks get done first. Anything left behind (due to a lack of time) is, by definition, less important than the items you have already worked on. This ensures that you get as much of the __"important stuff"__ done as you can in the time available.

Various prioritization techniques exist, and you are -- of course -- free to use whichever one you like. To get you started, however, I included a well-known technique below. This technique is known as the "Eisenhower Priority Matrix" and is very simple to use.

### Eisenhower priority Matrix

Organize your action items according to:

* their **importance**: actions can be either `important` or `unimportant`
* their **urgency**: these are either `urgent` or `not urgent`

This leaves you with a nice 2-by-2 grid in which to place your actionable items[^3].

{{< image
src="/images/practices/eis_matrix.png"
alt="A 2-by-2 priority matrix, commonly known as the Eisenhouwer matrix." >}}

Each grid section corresponds to a specific way to handle the action items contained within:

- **eliminate or ignore** the things that are `unimportant` and `not urgent`. Because _Who cares abut these anyway?_ The
  items in this quadrant are known as "distractions" or "busy work".
- **delegate** the `unimportant` and `urgent`stuff. Something should be done about them fast, but you probably don't
  need to be the person working on them.
- **plan / schedule** the `important` and `not urgent` items. These are the things that you would really like
  to do, but never seem to get around to doing. Setting a specific date on which you will act upon these items will help you get them
  done eventually. Just make sure to stick to your schedule.
- **Do these NOW!**: `important` and `urgent`... what are you waiting for? Start working on these immediately. Just make
  sure these are important to YOU and you are not being swayed by someone else's urgency.

### Using the matrix

When adding tasks to your matrix, remember **not to adopt someone else's urgency as your own**. Not every task is yours to resolve; use your judgment to prioritize based on your goals and commitments. While certain requests might be important and urgent to someone else, they might not be to you. As an example: consider an acquaintance that calls you on a Friday evening, trying to convince you to fix their computer.
Is this urgent? To them, probably. To you? Probably not. If you did not make any other plans, you can consider helping them. If you have other things to do, this would be categorized as "urgent, not-important."

## Contextual forces
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be aware of.

### Enablers
The following factors support effective application of the practice:

* You can decide and manage your tasks.
* You are aware of your personal goals and ambitions.
* You always have a notebook (digital or analogue) close by.
* You can communicate your intent to people effectively.

### Deterrents
The following factors prevent effective application of the practice:

* You do not know what your goals and ambitions are.
* You find it hard to rank tasks according to their importance.
* You are unable to consistently apply a prioritization technique.
* Others frequently dictate the individual's tasks and priorities (micromanagement).

## Rationale

* Having too many things on our mind stresses us out.
* Our memories are lossy; We tend to forget about things all the time.
* Standard to-do lists have no readily available means of prioritizing items.
* Multitasking is hard. Our brains work better if we can compartmentalize between different modes of thinking (planning and executing).

## Application

### Consequences

* **Over-emphasis on Structure:** The structured approach may lead to rigidity and reduced flexibility in task management. It introduces the 
  risk of overlooking emergent tasks or opportunities.
* **Rigidity:** Applying a strict prioritization technique may limit adaptability and creativity in task management. It introduces the danger of 
  seeing the categorization as a fixed property of the task, rather than as a temporary assessment. 
* **Focus on Urgency and Importance:** The technique may lead to neglecting tasks that are not urgent but are important in the long term.
* **Subjectivity in Prioritization:** The importance and urgency of tasks can be subjective, leading to potential biases in prioritization. The
  technique may lead to neglecting tasks that do not fit neatly into the matrix categories, potentially limiting creativity and
  adaptability in task management.
* **Dependence on Personal Goals:** The effectiveness of the technique depends heavily on having clear personal goals and ambitions.

### Mitigation Strategies

* **Scheduled Reviews:** Set regular intervals for reviewing and updating the priority matrix to keep it relevant and manageable. Ensure you
  re-prioritize tasks based on changing circumstances and goals.
* **Goal Clarification:** Regularly review and clarify personal goals to ensure effective use of the prioritization technique.
* **Avoid Peer Pressure:** Ensure the prioritization is based on personal goals and commitments, rather than external pressures or expectations.
  Clearly communicate your goals and boundaries to others. This will help reduce the influence of external demands on your
  decision-making process.
* **Combine Tools:** Use the matrix alongside other task management tools, such as To-Do list and personal planners, to balance structure
  and flexibility in task prioritization.
* **Use as a Guideline:** Treat the matrix as a guideline rather than a strict rule, allowing for adaptability in task prioritization. Use multiple
  prioritization techniques to balance structure and flexibility in task management.
