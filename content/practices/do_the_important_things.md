+++
title = "Get your priorities straight"
author = "Stijn Dejongh"
problem="You find yourself constantly busy, yet achieving little of value."
description = "Assign a priority category to tasks based on their urgency and importance. Act depending on priority category."
categories = [
    "productivity",
]
tags = [
    "prioritization", "organizing", "decision-making"
]
uuid="d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"
aliases=["d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"]
ammerse = [
  {name = "agile", delta = "-0.5"},
  {name = "minimal", delta = "1"},
  {name = "maintainable", delta = "0"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "1"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "0"},
]
outputs = ['html', 'rss', 'json']
pubdate="2023-11-23"
+++

## Problem Statement

You find yourself constantly busy, yet achieving little of value.

## Intent

* Priorities can change when the facts change.
* You know which tasks you should pick up first.
* You have peace of mind as tasks you need to do are not forgotten.

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

* You can decide and manage your tasks.
* You are aware of your personal goals and ambitions.
* You always have a notebook (digital or analogue) close by.
* You can communicate your intent to people effectively.


### Deterrents

* You do not know what your goals and ambitions are.
* You find it hard to rank tasks according to their importance.
* You are not able to consistently apply a prioritization technique.
* Others tend to decide what actions you should take for you (micromanagement).

## Solution

Ensure your tasks have a clear order by assigning properties to them, allowing you to prioritize effectively. The Eisenhower Priority Matrix, a well-known technique, can be a great starting point. This allows you to work down your list starting with the task with the highest priority and working your way down.
Working in this way ensures that your most important tasks get done first. Anything left behind (due to a lack of time) is, by definition, less important than the items you have already worked on. This ensures that you get as much of the __"important stuff"__ done as you can in the time available.

Various prioritization techniques exist, and you are -- of course -- free to use whichever one you like. To get you started, however, I included a well-known technique below. This technique is known as the "Eisenhower Priority Matrix" and is very simple to use.

### Eisenhower priority Matrix

Organize your action items according to:

* their **importance**: actions can be either `important` or `unimportant`
* their **urgency**: these are either `urgent` or `not urgent`

This leaves you with a nice 2-by-2 grid in which to place your actionable items[^3].

{{<image
  src="/images/practices/eis_matrix.png"
  alt="A 2-by-2 priority matrix, commonly known as the Eisenhouwer matrix."
>}}

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


## Rationale

* Having too many things on our mind stresses us out.
* Our memories are lossy; We tend to forget about things all the time.
* Standard to-do lists have no readily available means of prioritizing items.
* Multitasking is hard. Our brains work better if we can compartmentalize between different modes of thinking (planning and executing).

## References

* {{<reference author="Allen, D."
  year="2015"
  title="Getting Things Done: The Art of Stress-Free Productivity"
  isbn="0143126563"
  publisher="Penguin Books"
  link="https://www.goodreads.com/book/show/22573850-getting-things-done" >}}
* {{<reference author="Covey, S. R.; Collins, J."
  year="2004"
  title="The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change"
  isbn="0743269519"
  publisher="Free Press"
  link="https://www.goodreads.com/book/show/36072.The_7_Habits_of_Highly_Effective_People" >}}
* {{<reference author="Unknown"
  year="2023"
  title="What is the Eisenhower Matrix?"
  site="productplan.com"
  link="https://www.productplan.com/glossary/eisenhower-matrix/" >}}
