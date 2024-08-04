+++
title = "Thinking in Systems"
subtitle="Understanding complexity through interconnectedness"
author = "Stijn Dejongh"
description = """
Systems Thinking is an approach that emphasizes understanding situations as interconnected systems, 
focusing on the interactions and relationships between their fundamental components to manage complexity holistically.
"""
summary = """
Explore Systems Thinking, a technique that emphasizes viewing situations as interconnected systems rather than isolated parts,
 helping manage complexity by focusing on interactions and relationships. Learn how this approach is applied across various fields 
 to develop effective, sustainable solutions for complex problems.
"""
categories = [
    "learning",
]
image="concepts/banner_systems-thinking.webp"
tags = ["complexity", "systems thinking", "interconnectedness", "strategy", "analysis"]
uuid = "c57288e3-b102-4212-adb7-a4339a3a9e87"
aliases = ["c57288e3-b102-4212-adb7-a4339a3a9e87"]
pubdate = "2024-07-31"
related_concepts = ["55f51f65-9d4e-4a31-ad8c-242d473a0f77", "3683719c-d1ff-4693-a5c5-d9eefb07e409"]
related_practices = ["8ffeb93b-0f8d-4b01-867b-a8b78ebd4644"]
further_exploration = [
  {type="raw", author="Romford, J.", site="agilityportal.io", link="https://agilityportal.io/blog/stacey-matrix", title="Understanding The Stacey Matrix & How It Helps Manage Complexities", year="2024"},
  {type="tool", id="6d6a2170-e409-40ff-b89c-1f41a47d677d"},
  {type="raw", link="https://medium.com/the-liberators/on-complexity-why-your-software-project-needs-scrum-13c36305c866", author="Verwijs, C.", site="medium.com", year="2017", title="On Complexity: Why Your Software Project Needs Scrum"},
  {type="biblio", id="2930d42d-e7cf-4ea5-a6f3-eceb5b9a5fc1"}, 
  {type="biblio", id="a32510dd-068d-4072-8b68-cce120864a64"}, 
  {type="biblio", id="e15a25a0-6c08-4b78-b593-ca54eea8cce2"}, 
  {type="biblio", id="b6727fa2-6deb-4080-a440-9697ec3d20e3"}, 
]
+++

## Definition

**Systems Thinking** is a sense-making technique that emphasizes understanding situations as interconnected systems rather than isolated parts.
This approach helps manage complexity by focusing on fundamental building blocks and their interactions, allowing for a holistic view of a
situation.

## Key Components

* **Building Blocks and Interactions:** By identifying and analyzing the fundamental components and their interactions within a system, we can
  reduce the level of detail needed to understand complex situations.
* **Holistic View:** Systemic thinking promotes a broad perspective, helping individuals see the "big picture" and gain clarity amidst chaos.
* **Mental Models:** Creating mental models or visual maps of systems helps to simplify and understand complex problems by highlighting key
  elements and their relationships.

### Types of Systems

Systems Thinking is a foundational technique in the study of organizational complexity. Various models exist to help practitioners understand the
different types of systems they might encounter.

{{<image src="/images/concepts/stacey-matrix_base.png"
alt="The Stacey Matrix "
caption="Domains of complexity, image by Ralph Douglas Stacey"
size="35%"
float="right" >}}

Sense-making frameworks like the **Stacey Matrix** and the **Cynefin framework** help us understand the nature of the systems we are dealing with.
This is done by considering two key factors: the level of _certainty_ in the environment and the level of _agreement_ among stakeholders. This 
In other words: How well do we understand WHAT we are dealing with (certainty), and do we know HOW we should deal with it (agreement)?
Charting these factors on a graph gives us these main zones of complexity:

* **Simple:** In environments where we are certain about what we are doing and there is a high degree of agreement on how to approach it, the
  challenge is fairly simple. Examples include well-known problems such as baking a cake, solving a simple math problem, or writing a piece of code
  to sort an array of integers.
