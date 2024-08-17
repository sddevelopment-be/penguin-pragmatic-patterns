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
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "1"},
  {name = "maintainable", delta = "0"},
  {name = "environmental", delta = "1"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0.5"},
  {name = "extensible", delta = "0"},
]
pubdate="2023-09-17"
image="practices/async_communication_cover.webp"
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

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

* People regard each other's time and attention as being valuable.
* You are able to succinctly describe your intent.

### Deterrents
The following factors prevent effective application of the practice:

* People feel it is polite to say "hello" and chit-chat before asking a question or favour.
* People are not used to chat-like messaging applications.
* People expect immediate responses to their messages.

## Solution

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

{{<image
  src="/images/practices/async_message_bad_practices.png"
  alt="Alex sends an unclear message to Bernie, disturbing their flow and delaying the conversation."
>}}

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
{{<image
  src="/images/practices/async_message_improved.png"
  alt="Alex sends a clearer message to Bernie. Bernie responds with a solution to the problem. Both of them save time."
>}}

## Further Exploration

* {{<reference author="Squirrel, D. & Fredrick, J."
  year="2020"
  title="Agile Conversations: Transform Your Conversations, Transform Your Culture"
  isbn="1942788975"
  publisher="IT Revolution Press"
  link="https://agileconversations.com" >}}
* {{<reference author="Brooks, F. P. Jr."
  year="1995"
  title="The Mythical Man-Month: Essays on Software Engineering, Anniversary Edition"
  isbn="9780201835953"
  publisher="Addison-Wesley Professional"
  link="https://www.goodreads.com/book/show/13629.The_Mythical_Man_Month" >}}
* {{<reference author="May, J.; et al."
    year="2022"
    title="No Hello!"
    site="nohello.net"
    link="https://nohello.net/en/" >}}