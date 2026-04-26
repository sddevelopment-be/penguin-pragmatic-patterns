+++
title = "Behaviour-Driven Development"
subtitle = "Building the right thing by talking about it first"
author = "Stijn Dejongh"
description = "BDD is a collaboration practice that turns shared examples of desired behaviour into executable specifications, closing the gap between what users need and what software does."
summary = """
Behaviour-Driven Development is a collaboration practice in which development teams explore desired system behaviour through structured conversations before writing a single line of code. The result — plain-language specifications expressed in concrete examples — serves as both a shared understanding of requirements and an automated test suite. When a scenario passes, it is evidence the system does what the business asked. When it fails, it points precisely to where the divergence lies.

BDD is less about testing tools and more about the conversations that happen before anyone reaches for a keyboard.
"""
categories = [
    "software development",
]
tags = [
    "BDD", "Testing", "Collaboration", "Requirements", "Communication", "Trade-off"
]
uuid="2eb8fcea-8f12-44d8-97c5-5a48013ae515"
aliases=["2eb8fcea-8f12-44d8-97c5-5a48013ae515", "bdd"]
pubdate="2026-04-26"
image = ""
related_concepts = [
    "6169f9c0-dfe0-49b1-b459-acf01ac69c40",
    "49a014f5-e40b-4c80-ba64-a31626b955ca"
]
related_practices = [
    "fe600488-e27b-4f62-9e2a-75b7bd1ee1a3",
    "336b0448-e78b-4428-83a5-d4d473afda63",
    "e6cdeaa2-cc30-4928-95fd-f28ea7cb489d"
]
further_exploration = [
    {type="raw", author="North, D.", year="2006", title="Introducing BDD", site="dannorth.net", link="https://dannorth.net/introducing-bdd/"},
    {type="raw", author="Wynne, M.", year="2015", title="Introducing Example Mapping", site="cucumber.io", link="https://cucumber.io/blog/bdd/example-mapping-introduction/"},
    {type="raw", author="Cucumber Team", year="2024", title="BDD with Cucumber", site="cucumber.io", link="https://cucumber.io/docs/bdd/"},
    {type="raw", author="Smart, J.F.", year="2014", title="BDD in Action: Behaviour-Driven Development for the Whole Software Lifecycle", site="Manning Publications", link="https://www.manning.com/books/bdd-in-action"},
    {type="biblio", id="2930d42d-e7cf-4ea5-a6f3-eceb5b9a5fc1"},
]
+++

## Definition

Behaviour-Driven Development (BDD) is a collaborative software development practice in which teams define desired system behaviour through structured conversation — using concrete examples from real user perspectives — before implementation begins. Those examples are then expressed as plain-language specifications that double as automated tests. The practice was introduced by Dan North in 2003 as a response to teams that wrote unit tests that were technically correct but tested the wrong things.

{{< quote text=`BDD is not about testing. It is about having conversations that lead to a shared understanding of what the system should do.` author="Dan North" >}}

The central problem BDD addresses is deceptively simple: software teams routinely build things that work perfectly but solve the wrong problem. The root cause is rarely incompetence — it is a gap in communication between the people who know what the business needs and the people who build the system. BDD closes that gap by making the desired behaviour explicit, unambiguous, and verifiable, long before any code is written.

## Key Components

- **Ubiquitous Language** — A shared vocabulary that business and technical participants agree on and use consistently. When a product owner, a developer, and a tester all mean the same thing when they say "completed task," misinterpretations shrink dramatically.
- **Discovery** — Structured conversations — often using the Three Amigos format or Example Mapping — in which the team explores what a feature must do by examining concrete examples. No code, no wireframes. Just examples on index cards and questions on the table.
- **Formulation** — Translating discovered examples into plain-language specifications, typically written in Gherkin's `Given / When / Then` structure. These specifications belong to the product, not to a developer's test file.
- **Automation** — Connecting the written specifications to executable test code. The specification runs against the system; a passing scenario is proof of behaviour, not just proof of code.
- **Living Documentation** — Because the specifications run as tests, they cannot silently fall out of date. A feature file that describes a completed workflow is either green (the system behaves as described) or red (the system has diverged and someone must decide which is correct: the code or the spec).

### BDD and User Journeys

A BDD scenario is a user journey in miniature. The `Given` clause establishes who the user is and what world they inhabit; the `When` clause captures the action they take; the `Then` clause describes what they observe. The structure maps directly onto how product designers think about user flows:

```gherkin
Scenario: A returning user resumes an in-progress task
  Given I have a task "Quarterly report" marked as in-progress
  When I open my task list
  Then "Quarterly report" should appear at the top of the active list
  And it should be visually distinct from new tasks
```

Writing this scenario forces a conversation about what "in-progress" actually means to the user, what "visually distinct" looks like, and whether the business rule about task ordering is intentional or accidental. These are exactly the questions a user journey mapping session surfaces — BDD simply binds the answers to a test that runs on every build.

### Knowing Your Audience

BDD is an exercise in knowing who uses the system and what they actually need. The Three Amigos format — one person representing the business need, one who will build it, one who will verify it — is a miniature audience analysis. Before a scenario can be written, the team must agree on:

- **Who** is performing the action (the actor or persona)
- **What** they are trying to achieve (the goal, not the feature)
- **Why** this matters to them (the value, which informs trade-offs)

Teams that skip this conversation build software for themselves. Teams that do it well build software their users actually recognise.

