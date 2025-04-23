+++
title = "Wipe the board"
author = "Stijn Dejongh"
problem = "You are accumulating invisible baggage: paused tasks, lingering ideas, and false progress signals."
description = "Reset of your work-in-progress every day. Recommit only to what truly matters, and shelve the rest without feeling guilty."
summary = """
Knowledge work often accumulates invisible baggage: paused tasks, lingering ideas, and false progress signals. This practice encourages individuals and teams to clear their active task list daily, and recommit only to what deserves their attention today. Reduce mental clutter, expose blockers, and restore focus — one reset at a time.
"""
categories = [
    "productivity"
]
tags = [
    "focus", "work in progress", "lean thinking", "progress", "cognitive load"
]
uuid="e4564f9d-d0af-4644-a4c0-48824db0b2e2"
aliases=["e4564f9d-d0af-4644-a4c0-48824db0b2e2"]
outputs = ['html', 'json']
ammerse = [
   {name = "agile", delta = "1", rationale = "Strong support for agility through daily re-evaluation, prioritisation, and flow orientation."},
   {name = "minimal", delta = "0.75", rationale = "Promotes lean boards, stripped-down task lists, and avoidance of ambiguous states."},
   {name = "maintainable", delta = "0", rationale = "Despite theoretical cleanliness, the daily upkeep burden limits long-term sustainability."},
   {name = "environmental", delta = "0.125", rationale = "Encourages mental clarity and healthier habits, but limited broader ethical/systemic reach."},
   {name = "reachable", delta = "0", rationale = "Increases task realism but does not improve actual achievement or unblock goals."},
   {name = "solvable", delta = "0.5", rationale = "Surfaces blocked work and decision friction, but does not provide means to resolve them."},
   {name = "extensible", delta = "0", rationale = "The technique is self-contained and has no inherent affordance for scale or layering."}
]
related_concepts = [
   "c57288e3-b102-4212-adb7-a4339a3a9e87"
]
related_practices = [
   "cfd81655-1c47-4ee9-9f73-ea959bba3af4",
   "47f32286-17b0-471e-90d6-eb0de9f60ac0",
   "d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"
]
further_exploration = [
   {type="raw", author="Kaizen Insitute", year="2024", title="Understanding Lean Manufacturing", site="kaizen.com", link="https://kaizen.com/insights/understanding-lean-manufacturing-guide/" },
   {type="raw", author="Various Authors", title="Theory of Constraints", year="2024",  site="Wikipedia", link= "https://en.wikipedia.org/wiki/Theory_of_constraints"},
   {type="biblio", id="77fd967c-fe5b-4095-a36b-7e6d0ecbb33e"}
]
image="practices/wipe_the_board"
pubdate="2024-04-20"
+++

## Problem statement


Most knowledge workers accumulate a growing pile of __'work in progress'__: unfinished tasks, paused drafts, and half-considered decisions. These items remain marked as active not because they are still relevant, but simply because they were once started.

This creates a misleading picture of progress, adds cognitive load, and fosters guilt or pressure. Over time, this leads to bloated boards, mental clutter, and a distorted sense of productivity.

{{<image src="/images/presentations/wip_wipe/board_overload.png" alt="Board overload. Does this look familiar?" caption="Board overload! Does this look familiar?" size="30%" >}}

## Intent

To promote clarity, focus, and honest prioritization by treating work-in-progress as renewable rather than permanent. By resetting WIP daily, individuals and teams can reduce inventory waste, align with current priorities, and reclaim attention from stale momentum.

## Solution

The core of the “Wipe the Board” practice is simple:  
**At the start of each day, clear your active WIP list and consciously choose what’s worth picking back up.**

This reframes WIP as a present-moment decision rather than a lingering obligation. It also reveals which items deserve continued energy — and which no longer do.

### Steps to Apply