* **Complicated:** When there is certainty about what we are doing but a low degree of agreement on how to best approach it, the challenge becomes
  more complicated. These typically require analysis and adjustments to the approach. Examples include building a bridge, designing a new software
  system, or maintaining a car.
* **Complex:** In environments where there is less certainty about what we are dealing with and limited agreement on how to best approach it, the
  challenge is complex. These environments require experimentation, learning, and adaptation. Examples include managing a software project, dealing
  with a server outage, or raising a child.
* **Chaotic:** The final quadrant is the domain of chaos, where we have no idea what is going on, and there is no agreement on how to best approach
  it. These situations require fast action to stabilize the environment and make it more manageable. Examples include dealing with a natural
  disaster, responding to a cyber attack, exploring new scientific frontiers, or managing a global pandemic.

{{<tip text=`
Generally, the more complex a system is, the more we need to rely on Systems Thinking to understand and navigate it effectively. For simple and 
complicated environments, linear and structured approaches are usually sufficient. Avoid the temptation of over-analyzing simple problems, you 
are likely to cause confusion and waste time.` >}}

## Background

### Origin

Systems thinking as a concept has evolved through various disciplines, including psychology, engineering, and management. It gained prominence as a
means to address the complexities of modern organizational and social challenges.

### Application

In practice, systems thinking is applied to understand and solve complex problems in various fields, including business, healthcare, and
environmental science. By focusing on the relationships between different parts of a system, practitioners can identify leverage points for
intervention and develop strategies that consider the broader context.

### Comparisons

#### Systemic Thinking vs. Analytical Thinking

While analytical thinking breaks down problems into smaller parts to understand them in detail, systemic thinking looks at the interconnections and
interactions within the whole system. Analytical thinking is useful for detailed analysis, whereas systemic thinking is essential for understanding
complex, dynamic systems.

### Examples

#### Improving Team Performance

Imagine a team in a large organization struggling to meet deadlines and losing stakeholder trust. Initially, management might look at individual
team members' performance, workload distribution, or even the tools they use. However, a systemic thinker approaches the problem differently. They
understand that the team's challenges cannot be fully comprehended in isolation but must be viewed as part of a larger organizational system.

{{<image src="/images/concepts/project_death_spiral.png"
  alt="The dreaded project death spiral"
  float="right"
  size="35%" >}}

The systemic thinker begins by joining the team and observing their daily activities and interactions. They notice that communication between
departments is often delayed, causing bottlenecks in the workflow. They also observe that there are unclear priorities set by management, leading to
confusion and duplicated efforts. Moreover, the systemic thinker identifies that the feedback mechanisms are weak, resulting in unresolved issues
and frustration among team members.

Next, the systemic thinker creates a visual map of the team's environment, highlighting key components such as people, processes, and power
dynamics. This map reveals the complex web of interactions that influence the team's performance. For instance, they might find that the team's
reliance on a single outdated software tool is a critical point of failure, or that the high turnover rate in the adjacent support team is causing
knowledge gaps and delays.

{{<image src="/images/concepts/project_death_spiral_context.png"
  alt="A systemic view of the struggling project, illustrating their context and key interactions."
  size="65%" >}}

By identifying these leverage points, the systemic thinker can propose targeted interventions. They suggest implementing a more robust project
management tool to streamline communication and task tracking. They recommend establishing clearer priorities through regular alignment meetings
with all stakeholders. They also advocate for a feedback loop that quickly addresses and resolves issues as they arise, improving overall morale and
efficiency.

Through these systemic interventions, the team begins to experience fewer bottlenecks, clearer direction, and a more responsive environment. The
stakeholders notice improved performance and restored trust in the team's ability to meet deadlines. This example demonstrates how systemic thinking
allows for a deeper understanding of complex problems and the development of more effective, sustainable solutions.

