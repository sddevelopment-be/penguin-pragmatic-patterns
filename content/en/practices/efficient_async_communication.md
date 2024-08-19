+++
title = "Write chat messages as mini-emails"
author = "Stijn Dejongh"
problem = "People tend to wait for responses to chat messages before stating what they want, causing unneeded distractions."
description = """
Write your messages with enough context for the recipient to prioritize them, keeping in mind they will be read and acted upon
when it best suits your conversational partner.
"""
categories = [
    "communication",
]
tags = [
    "clarity", "asynchronous", "messenging", "chat"
]
uuid="158a883c-e537-4b92-869f-95d5e0483f3c"
aliases=["158a883c-e537-4b92-869f-95d5e0483f3c"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.25", rationale = "Slightly enhances agility by streamlining communication, allowing faster adaptation to changes, but the overall impact remains limited."},
  {name = "minimal", delta = "0.85", rationale = "Strongly supports minimalism by reducing unnecessary communication, which significantly outweighs the minimal upfront effort required."},
  {name = "maintainable", delta = "0.55", rationale = "Enhances maintainability by promoting clear, structured communication that is easier tomaintain over time."},
  {name = "environmental", delta = "0.35", rationale = "Positively contributes to a focused work environment, though it may require somecultural adaptation to fully integrate."},
  {name = "reachable", delta = "-0.05", rationale = "Little to no impact on reachability, as the practice does not directly influence the achievement of goals."},
  {name = "solvable", delta = "1", rationale = "Strongly supports problem-solving by reducing communication barriers, leading to faster and more effective resolutions."},
  {name = "extensible", delta = "0.5", rationale = "Generally extensible across different contexts, although consistent adoption and adaptationare required for it to be fully effective."}
]
pubdate="2023-09-17"
image="practices/async_communication_cover.webp"
related_concepts = []
related_practices = [
  "ef0c0e1b-f395-4ee0-8360-e419e97f7447", 
  "d8d2cbc3-1f28-4e6b-937f-2d8cf0bbaed1"
]
further_exploration = [
  {type = "biblio", id="63d02dd1-135f-4e3e-af7b-b2e6f4dbb5e3"},
  {type = "biblio", id="6a18e90d-4b11-488d-839f-6e6223c5955f"},
  { type="raw", author="May, J.; et al.", year="2022", title="No Hello!", site="nohello.net", link="https://nohello.net/en/" }
]
+++

## Context

You communicate with others in a semi-asynchronous way, through messaging applications.

## Problem Statement

People tend to wait for responses before stating what they want, causing unneeded distractions.

## Intent

* Send clear messages, allowing the recipient to gauge the urgency and nature of the request
* Do not waste time waiting for back-and-forth acknowledgements
* Allow people to retain their focus on their most important tasks

## Contextual forces

The context is semi-asynchronous communication environments, such as messaging applications used by remote or distributed teams, where maintaining
focus while collaborating is critical.

### Enablers
The following factors support effective application of the practice:

* **Clear and Concise Communication:** This pattern works well when team members can succinctly describe their requests, making it easier for
  recipients to prioritize and respond.
* **Respect for Focus:** It is effective in environments where people value each other's time and attention, ensuring that messages are crafted
  with care and consideration.
* **Distributed Teams:** The pattern is particularly beneficial for distributed teams working across different time zones, where immediate
  responses are not always possible.

### Deterrents
The following factors prevent effective application of the practice:

* **Cultural Differences:** In cultures where politeness and small talk are essential, the directness of this approach might be seen as abrupt or
  rude.
* **Inexperience with Messaging Tools:** Teams unfamiliar with chat-like messaging applications may struggle to adopt this practice.
* **Expectation of Immediate Responses:** If the team or organization expects quick replies to messages,
  this pattern may cause frustration, as it relies on the idea that messages will be read and acted upon when convenient.

## Solution

The practice involves structuring messages in a semi-asynchronous communication environment to include all necessary context and details upfront.
This approach aims to minimize unnecessary back-and-forth interactions, enabling recipients to prioritize and respond efficiently.

### Key attention points

Write your messages with enough context for the recipient to prioritize them, keeping in mind they will be read and acted upon
when it best suits your conversational partner.

* Write multiple sentences in the same chat message
* In general, follow the structure:  
  "Hello X. Could you \[request\], by \[timeframe\]. I need this in order to \[describe intent\]. I am currently \[describe context\]. "