1. **Wipe the board**: physically or digitally remove all items from your “in progress” column or mental task list.
2. **Re-evaluate** each task:
   * Ask yourself:
      * Is it truly active?
      * Is it still relevant?
      * Does it deserve today’s attention?
   * **Be strict!**: avoid “maybe” stages like "waiting" or "paused" in your tracker. **If it’s not active, move it out!** 
3. **Move unfinished items back** to the backlog, TODO, or a cold shelf, and optionally add a percentage or status marker (e.g. 30% done). Alternatively, slice off completed subtasks, mark those as done, and reframe the remainder as new to-dos. 
4. **Re-commit consciously** to only a handful of tasks that align with your current focus. 
5. **Leave the rest behind**: not abandoned, but parked until they truly deserve attention again.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* Agile teams already hold daily rituals where WIP state is discussed.
* The cost of switching between too many tasks is well understood.
* Teams that work in short cycles (e.g. sprints or daily reviews) are primed for daily WIP reassessment.
* Use of flexible tooling enables quick WIP adjustments without process friction.
* Clear personal or team-level goals make it easier to judge what deserves current focus.

### Deterrents

The following factors prevent effective application of the practice:

- Teams that use rigid tools or workflows may resist removing WIP manually.
- Individuals may feel guilt or insecurity when uncommitting from tasks.
- Organizational cultures may reward “busy boards” over completed outcomes.
- Leaders may expect visibility into partial progress, reinforcing inflated WIP.

## Rationale

