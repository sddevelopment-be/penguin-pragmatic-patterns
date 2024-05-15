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
+++

![./free-mind.gif >](/images/practices/free-mind.gif)

## Problem statement

You want to reduce the impact of _"forgetfulness"_ and being _"pulled out of your flow"_.

## Intent

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

* Context switches hurt your productivity
* Modern systems and activity are too large to pit in your brain completely
* The more you have to keep in memory, the more likely you will forget something
* Having a mental task list becomes exhausting after a while
* We wish to be able to easily report progress when queried
* Hand-overs take a lot of time and effort
* Computers are great at remembering stuff

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

## Examples

There are many online (free and paid) systems that offer you a way to store your thoughts.
Some of them are listed below in the _references_ section.

You can use a simple text-based system to keep track of your thoughts, or To-Do items.
I personally prefer using these text-based systems as they allow for easier cross-platform portability, and avoid being locked in to a
single vendor solution. This entire knowledge base can be seen as one big "external brain".

## Personal testimonials / opinions

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

## References

* {{<reference author="Pham, T."
  year="2011"
  title="A Simple Personal Wiki with VoodooPad"
  site="asianefficiency.com"
  link="https://www.asianefficiency.com/organization/a-simple-personal-wiki-with-voodoopad" >}}
* {{<reference author="Notion Labs Inc"
  year="2023"
  title="Notion: Online notes"
  site="notion.so"
  link="https://www.notion.so" >}}
* {{<reference author="Saigal, R."
  year="2019"
  title="How to Create a Personal Wiki Using Microsoft OneNote"
  site="makeuseof.com"
  link="https://www.makeuseof.com/tag/create-wiki-onenote" >}}
* {{<reference author="Trapani, G."
  year="2006"
  title="todo.txt open format"
  site="todotxt.org"
  link="http://todotxt.org" >}}
* {{<reference author="Allen, D."
  year="2015"
  title="Getting Things Done: The Art of Stress-Free Productivity"
  isbn="0143126563"
  publisher="Penguin Books"
  link="https://www.goodreads.com/book/show/22573850-getting-things-done" >}}

---
