+++
title = "Impact-Oriented Communication"
subtitle = "Quantify your story, increase your clarity"
author = "Stijn Dejongh"
problem = "Technical professionals often describe tasks, tools, or deliverables without articulating the outcome."
description = "Avoid invisibility by describing your work in terms of measurable outcomes that align with team and organisational goals."
summary = """
Many technical professionals downplay their contributions or describe them in purely technical terms. This practice strengthens agility, clarity, and problem-solving through repeatable communication habits. It promotes visibility without ego, outcome framing without rigidity, and measurement without dogma. Its strongest contribution lies in making value legible and learning visible, especially when paired with a healthy team culture.
"""
categories = [
    "communication"
]
tags = [
    "Quantification", "Feedback culture", "Conversation", "Evaluation"
]
uuid="81733c4f-a952-47d2-a678-900956ac728d"
aliases=["81733c4f-a952-47d2-a678-900956ac728d"]
outputs = ['html', 'json']
ammerse = [
    {name = "agile", delta = "0.6", rationale = "Supports adaptability by reinforcing visibility, iteration, and feedback-oriented phrasing."},
    {name = "minimal", delta = "0.35", rationale = "Reduces noise and ambiguity by offering a concise communication template."},
    {name = "maintainable", delta = "0.15", rationale = "Promotes sustainable habits, especially when the team buys into the format."},
    {name = "environmental", delta = "0.3", rationale = "Helps bridge cross-functional and interpersonal gaps by making value legible."},
    {name = "reachable", delta = "0", rationale = "Entry is relatively low-friction, though some discomfort remains for newcomers or less measurable work."},
    {name = "solvable", delta = "1", rationale = "Highest scoring dimension. The practice materially improves problem framing, decision clarity, and learning."},
    {name = "extensible", delta = "0", rationale = "Offers modest reuse across contexts, but doesn’t inherently scale without adaptation."}    
]
related_concepts = [
    "b86230c6-49fb-4792-9008-a5241c5cdcb2",
    "c57288e3-b102-4212-adb7-a4339a3a9e87",
    "cffb7fab-580e-4add-b807-d3a76b3209c7",
    "55f51f65-9d4e-4a31-ad8c-242d473a0f77"
]
related_practices = [
    "8ffeb93b-0f8d-4b01-867b-a8b78ebd4644",
    "47f32286-17b0-471e-90d6-eb0de9f60ac0",
    "ad717858-fd38-491e-ba78-41d50314a353"
]
further_exploration = [
    {type="raw", author="Asplund, J.", year="2019", site="animalz.co", link="https://www.animalz.co/blog/bottom-line-up-front/", title="BLUF: The military standard that can make your writing more powerful"},
    {type="raw", author="Sehgal, K.", site="Harvard Business Review", title="How to write Email with military precision", year="2016", link="https://hbr.org/2016/11/how-to-write-email-with-military-precision"},
    {type="raw", author="Indeed Editorial Team", year="2025", site="indeed.com", link="https://www.indeed.com/career-advice/resumes-cover-letters/how-to-quantify-resume", title="How to quantify Resume Accomplishments"},
    {type="raw", author="Khan, T.", year="2025", site="ibm.com", link="https://www.ibm.com/think/topics/okrs", title="What are Objectives and Key Results (OKRs)?"},
    {type="biblio", id="06a5cfd2-0204-4199-966e-8a7a4847742a"},
    {type="biblio", id="f17079c7-1dc6-42de-85c1-f61dbeade355"},
    {type="biblio", id="b6da416a-00a2-46dd-a211-fb4d4f0382e3"},
    {type="biblio", id="93c3d298-690e-48b5-8140-b34ce90c2083"},
]
image="practices/impact_oriented_communication"
pubdate="2025-05-18"
+++

## Problem statement

In many workplaces, communication focuses on *what was done*, not *why it mattered*.

Technical professionals often describe tasks, tools, or deliverables without articulating the outcome. As a result, the real value of their work goes unseen, misunderstood, or underleveraged. This limits alignment, recognition, and learning.

Whether in status updates, documentation, retrospectives, or evaluations, failing to lead with impact creates missed opportunities — for you and for your team.


## Intent

