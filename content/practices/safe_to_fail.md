+++
title = "Safe to fail experiments"
author = "Stijn Dejongh"
problem = "You have troubles learning new skills or techniques, as you are afraid it will be more trouble than it's worth."
description = "Lower the stakes by reframing your goals, creating an experimental mindset, and sharing your findings."
categories = [
    "learning",
]
tags = [
    "experimentation", "goals", "accountability", "research"
]
uuid = "09986d9e-cd80-4016-8000-c62ed5064914"
aliases = ["uuid"]
ammerse = [
    { name = "agile", delta = "1" },
    { name = "minimal", delta = "1" },
    { name = "maintainable", delta = "-1" },
    { name = "environmental", delta = "0.5" },
    { name = "reachable", delta = "1" },
    { name = "solvable", delta = "0" },
    { name = "extensible", delta = "0" },
]
image="practices/safe_to_fail_cover.webp"
pubdate="2024-01-28"
+++

{{<quote text=`
I have not failed. I've just found 10,000 ways that won't work.
` author="Thomas A. Edison" >}}

## Problem Statement

* When learning new skills, a significant part of the process may not yield immediate or desired results.
* We are hardwired to avoid failure, which, while crucial for survival, hinders trying new things.

## Intent

Create an environment where experimenting with new ideas or practising skills becomes less intimidating. This fosters faster and less stressful
learning, potentially adding an element of enjoyment.

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

* Your learning goals are clear and motivating.
* Your environment values gaining and sharing knowledge.
* You are in a safe environment where failure is not punished.
* You can apply results from learning experiments to your work.
* You can break down learning goals into small, achievable steps.

### Deterrents

* Lack of interest in learning new things.
* Environment devalues learning or is unwilling to invest in it.
* Presence of an expert in the subject you're trying to learn.[^1]
* Environment prioritizes optics over results, punishing failure.

## Solution

* Reframe your goal to focus on gathering knowledge rather than "making something work."
    - Form hypotheses and try to prove theories.
    - Have multiple approaches to a problem to embrace the experimentation mindset.
    - Inform stakeholders about your intent to experiment.
* Set up small-scale experiments to test ideas.
* Hold yourself accountable by investing effort based on learning goals.
* Isolate experimentation from regular work to lower the stakes of your learning efforts.
* **Pass on what you have learned:** Share your findings, even if the experiment doesn't meet expectations, to facilitate learning and prevent
  others from making the same mistakes.[^2]

## Examples

### Trying a Novel Framework

**Situation:** You have learned of a novel framework or technology that you would like to try out.
You are not sure if it will be useful for your current project, but you are interested in learning more about it.

* You set up a small project, and try to implement a small -- non-critical -- feature using the new technology.
* You document your findings (both advantages and disadvantages), and share them with your team.
* You park your small feature, discuss your recommendations with your team, and move on with your work.

**Possible outcome:** You decide to not use the new technology for your current project, but you (and your colleagues) have learned something new.

## References

* {{<reference author="Hunt, A."
  year="2008"
  isbn="9781934356050"
  title="Pragmatic Thinking and Learning: Refactor Your wetware"
  publisher="The Pragmatic Bookshelf"
  link="https://pragprog.com/titles/ahptl/pragmatic-thinking-and-learning/" >}}
* {{<reference author="Hoover, D.; Oshineye, A."
  year="2009"
  isbn="9780596518387"
  title="Apprenticeship Patterns"
  publisher="O'Reilly Media, Inc."
  link="https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842" >}}
* {{<reference author="Holiday, R."
  year="2016"
  title="Ego Is the Enemy"
  publisher="Portfolio"
  isbn="9781591847816"
  link="https://www.goodreads.com/book/show/27036528-ego-is-the-enemy" >}}
* {{<reference author="Pink, D. H."
  year="2009"
  title="Drive: The Surprising Truth About What Motivates Us"
  publisher="Riverhead Books"
  isbn="9781594488849"
  link="https://www.goodreads.com/book/show/6452796-drive" >}}
* {{<reference author="Mario 'Moonprayer' Trappein"
  year="2016"
  title="Ladder anxiety, and how to overcome the fear of ranked play"
  site="TempoStorm.com"
  link="https://tempostorm.com/articles/ladder-anxiety-and-how-to-overcome-the-fear-of-ranked-play" >}}

---

[^1]: This is somewhat counter-intuitive, but it is a real thing. If you are trying to learn something, and there is an expert present, you (or your
organization) will be tempted to ask them to pick up the work. Reliance on skilled individuals can be detrimental to your growth, as it results in
learning how to ask the expert for help, rather than refining your own skills. This is not a bad thing, but it is not what you set out to do.

[^2]: From a business perspective, illustrating and capturing the results of your experimentation is what differentiates "experimentation" from "just messing around".