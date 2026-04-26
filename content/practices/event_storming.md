+++
title = "Event Storming"
author = "Stijn Dejongh"
problem = "Development teams struggle to build a shared understanding of complex domains before coding begins, leading to misaligned requirements, costly rework, and software that technically works but solves the wrong problem."
description = "A collaborative discovery workshop in which domain experts and developers map an entire business flow using colour-coded sticky notes, surfacing domain events, commands, policies, and aggregates before any design or code decisions are made."
summary = """
Event Storming is a high-energy, low-ceremony workshop technique invented by Alberto Brandolini. Participants — ideally a mix of domain experts, developers, and testers — cover a long surface with sticky notes that represent what happens in a business domain. The result is a shared, visual model of domain events, the commands that cause them, the actors who issue those commands, the policies that react to events, and the bounded contexts that organise the whole picture.

Unlike traditional requirements gathering, Event Storming is a conversation first and a document second. The artefact is less important than the understanding the room arrives at.
"""
categories = [
    "communication",
    "software development",
]
tags = [
    "BDD", "Collaboration", "Requirements", "Communication", "Analysis", "DDD", "Workshop"
]
uuid="60a19c38-3978-4eb5-ba67-8027b2a9d8d7"
aliases=["60a19c38-3978-4eb5-ba67-8027b2a9d8d7", "event-storming"]
outputs = ['html', 'json']
ammerse = [
    {name = "agile",         delta = "0.75",  rationale = "Fast, iterative discovery reduces planning overhead and surfaces misalignments before they become costly code."},
    {name = "minimal",       delta = "-0.5",  rationale = "Sessions require facilitation, a long wall of paper, sticky notes, and a dedicated time block; not free."},
    {name = "maintainable",  delta = "0.5",   rationale = "A shared domain model reduces the silent knowledge gaps that make codebases hard to evolve."},
    {name = "environmental", delta = "0",     rationale = "No direct environmental impact."},
    {name = "reachable",     delta = "1",     rationale = "Brings domain experts into the design conversation before code is written, closing the gap between what is needed and what is built."},
    {name = "solvable",      delta = "1",     rationale = "Directly addresses the root cause of misaligned software: lack of shared understanding between business and technical participants."},
    {name = "extensible",    delta = "0.5",   rationale = "The domain model produced can be extended incrementally as the domain evolves."}
]
related_concepts = [
    "2eb8fcea-8f12-44d8-97c5-5a48013ae515",
    "6169f9c0-dfe0-49b1-b459-acf01ac69c40"
]
related_practices = [
    "fe600488-e27b-4f62-9e2a-75b7bd1ee1a3",
    "e6cdeaa2-cc30-4928-95fd-f28ea7cb489d",
    "336b0448-e78b-4428-83a5-d4d473afda63"
]
further_exploration = [
    {type="raw", author="Brandolini, A.", year="2021", title="Introducing Event Storming", site="leanpub.com", link="https://www.eventstorming.com/book/"},
    {type="raw", author="Brandolini, A.", year="2013", title="Introducing Event Storming (original blog post)", site="ziobrando.blogspot.com", link="https://ziobrando.blogspot.com/2013/11/introducing-event-storming.html"},
    {type="raw", author="Khononov, V.", year="2021", title="Learning Domain-Driven Design", site="O'Reilly Media", link="https://www.oreilly.com/library/view/learning-domain-driven-design/9781098100124/"},
    {type="raw", author="Wynne, M.", year="2015", title="Introducing Example Mapping", site="cucumber.io", link="https://cucumber.io/blog/bdd/example-mapping-introduction/"},
]
image=""
pubdate="2026-04-26"
+++

## Problem statement

Teams begin designing and coding features before everyone in the room means the same thing by the same words. Business experts carry domain knowledge that developers lack; developers carry technical constraints that business experts cannot anticipate. Traditional requirements documents capture this knowledge too late, too abstractly, or for the wrong audience. The result is software that passes its own tests while failing its users.

## Intent

Event Storming makes the domain **visible and negotiable** before any implementation decision is locked in. The session produces:

- A shared vocabulary that business and technical participants actually agree on
- A map of the domain's key flows: what triggers change, who triggers it, and what reacts
- A surface for exposing hotspots — the areas where nobody in the room can agree on what should happen
- Natural input material for [Behaviour-Driven Development]({{< ref "concepts/behaviour_driven" >}}) scenarios and [Example Mapping](https://cucumber.io/blog/bdd/example-mapping-introduction/) sessions

## Solution

Event Storming is run as a facilitated workshop on a physical or digital surface long enough to hold the entire domain flow left-to-right. It uses colour-coded sticky notes to represent different building blocks of the domain.

### Colour Conventions

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Colour | Represents | Description |
|---|---|---|
| **Orange** | Domain Event | Something significant that happened in the past tense: *"Task Created"*, *"Invoice Paid"* |
| **Blue** | Command | An intention or instruction that triggers an event: *"Create Task"*, *"Pay Invoice"* |
| **Yellow** | Aggregate / Entity | The business object that the command acts upon and the event is emitted from: *"Task"*, *"Invoice"* |
| **Purple / Lilac** | Policy | A business rule or reaction: *"When task is assigned, notify the assignee"* |
| **Green** | Read Model / View | Data a user needs to make a decision: *"Task List"*, *"Invoice Summary"* |
| **Pink** | Actor | A person or system that issues commands: *"Team Member"*, *"Payment Gateway"* |
| **Red** | Hotspot | An unresolved question or area of disagreement — to be resolved after the session |
{{< /bootstrap-table >}}

### Running the Session

**1. Invite the right people.**
The session requires domain experts (product owners, business analysts, subject matter experts) and at least one developer and one tester. The insights emerge from the tension between what the business knows and what the technical team assumes.

**2. Seed the surface with Domain Events.**
Ask participants to write down everything that *happens* in the domain on orange stickies — one event per note, in the past tense. Post them on the wall without worrying about order. This phase is deliberately chaotic.

**3. Sort and sequence the events.**
Group the events into a rough timeline from left to right. Duplicates and contradictions surface here — mark unresolved conflicts with red hotspot stickies rather than resolving them immediately.

**4. Add Commands, Actors, and Aggregates.**
For each event, work backwards: what command triggered it (blue), who issued that command (pink), and what entity was involved (yellow)?

**5. Identify Policies.**
Add purple stickies where a domain event automatically triggers another command: *"When Task Completed → If all project tasks are done → Close Project"*.

**6. Identify Bounded Contexts.**
Draw lines between clusters of stickies that form a coherent, self-contained area of the domain. These become candidate bounded contexts or microservice boundaries.

**7. Surface Hotspots and plan next steps.**
Red hotspots become the backlog of questions to resolve before implementation begins. The session ends with a prioritised list of areas the team understands well enough to specify and areas that need further conversation.

### Example: ToDo Application Domain

{{< image src="/images/concepts/event_storming_todo.png" alt="Event Storming diagram for a ToDo application showing three flows: task creation, task assignment, and task completion" size="100%" >}}

The diagram above shows three core flows in a simple task management domain:

- **Task Creation:** a Team Member issues the *Create Task* command → the *Task* aggregate emits a *Task Created* event → the *Task List* view is updated.
- **Task Assignment:** a Team Lead issues *Assign Task* → *Task Assigned* event → a policy reacts and emits *Notification Sent*.
- **Task Completion:** a Team Member issues *Complete Task* → *Task Completed* event → a policy checks whether all project tasks are done and potentially emits *Project Closed*.

Each flow maps directly to a BDD feature file. The events become `Then` clauses; the commands become `When` clauses; the actors and aggregates describe the `Given` context.

### From Event Storming to BDD

Event Storming and BDD operate at different altitudes and feed each other:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Technique | Scope | Output | When |
|---|---|---|---|
| **Event Storming** | Entire domain | Domain map, bounded contexts, hotspot list | Before features are known |
| **Example Mapping** | One user story | Concrete rules and examples | Before a story enters the sprint |
| **BDD / Gherkin** | One scenario | Executable specification | Before a scenario is implemented |
{{< /bootstrap-table >}}

Event Storming tells you *what* the domain contains. Example Mapping refines *how* one feature within it should behave. BDD then locks that behaviour into a runnable contract.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

- **Complex domain:** The more business rules, edge cases, and inter-department dependencies, the more value a shared map provides
- **Cross-functional access:** Domain experts and developers can be in the same room (or video call) for two to four hours
- **Preparation for BDD:** The team intends to write Gherkin scenarios and needs domain events as raw material
- **Greenfield or major redesign:** A new system or significant rework benefits most from a shared starting model

### Deterrents

The following factors prevent effective application of the practice:

- **No domain expert available:** A session without genuine business knowledge produces a technically plausible but domain-invalid model
- **Trivially small domain:** CRUD applications with no meaningful business rules do not warrant the ceremony
- **Remote teams without async tooling:** Physical sessions work best; remote sessions need a digital whiteboard (Miro, Mural, FigJam) and more facilitation effort
- **No follow-through:** An Event Storming wall that is photographed and forgotten produces no value — the output must feed directly into backlog items, Example Mapping sessions, or architecture decisions

## Rationale

Event Storming works because it separates *discovery* from *design*. By focusing first on what happens (events) rather than how to build it (entities, schemas, APIs), the session keeps the conversation in the language of the business. When a developer says "I need a `task` table with a `status` column" and a product owner says "we need to know when a task is done," those are two descriptions of the same reality that will collide later unless surfaced now.

The sticky-note format is not accidental. Stickies are low-commitment — they can be moved, discarded, and replaced in seconds, which encourages participants to propose ideas they would never type into a formal document. The physical or digital wall creates a shared focal point that levels the playing field between the most and least technically experienced person in the room.

The hotspot mechanism deserves particular attention. The goal of an Event Storming session is not to produce a perfect domain model — it is to make disagreement visible. A wall full of red hotspot stickies is not a failure; it is the session working exactly as intended. Those hotspots are the places where the team would otherwise have made silent, contradictory assumptions and discovered the conflict six weeks into development.