To help individuals clearly communicate the significance of their work by tying it to measurable outcomes and organisational goals --- not just in resumes, but in all forms of professional communication: daily stand-ups, stakeholder updates, quarterly reviews, evaluation meetings, and internal newsletters.

The aim is to build credibility, improve alignment, and create feedback loops that reinforce intentional, outcome-driven problem solving.
## Solution

This practice encourages you to **frame your work in terms of measurable outcomes**, not just tasks or deliverables. By using a simple communication structure, you can articulate the impact of your work in a way that is relevant and meaningful to your audience.

### Core technique

Using a combination of {{< term name="Bottom Line Up Front" title="Bottom Line Up Front (BLUF)" >}} and quantifiable impact statements, outcome-oriented communication helps frame your work in a way that is relevant, credible, and meaningful, to your audience:

* **BLUF:** ensures your main message (the result) is communicated first, not buried in explanation.
* **Quantified impact statements:** ensure that the message is meaningful and measurable.

  Together, they form a communication pattern that works especially well in environments with limited attention spans or high decision pressure: status meetings, stakeholder briefings, evaluation sessions, and reports.

  Use a simple communication structure to frame achievements:

> __"We achieved `X`, which mattered because of `Y`. We did this by `Z`."__

Where:
* `X` is the measurable outcome (e.g. _"We reduced the average response time by 30%"_)
* `Y` is the significance of the outcome (e.g. _"which improved customer satisfaction scores"_)
* `Z` is the method used to achieve the outcome (e.g. _"by implementing a new ticketing system"_)

  {{< image src="/images/practices/impact_oriented_communication-OVERVIEW.svg" alt="A quick reference card visual, containing the core ideas of the Impact-oriented Communication technique." caption="Summary of Impact-oriented communication." size="80%" >}}

### Variations

Not every contribution ends in a clean success. That doesn’t mean it lacks value. This technique also supports reporting failures, obstacles, and partial successes in a way that still communicates clarity, intent, and alignment. With slight adjustments to the formula, you can still frame outcomes meaningfully --- even when things don’t go as planned. We will explore a few common variations in the sections below.

#### Reporting failures

Use the same structure, but **shift the emphasis from success to learning or avoided cost**.

> "We aimed for `X` to achieve `Y`. It didn’t produce the expected outcome, but it revealed `Z`. This helped us eliminate a flawed path and redirect effort towards `Q`.”

Examples:
* "We aimed to reduce the average response time by 30% to improve customer satisfaction scores. It didn’t produce the expected outcome, but it revealed that our ticketing system was not the bottleneck. This helped us eliminate a flawed path and redirect effort towards improving our knowledge base."
* “We tested a new rollout process to reduce downtime, but it introduced deployment lag. That insight helped us revert quickly and identify which constraints to tackle first.”
* “I prototyped a workflow for async design feedback, but engagement dropped. We abandoned it, and now we’re piloting a structured sync model instead.”

#### Describing obstacles

Sometimes the value of your work is in **what you uncovered or unblocked**, not what you completed.

> “While working on `X`, we discovered constraint `Y`. This helped clarify our roadmap and sparked related initiative `Z` to address it.”

Examples:

* "While working on the new ticketing system, we discovered that our knowledge base was outdated. This helped clarify our roadmap and sparked related initiative to improve our documentation."
* “While implementing the cache layer, we realised our current schema wouldn’t support multi-region replication. This surfaced a design flaw early.”
* “We were unable to ship the API in this sprint, but we identified the key points of integration complexity. We agreed on scope for the next milestone, and will work on resolving the first key obstacle by end of next month.”

#### Partial successes

When you make significant progress but haven’t reached the full outcome, you can still frame it clearly, and define what should happen next.

> “Working towards goal`X`, we did `Y`. It didn’t fully land yet, but it moved the needle by `Z`. As a next step, we can `Q`.”

Examples:

* “To address the difficulty in getting new team members up-and-running, we reduced onboarding time from 12 to 7 days --- still short of our 5-day goal, but a meaningful improvement. As a next step, we can automate the setup checklist.”
* “We improved stability of the build pipeline by 60%, but overnight runs still fail intermittently. As a next step, we can isolate the concurrency issue in the test runner.”

## Contextual forces

### Enablers
The following factors support effective application of the practice:


