# Concepts

## What is Software Architecture?

The nuance between "architecture" and "design" is difficult to grasp.
For me one is an extension of the other, but the nuances of the borders of these 'blocks' are elusive.

### Definition

In simple words, software architecture is the process of converting software characteristics such as flexibility, scalability, feasibility, re-usability, and security into a structured solution that meets the technical and the business expectations. This definition leads us to ask about the characteristics of a software that can affect a software architecture design. There is a long list of characteristics which mainly represent the business or the operational requirements, in addition to the technical requirements.

### Characteristics

As explained, software characteristics describe the requirements and the expectations of a software in operational and technical levels. Thus, when a product owner says they are competing in a rapidly changing markets, and they should adapt their business model quickly. The software should be “extendable, modular and maintainable” if a business deals with urgent requests that need to be completed successfully in the matter of time. As a software architect, you should note that the performance and low fault tolerance, scalability and reliability are your key characteristics. Now, after defining the previous characteristics the business owner tells you that they have a limited budget for that project, another characteristic comes up here which is “the feasibility.”

A list of Software characteristics, known as _"quality attributes"_ can be found on [wikipedia](https://en.wikipedia.org/wiki/List_of_system_quality_attributes).


## Clean Coding

This section is a collection of Programming related patterns.
The patterns are meant as a guideline for your day-to-day development activities and will
hopefully offer you a mental framework to reason about the tasks you are asked to perform.

For consistency, the patterns follow a similar structure.
As we all know, **context matters**. This is why each pattern is prefaced with a short description of
when it can be useful to consider using it. The aim is not to apply as many of them as you can on any given task.
**This is not a bingo chart.**

### Why does code quality matters?

#### Introduction to clean coding

> You should write working, understandable and maintainable code.

Most of us have heard this or similar phrases being uttered by our seniors.
It's easy to understand the concept: when you write clean and understandable code, it will be easier to extend and maintain.
The big challenge here is knowing just exactly **how** you write good code.
Experienced developer seem to have a gut instinct, allowing them to know when their code is good and when it needs to be cleaned.
Over time, you will develop this skill. But when starting out, it helps to know a set of of best practices and see if they apply to the code you have just written.

#### But it works! That's all that matters, right?

When writing software, it is easy to fall into the trap of thinking that your only priority is making it work.
It is true that this is the most important goal of your task. If you have spent some time working on a bigger piece of software, you will probably have noticed that you spent a lot of time reading code that is already there.
You might be familiar with a sense of confusion when looking at code that was written by someone else. Even if you mainly work in isolation, this confusion can rear it's head when you revisit code you have written a long time ago.
The mean reason this happens is because the code is plain **hard to understand**. It is usually not expressive enough, or very verbose.

> Code is write once, but read very often.

A good measure to know whether or not the code you see before you is _clean_ enough is to use the infamous _"WTFs per minute metric"_.
This metric originates from a well-known cartoon that has been recreated multiple times.

![my attempt at reproducing the famous cartoon](./wtf_per_minute.png)

When you write clean code, your colleagues and future self will thank you. As is often the case with projects, along the way your path will change.
Things that were once not important at all are suddenly critical to the success of your application. If the piece of code that contains this functionality is messy,
it can feel like a trip through the depths of hell to meet the changing requirements. So do yourself a favor, and keep your code understandable at a glance.

> People prefer pretty things


## Good Enough Code

### Applicable Context

**Issue: You get told that you overcomplicate simple tasks.**

A mistake passionate programmers tend to make is to over-design simple things to make them theoretically and aesthetically more beautiful than they need to be at that point in time.
In doing so, they often end up spending much more time and mental effort on a piece of software than is needed (or will ever be valuable).

Writing clean code is admirable, but it also has to make sense for the problem at hand.
Creating a specific design by applying a pattern is to be done when it solves the problem at hand and makes the code more readable, robust, extensible or reusable.

![Sometimes it is okay to keep it simple](./overdesign.png)

### Description of Pattern

**Ask yourself:** _"Is this code likely to be changed/expanded in the future?""Is my design solving an issue that is here NOW, or am I solving an issue that might never happen?""If this expected issue occurs in the future, can it be fixed easily at that time?"_

The idea of Good Enough Code is to write code as well designed as it needs to be AT THIS POINT IN TIME.
If an idea for a more generic solution comes to mind during your implementation, take note of it.
If in the future the problem you anticipated actually happens, or the code you wrote now is reused, it will be solved at that time.

Make sure the code you write at this point in time adheres to the basic principles of clean code and design, but do not solve future problems that might never happen.

### Key Performance Metrics

- Throughput time of changes
- Regression introduced during tasks
- Function point count of changes
- Cyclomatic complexity
- Readability

### Related Patterns and Resources

| Item                                                                                                | Description                                                                                                                                                            | Action                                                                                                                                                                                |
| --------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Enterprise Quality FizzBuzz](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition) | A prime example of overdesigning something that can be done in a way more simple manner.                                                                               | Go through the codebase, and ask _"Why would you want to do this? And why is it overkill here?"_                                                                                      |
| [The bowling game kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)            | A programming kata by uncle Bob. Appart from learning how he thinks, the excercise also focusses on supressing your personal need to overly beautify a simple project. | Do the excercise and stop yourself from creating too many classes. Repeat the mantra: _"This is fine for now"_ to supress your urges to add indirection or OO concepts to the design. |