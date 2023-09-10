+++
title = "Use an External Memory"
author = "Stijn Dejongh"
problem = "You want to reduce the impact of being pulled out of your flow."
description = "Free your mind by delegating the remembering of things to an external system."
type = "practice"
categories = [
    "productivity",
]
tags = [
    "tasks", "remembering", "tracking", "organizing"
]
+++

![./free-mind.gif >](/images/practices/free-mind.gif)

## Problem statement

You want to reduce the impact of _"forgetfulness"_ and being _"pulled out of your flow"_.

## Intent

## Drivers

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
* Favor text-based formats, as they are easier to version, maintain and port
* Whatever system you use, make sure it is easily accessible, and non-disruptive to your primary focus

## Rationale

Human memory is [extremely lossy](https://www.nationalgeographic.com/science/article/human-memory). We are better equipped for creative,
constructive thinking than for storing factual information. Focus is [easily disrupted](https://blog.rescuetime.com/context-switching/).
It makes practical and economic sense to try and find a way to free up your headspace and thinking power for the endeavors that actually matter.

## Examples

There are many online (free and paid) systems that offer you a way to store your thoughts.
Some of them are listed below in the _references_ section.

You can use a simple text-based system to keep track of your thoughts, or ToDo items.
I personally prefer using these text-based systems as they allow for easier cross-platform portability, akd avoid you being locked in to a
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
One of my favorite ways of note-taking while working on a software project is to add a dev_notes directory to my codebase.
For short-lived projects or changes, I tend to add this file to the .gitignore configuration of my repository as to not muck up the
workspace of my colleagues. For more long-term or collaborative projects, consider creating a dedicated repository to host all of your
developer notes. You can get creative with symbolic links to make these folders show up in your codebase regardless of their physical location.
` >}}

## References

| Item                                                                                                                             | Description                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| [Creating a personal wiki](https://www.asianefficiency.com/organization/a-simple-personal-wiki-with-voodoopad/)                  | Asian efficiency: Creating a personal wiki                                                           |
| [notion.so](https://www.notion.so/)                                                                                              | Online note taking                                                                                   |
| [Create a fersonal wiki using MS OneNote](https://cereal.baldwingroup.com/how-to-create-a-personal-wiki-using-microsoft-onenote) | Article by I. Humphrey n using OneNote as an external brain                                          |
| [NextCloud Personal data server](https://nextcloud.com/)                                                                         | DIY data and notes storing solution                                                                  |
| [TODO.txt format](https://github.com/todotxt/todo.txt)                                                                           | An open, text-based format for your TODO files                                                       |
| [Trambu](https://github.com/stijn-dejongh/TraMBU)                                                                                | My owm todo.txt inspired task-management application                                                 |
| [Emacs org mode](https://orgmode.org/)                                                                                           | A major mode for [GNU Emacs](https://www.gnu.org/software/emacs/), aimed at organizing your thoughts |

---