* **Organisational objectives:** You work in an environment where goals, priorities, or {{< term name="Objectives and Key Results" title="OKRs" >}} are defined, making it easier to link your work to measurable outcomes.
* **Cross-functional visibility:** You frequently communicate with people outside your discipline --- such as PMs, leadership, or non-technical stakeholders --- who need to understand the *why*, not just the *how*.
* **Regular communication rituals:** Your team holds check-ins, demos, retrospectives, or planning sessions that offer a natural venue for structured impact communication.
* **Outcome-focused culture:** Your environment values results over activity, and rewards clear demonstrations of business, team, or user impact.
* **Supportive tooling:** You have access to dashboards, analytics, version control history, or other tooling that makes metrics easy to track or approximate.
* **Desire for trust-building:** You want to be perceived as credible, aligned, and dependable across roles — especially in leadership, mentorship, or cross-team initiatives.
* **Coaching and feedback fit:** You mentor or evaluate others and want a consistent way to track, reflect on, or discuss contributions and growth.
* **Problem-solving visibility:** You value understanding not just what was done, but what was learned or resolved — especially when surfacing trade-offs, false starts, or subtle wins.


### Deterrents
The following factors prevent effective application of the practice:


* **Lack of baselines:** You don’t have access to relevant metrics, logging, or pre-change benchmarks, making it difficult to quantify before/after impact with confidence.
* **Cultural disconnect:** Your team or organisation undervalues communication, considers outcome-framing to be showy, or prefers minimal reporting overhead.
* **Low system observability:** The technical environment offers poor traceability between changes and outcomes (e.g. lack of monitoring, long feedback loops).
* **Limited role scope:** You are early in your career or working on small or isolated tasks, making it harder to observe or connect work to broader outcomes.
* **Unclear impact landscape:** You don’t yet understand how your contributions tie into team goals, stakeholder concerns, or organisational strategy.
* **Discomfort with credit:** You find it difficult to describe shared or collaborative work in a way that feels fair — especially if you fear appearing self-promotional.

## Rationale

This mindset supports better engineering discipline, by encouraging you to think about the impact of your work, not just the technical details. It helps you:

* Forces you to define baseline metrics (“what’s broken now?”)
* Encourages before/after measurement
* Creates a feedback loop between action and outcome
* Makes it easier to compare options based on impact, not effort

The more you communicate your work in terms of real-world effects, the more effective, and visible, your contributions become.

## Application

### Consequences

While the approach brings numerous benefits, it can also lead to several unexpected or undesired outcomes:

* **Metric distortion and unintended incentives:** When outcome framing becomes standard practice, teams may begin to optimise for the appearance of success rather than meaningful progress. This is an instance of Goodhart’s Law: when a measure becomes a target, it loses its usefulness. In extreme cases, this leads to Cobra Effect behaviours — where gaming or metric-chasing overshadows real value.

* **Confirmation bias in self-reporting:** When individuals are expected to frame work as impact, they may (consciously or not) select only favourable data, ignore context, or over-attribute success to their actions. Without feedback loops, this turns impact reporting into a reinforcement loop that hides flaws and misses learning opportunities.

* **Perceived competitiveness or self-promotion:** When not paired with humility or transparency, outcome framing may make colleagues feel threatened or overshadowed — especially in highly collaborative environments.

* **Short-termism:** A strong focus on immediately measurable results may lead individuals to favour fast wins over foundational or long-term investments, skewing priorities.

* **Misrepresentation risk:** Metrics can be cherry-picked, decontextualised, or exaggerated — especially if the environment rewards visibility over substance.

* **Visibility over substance risk:** Emphasising measurable outcomes can create pressure to inflate or cherry-pick results, especially in environments that reward appearances more than insight. This may contribute to vanity metrics or short-term optimisations.


### Mitigation strategies

To mitigate the potential negative consequences of the approach:

* **Shared framing over self-promotion:** Use this structure to foster collective understanding of progress, not personal branding. Frame your impact in the context of team or organisational goals.

* **Clear attribution and acknowledgement:** Be transparent about who contributed and how. Use “we” where appropriate, and avoid overstating individual ownership of shared efforts.

* **Balanced storytelling:** Pair quantitative outcomes with qualitative context — explain what changed, for whom, and why it matters, not just how much.

* **Indicator integrity:** Choose metrics that reflect meaningful outcomes, not vanity or convenience. Prioritise indicators tied to customer, user, or team benefit.