* When asking for help, be sure to outline:
    * What you want your conversational partner to do
    * How urgent the request is
    * What you are trying to do
    * What you have tried
    * What is preventing you from continuing
* When giving an update, be sure to include:
    * Why it is relevant for the recipient
    * What has happened, what still needs to happen
    * How much time is still needed to finalize the task
    * Whether this still matches the projected timings

In general: **Optimise for quick reading and processing, not for quick sending.** 

## Application

This practice excels in enhancing communication efficiency and problem-solving while maintaining a minimalist approach. It is especially beneficial
in environments that value focus and productivity. However, its impact on agility and goal attainment is limited, making it a technique best suited
for scenarios where clear and concise communication is paramount.

### Consequences

* **Cultural Adaptation Challenges:** In some cultures or organizational environments, this direct approach may be perceived as too abrupt or
  impersonal. Adapting to this practice may require a cultural shift, where team members need to understand and accept the value of concise,
  context-rich communication.
* **Potential Perception of Rudeness:** For individuals who are accustomed to more formal or polite communication styles, the lack of small talk or
  pleasantries might be perceived as rude or dismissive. This could create friction in teams where relationship-building is valued.
* **Initial Learning Curve:** Teams unfamiliar with this approach may experience a learning curve as they adapt to the new communication style.
  Training and reinforcement may be required to ensure consistent application across the team.

### Mitigation strategies

* **Shared Understanding:** Clearly explain the benefits of this practice to the team, emphasizing how it helps retain focus and reduces
  unnecessary distractions. Provide concrete examples and guidelines for crafting effective messages. Encourage open discussions to address any concerns or
  cultural differences.
* **Limit Scope:** Apply this practice selectively to specific types of messages or situations where it is most beneficial, such as urgent requests
  or status updates. Use this approach primarily with colleagues who understand and appreciate its intent. For external communication or
  interactions with clients, consider adjusting the level of directness to fit the context.
* **Cultural Sensitivity:** Be mindful of cultural differences and communication preferences. Where necessary, incorporate polite greetings or
  acknowledgments to maintain a balance between efficiency and politeness. Gradually introduce the practice in environments where it might be seen
  as too direct, allowing team members to adapt over time.
* **Pair with Complementary Practices:** Combine this practice with other communication tools, such as task management systems or project
  management software, to enhance overall efficiency. For example, use the messaging practice for real-time communication and updates, while
  leveraging task boards or shared documents for tracking progress and detailed planning.

## Examples

### Issue with development server

Our two protagonists, Alex and Bernie, work on the same project.
They live in different timezones, as do most of the members of their team.  
One day, an issue pops up on their development server causing the entire team to lose the ability to test their system fully.

Alex, being the newest member of the team, has managed to identify the root cause of the issue and is trying to solve the issue.  
They get stuck during the process, and want to ask Bernie for help, as Bernie has been on the team the longest.

Bernie is working on a critical piece of code that was promised to be ready by the following week.
This is highly important to the project, as the client is waiting for a new feature to solve a business inefficiency.
Due to its importance, the client has demanded the development team put their best people on it.

#### Original conversation

Alex, being used to face-to-face conversations and online chats with their friends, says hello to Bernie.
As Bernie is busy working on an important task, it takes some time for them to see the message.
Distracted by the message, Bernie drops what they are doing and responds.
You can see their conversation in the image below:

{{< image
  src="/images/practices/async_message_bad_practices.png"
  alt="Alex sends an unclear message to Bernie, disturbing their flow and delaying the conversation." >}}

#### Revised conversation

This time, Alex remembered to immediately state why he is contacting Bernie.
Alex writes a short message explaining what is going on, and why they need Bernie's help.

As Bernie is busy working on an important task, it takes some time for them to see the message.
Bernie decides the team being blocked from doing their tests will impact their team's delivery, but knows that they have already written down
how to fix similar issues. In response to Alex's message, Bernie advices them to first try a quick reset of the system, and to restart the
server if that doesn't work.

In this version of the conversation, both Alex and Bernie are interrupted less often. The conversation itself take less time to complete, and
both of them can continue their work more rapidly.

You can see the revised conversation in the image below:
{{< image
  src="/images/practices/async_message_improved.png"
  alt="Alex sends a clearer message to Bernie. Bernie responds with a solution to the problem. Both of them save time." >}}
