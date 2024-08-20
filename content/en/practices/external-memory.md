+++
title = "Use an External Memory"
author = "Stijn Dejongh"
problem = "You want to reduce the impact of being pulled out of your flow."
description = "Free your mind by delegating the remembering of things to an external system."
categories = [
    "productivity",
]
tags = [
    "tasks", "remembering", "tracking", "organizing"
]
uuid="18091885-3e43-43f5-a0f7-bcb6c625612b"
aliases=["18091885-3e43-43f5-a0f7-bcb6c625612b"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "0.5"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "1"},
]
pubdate="2023-08-23"
image="practices/external_memory_cover.webp"
related_concepts = [
    
]
related_practices = [
    "642d0d66-7b5d-4900-8f68-66adf41466d2",
    "e6cdeaa2-cc30-4928-95fd-f28ea7cb489d",
    "ef0c0e1b-f395-4ee0-8360-e419e97f7447",
    "94a558cd-4e86-4814-a5e9-d6ecafcb0d6b"
]
further_exploration = [
    {type="biblio", id="77fd967c-fe5b-4095-a36b-7e6d0ecbb33e"},
    {type="biblio", id="d33fc09e-39c6-411e-a70e-2ca98375abd6"},
    {type="raw", author="Pham, T.", year="2011", title="A Simple Personal Wiki with VoodooPad", site="asianefficiency.com", link="https://www.asianefficiency.com/organization/a-simple-personal-wiki-with-voodoopad" },
    {type="raw", author="Notion Labs Inc", year="2023", title="Notion: Online notes", site="notion.so", link="https://www.notion.so" },
    {type="raw", author="Saigal, R.", year="2019", title="How to Create a Personal Wiki Using Microsoft OneNote", site="makeuseof.com", link="https://www.makeuseof.com/tag/create-wiki-onenote" },
    {type="raw", author="Trapani, G.", year="2006", title="todo.txt open format", site="todotxt.org", link="http://todotxt.org" }
]
+++

## Problem statement

You want to reduce the impact of _"forgetfulness"_ and being _"pulled out of your flow"_.

## Intent

Delegate the remembering of things to an external system, in order to free up your headspace for more important tasks.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* **Trust**: You trust your external brain to remember things for you, and you trust yourself to remember to check it.
* **Routine**: You can schedule time consistently, to revisit your notes and take action if needed.
* **Optimize for looking up**: You have a system in place that allows you to quickly find what you need.
* **Availability**: Your external brain is easily accessible, and does not require a lot of effort to use.

### Deterrents
The following factors prevent effective application of the practice:

* **Inconsistency**: You do not trust your external brain to remember things for you, or you do not trust yourself to remember to check it.
* **Overwhelm**: You have too many notes, or your notes are distributed amongst a multitude of systems, making it hard to find what you need.
* **Inconvenience**: Your external brain is not easily accessible, or requires a lot of effort to use.

## Solution

* Use a technological or physical aid to keep track of your ideas and notes
* Make sure you **trust** your external brain, in order to free head-space
* Revisit your notes regularly
* favour text-based formats, as they are easier to version, maintain and port
* Whatever system you use, make sure it is easily accessible, and non-disruptive to your primary focus

## Rationale

Human memory is [extremely lossy](https://www.nationalgeographic.com/science/article/human-memory). We are better equipped for creative,
constructive thinking than for storing factual information. Focus is [easily disrupted](https://blog.rescuetime.com/context-switching/).
It makes practical and economic sense to try and find a way to free up your headspace and thinking power for the endeavours that actually matter.

* Context switches hurt your productivity
* Modern systems and activity are too large to fit in your brain completely
* The more you have to keep in memory, the more likely you will forget something
* Having a mental task list becomes exhausting after a while
* We wish to be able to easily report progress when queried
* Hand-overs take a lot of time and effort
* Computers are great at remembering stuff

{{< image
    src="/images/practices/free-mind.gif"
    alt="Free your mind, neo!"
    caption="Neo, stopping bullets after freeing his mind. from: 'The Matrix Reloaded'" >}}

## Application

### Consequences

* **Perfectionism**: Using an external memory can cause certain people to become perfectionists in their tooling choices, resulting in them
  spending more time on configuring their tools than actually using them. A secondary effect of this is that they might become less productive,
  hyper-focusing on the tooling or formatting of their notes, rather than the content.
* **Over-reliance**: There is a risk of over-reliance on the external memory, which can lead to a lack of critical thinking and problem-solving
  skills. If you always rely on your notes to solve problems, you might not develop the ability to think on your feet.
* **Anxiety**: If you lose access to your external memory, you might feel anxious or lost. This can be mitigated by having a backup system in place,
  or by using a system that is easily accessible and reliable (such as a simple physical notepad).

### Mitigation strategies

## Examples

There are many online (free and paid) systems that offer you a way to store your thoughts.
Some of them are listed below in the _references_ section.

You can use a simple text-based system to keep track of your thoughts, or To-Do items.
I personally prefer using these text-based systems as they allow for easier cross-platform portability, and avoid being locked in to a
single vendor solution. This entire knowledge base can be seen as one big "external brain".

### Stijn's developer logs

Working on enterprise projects tends to be a continuous struggle against interruptions, pivots, and moving targets.
In order to stay on track, it helps to keep track of your actions and thoughts.
The best way I have found so far is to keep track of my actions on different projects by including short developer logs inside the code
repositories.
This allows me to come back to a project that has been on ice for a while with relatively low friction.
In addition to this, I try and keep a day-to-day running count of what happened during any given day. This is done in a separate log, which I try to
write at the end of the day.

{{<tip text=`
One of my favourite ways of note-taking while working on a software project is to add a dev_notes directory to my codebase.
For short-lived projects or changes, I tend to add this file to the .gitignore configuration of my repository as to not muck up the
workspace of my colleagues. For more long-term or collaborative projects, consider creating a dedicated repository to host all of your
developer notes. You can get creative with symbolic links to make these folders show up in your codebase regardless of their physical location.
` >}}