* **Support for imperfect outcomes:** Encourage the use of adapted formats for partial wins, failed experiments, or invisible work (see: [Variants](#variations)). Value the learning, not just the outcome.

* **Avoid metric inflation:** Don’t reward noise. Make it culturally acceptable to report neutral or inconclusive results without penalty — especially in complex or exploratory work.

* **Build feedback into reporting:** Encourage short cycles of review and refinement — not just “what was achieved,” but “what did we learn, and what’s next?”

{{<tip text=`The goal isn’t to win points. It’s to illuminate the value of thoughtful, goal-aligned work.` >}}

## Examples

### Communication cheat sheet: Default versus Outcome-oriented

{{< bootstrap-table "bootstrap-table table-striped table-responsive full-width" >}}

| Default phrase                  | Impact-oriented alternative                                                                                                                                                                    |
|:--------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| "I wrote tests."                | We improved code coverage from 60% to 85%, which reduced the number of bugs in production by 30%.                                                                                              |
| "Built a dashboard."            | We enabled data-driven decision making, which mattered to 4 product teams monitoring live KPIs. We did this by building a shared dashboard.                                                    |
| "We finished the migration."    | We achieved 80% fewer deployment failures, which mattered because it stabilised our production releases. We did this by migrating the system.                                                  |
| "I worked on the pipeline."     | We reduced average build time by 61%, which improved developer feedback loops.                                                                                                                 |
| "I fixed a bug."                | We reduced the number of support tickets by 20%, which improved customer satisfaction. We achieved this by fixing a bug in the payment processing system.                                      |
| "I helped improve performance." | Page load time improved by 37%, which boosted checkout completion by 4.6%. We achieved this by minimizing the front-end bundles, and implementing a Redis cache.                               |
| "Cleaned up old scripts."       | We reduced repo size by 15% and improved onboarding clarity. This mattered because new devs onboard faster.                                                                                    |
| "I wrote a blog post."          | We improved team visibility and shared internal knowledge. This mattered because it clarified a common problem. We did this by publishing a blog post that received 200 views and 15 comments. |
{{</ bootstrap-table >}}

Even when numbers are rough, directional improvements help others understand impact. Use approximations (“~20% faster”, “halved retries”, “saved hours per week”) when precision isn't available.

## Criticism & Clarifications

### Most of what we do isn’t easily measurable

{{< quote text=`You’re assuming everything can be turned into numbers. But creative work, long-term foundational improvements, mentorship, or code quality — these aren’t metrics-friendly. If I try to quantify everything, I’ll either waste time inventing fake numbers or distort what matters most.` author="Skeptic #1" >}}

Not all work is quantifiable at the surface, but most contributes to broader, measurable outcomes. Mentorship affects onboarding time. Code quality affects delivery velocity. Communication reduces ambiguity and failure cycles.

Quantification isn’t about precision or vanity metrics. It’s about **showing intent and effect, even through approximations**.

{{< tip text="It’s not about fabricating numbers. It’s about connecting effort to effect." >}}

### Most systems aren’t fair

{{< quote text=`Visibility doesn’t always lead to recognition. I’ve seen people play this game: inflate their numbers, frame shared work as personal wins, and get rewarded. Meanwhile, quieter team players who keep things stable are overlooked — even if they deliver real value.` author="Skeptic #2" >}}

That’s a fair point. The goal here isn’t to play the game, but to make your work visible in a way that is meaningful to you and your team. Communication won’t solve systemic bias. But poor communication guarantees invisibility.

The point is not to game the system, but to **increase the clarity and traceability of your contribution**. Even in imperfect systems, a well-framed outcome improves the odds of understanding and advocacy.

{{< tip text="You can’t control the system, but you can control what people are able to see." >}}


### Sounds like management theatre

{{< quote text=`This smells like OKR-speak and resume padding. I get that we should show impact, but turning every change into a mini case study just adds overhead. Most people just want to do good work — not write PR blurbs about it.` author="Skeptic #3" >}}

That’s fair. The goal here isn’t to turn engineers into marketers. The technique is designed to favour **clarity over polish**. 

Framing impact doesn’t mean performing. It means reducing ambiguity and making sure that the value of your work is legible to others.

{{< tip text="Don’t spin. Just say what changed — how much, and why it mattered." >}}

---