This practice is inspired by principles from [Lean Manufacturing](https://kaizen.com/insights/understanding-lean-manufacturing-guide/) and the [Theory of Constraints](https://en.wikipedia.org/wiki/Theory_of_constraints) (ToC), where work-in-progress (WIP) is seen not as a sign of progress, but as a form of inventory — and often, as waste.

In manufacturing:

* Excess inventory slows down throughput and adds storage, transport, and switching costs. 
* Inventory is treated as a liability — a cost that delays feedback and masks flow issues. 
* False metrics (e.g. full warehouses) can obscure bottlenecks and inflate a sense of productivity. 
* Flow is prioritized over volume, with systems like Kanban limiting WIP to optimize outcomes.

In knowledge work, the same principles apply:
* Knowledge work is largely cognitive: invisible work benefits from intentional visibility.
* WIP is mental inventory, and most of it can’t be worked on in parallel.
* Most people can only do one meaningful task at a time.
* Keeping too much in play leads to cognitive overload, task-switching costs, and stalled progress. 
* The most limited resource is usually your attention --- and that’s your bottleneck.
* Tracking progress, deliverables, and outcomes is more important than tracking tasks.

__“Wipe the Board”__ applies these ideas at the personal and team level. By resetting WIP and re-choosing only what’s worth moving forward, you improve flow, clarify priorities, and reduce emotional debt. The goal is to maximize flow, not to maximize the number of tasks in progress. It also creates a valuable moment of truth: if you keep shelving the same item, ask yourself: __"why?"__

## Application

This is a high-clarity, high-discipline practice that strongly supports agility and minimalism, with slight benefits for solvability and emotional sustainability. But it’s not inherently reachable, maintainable, or extensible without further practices layered on top.

### Consequences
While the approach brings numerous benefits, it can also lead to several unexpected or undesired outcomes:

* The practice may frustrate stakeholders who are used to tracking progress linearly, or expect visible partial progress.
  - Individuals may feel anxious about losing visibility into paused tasks.
  - Status boards may appear “empty” or stagnant to outside observers.
* It places a high cognitive and behavioural demand on teams to build a habit --- its biggest vulnerability is drop-off due to lack of reinforcement.
* Over time, its failure modes include passive abandonment, tool misuse (e.g. hoarding “paused” columns), or the ritual becoming mechanical.
    

### Mitigation strategies
To mitigate the potential negative consequences of the approach:

* Offer visibility through curated summaries, rather than cluttered boards.
* Maintain a cold shelf or secondary list for paused items that aren’t lost — just shelved.
* Use percentage annotations or brief comments (e.g. “~40% complete”) when moving tasks out of WIP.
* Pair with lightweight visualisation (e.g. cold shelf or shelved item stats) to maintain external visibility of effort.
* Use facilitation (stand-ups, retros) to build the ritual until it becomes habit.
  * Use repetition of deferral as a signal — if you move the same task out every day, explore the real reason for not being able to move it to "Done!".
  * Set team-wide expectations around what “in progress” means.
  * Reinforce the value of flow and intentionality in retrospectives and 1:1s.
* Consider integrating this with task slicing or short-cycle planning to make goals more reachable and practice more maintainable.

## Examples

### Scenarios

- A product team resets their kanban every morning, asking: “If we weren’t already working on this, would we start it today?” Items that don’t pass are shelved.
- A freelance writer begins each day by closing all open drafts. Only the article she chooses to finish today gets reloaded — everything else returns to her parking list.
- A developer slices off completed subtasks from a large epic and moves the rest back to “TODO,” rather than keeping the whole feature stuck in limbo.

### A personal checklist

Here is a checklist to help you apply the 'Wipe the Board' practice in your daily routine. It includes the steps and considerations mentioned above, as well as some additional tips/actions to help you get started and stay on track. 

Use this checklist at the start of your workday to reset your WIP, focus your energy, and recommit with clarity. Print this checklist, add it to your daily journal, or turn it into a recurring reminder in your task manager!

#### Checklist for Wipe the Board

{{<image src="/images/practices/wipe_the_board-checklist" alt="Checklist for Wipe the Board" caption="Checklist for Wipe the Board" size="40%" float="right" >}}


##### 1. Clear the Board
- [ ] Remove all items from the “In Progress” column or task list
- [ ] Close any leftover tabs, drafts, or windows from yesterday

##### 2. Re-Evaluate Each Task

For each task from the previous day:
- [ ] Is it still relevant?
- [ ] Do I have the time, focus, or energy for it today?
- [ ] Is this the **most important** thing I could be doing right now?

##### 3. Re-Commit with Intention

- [ ] Select 1–3 meaningful tasks to re-commit to today
- [ ] Confirm these tasks align with current goals or priorities

##### 4. Shelve the Rest Thoughtfully

- [ ] Move paused or inactive items back to the backlog, cold shelf, or TODO list
- [ ] Optionally note completion % (e.g., “~40% done”) or add a reason for shelving
- [ ] If I keep bouncing a task — have I stopped to ask *why*?

##### 5. Protect Flow
- [ ] Avoid ambiguous “maybe”/“waiting” stages — keep your board clean and honest
- [ ] Confirm that your board reflects only *active*, *intentional* WIP
- [ ] Feel clear and ready to focus on what truly matters today

#### Markdown Template

```markdown
##### 1. Clear the Board
- [ ] Remove all items from the “In Progress” column or task list
- [ ] Close any leftover tabs, drafts, or windows from yesterday

##### 2. Re-Evaluate Each Task

For each task from the previous day:
- [ ] Is it still relevant?
- [ ] Do I have the time, focus, or energy for it today?
- [ ] Is this the **most important** thing I could be doing right now?

##### 3. Re-Commit with Intention

- [ ] Select 1–3 meaningful tasks to re-commit to today
- [ ] Confirm these tasks align with current goals or priorities

##### 4. Shelve the Rest Thoughtfully

- [ ] Move paused or inactive items back to the backlog, cold shelf, or TODO list
- [ ] Optionally note completion % (e.g., “~40% done”) or add a reason for shelving
- [ ] If I keep bouncing a task — have I stopped to ask *why*?

##### 5. Protect Flow
- [ ] Avoid ambiguous “maybe”/“waiting” stages — keep your board clean and honest
- [ ] Confirm that your board reflects only *active*, *intentional* WIP
- [ ] Feel clear and ready to focus on what truly matters today

```