{{< tip text=`Write your BDD scenarios in the language of the user's goal, not the language of the UI. "I submit a purchase order" is a business event. "I click the Submit button on the order form" is a UI instruction. The first survives a redesign; the second breaks the moment a developer renames a button.` >}}

## Background

### Origin

Dan North coined the term "Behaviour-Driven Development" around 2003 while trying to teach Test-Driven Development to developers who kept writing tests that verified implementation detail rather than behaviour. He reframed TDD by replacing "test" with "behaviour" — starting with the question "what should this do?" rather than "how do I test this?" — and found that the reframing changed not just what people wrote, but who they talked to before writing it.

The Gherkin specification language, and the Cucumber framework that executes it, emerged from this lineage. Gherkin's `Given / When / Then` vocabulary was borrowed from user story acceptance criteria — already in common use in Agile teams — making it readable to non-developers without requiring any tooling.

### Application

BDD is most productive when applied to features that carry business risk or cross-functional understanding requirements: user-facing workflows, business rules with edge cases, integrations between systems with different ownership. Routine CRUD operations or pure infrastructure work gain little from the ceremony.

A typical BDD cycle looks like this:

1. **Before the sprint:** a Three Amigos session produces a set of concrete examples for the next feature. These become draft Gherkin scenarios, reviewed by the product owner.
2. **During development:** developers run the failing scenarios as a target. The scenario passes when the behaviour is implemented — not when a developer's own test passes.
3. **After the sprint:** the passing scenarios enter the regression suite. They run on every commit, protecting the behaviour from future regressions.
4. **When requirements change:** the scenario is updated before the code is changed. The failing scenario describes the intended new behaviour; the passing scenario confirms the change landed correctly.

### Comparisons

#### BDD vs. TDD

Test-Driven Development and Behaviour-Driven Development share a "specification before implementation" philosophy, but operate at different altitudes and with different audiences. TDD is a developer practice: the feedback loop is seconds long, the tests are low-level, and the audience is the developer. BDD is a team practice: the feedback loop spans a conversation, the specifications are high-level, and the audience includes non-developers. The two are complementary — a BDD scenario describes what the system must do; TDD guides how the code that makes it happen is structured.

#### BDD vs. Acceptance Testing

Acceptance testing verifies that a feature meets its specified requirements. BDD is one way to write and automate those acceptance criteria — but not the only way. The distinction is that BDD insists the criteria be written in a shared language, derived from a collaborative conversation, before development begins. An acceptance test written by a developer after the fact, to confirm their own implementation, is not BDD.

#### BDD vs. Traditional Requirements Documents

A requirements document and a BDD feature file may contain similar information, but they age very differently. A requirements document is written once and rarely updated; after six months, it may describe a system that no longer exists. A BDD feature file fails the moment the system diverges from it — making it impossible to have a scenario that says one thing and a system that does another, at least not silently.

## Examples

### Example 1: Task Completion in a Project Tool

A team is building a task management feature. The product owner describes "completing a task" informally. In the Three Amigos session, questions emerge: Does completing a task notify assignees? Does it affect any calculated metrics? What happens if the task has unresolved sub-tasks? The conversation produces three scenarios instead of one vague requirement. Each scenario is independently automatable and directly answerable by the implementation team.

```gherkin
Feature: Task completion
  Completing a task records when it was done and removes it from active views.

  Scenario: A user completes their own open task
    Given I have an open task "Draft release notes" assigned to me
    When I mark it as complete
    Then the task should move to my completed list
    And the completion timestamp should be recorded

  Scenario: A task with unresolved sub-tasks cannot be completed
    Given I have a task "Ship feature" with an unresolved sub-task "Write tests"
    When I attempt to mark "Ship feature" as complete
    Then I should see a warning listing the unresolved sub-tasks
    And the task should remain open

  Scenario: Completing a task notifies other assignees
    Given "Write tests" is assigned to both Alice and Bob
    When Alice marks the task as complete
    Then Bob should receive a completion notification
```

### Example 2: A Pricing Rule with Business Conditions

An e-commerce team is adding a loyalty discount. The rule has multiple conditions that emerge only during the Example Mapping session: discounts don't stack, guest users are ineligible, and the threshold changes quarterly. Each condition becomes a scenario. The product owner signs off on the scenarios directly — not on a code review, not on a demo — because the scenarios are written in their language.

```gherkin
Feature: Loyalty discount

  Background:
    Given the loyalty threshold is set to 500 EUR lifetime spend

  Scenario: Eligible customers receive the loyalty discount
    Given I am a registered customer with 600 EUR in lifetime purchases
    When I add an item worth 50 EUR to my cart
    Then a 10% loyalty discount should be applied to my order total

  Scenario: Guest users are not eligible for the loyalty discount
    Given I am browsing as a guest
    When I add an item worth 50 EUR to my cart
    Then no loyalty discount should be applied

  Scenario: Loyalty discount does not stack with promotional codes
    Given I am a registered customer with 600 EUR in lifetime purchases
    And I have applied the promotional code "SUMMER15"
    When I view my cart
    Then only the promotional code discount should be applied
    And I should see a message explaining why the loyalty discount is not active
```

Both examples share a property that matters: a product owner who cannot read a line of code can read these scenarios, catch a misunderstanding, and do so before any implementation has happened. That is the return on the investment.

---

[^1]: The term "Three Amigos" refers to the minimum viable set of perspectives in a BDD conversation. In practice, the names differ and the number can grow — what matters is that the business, technical, and quality perspectives are all represented before work begins.
