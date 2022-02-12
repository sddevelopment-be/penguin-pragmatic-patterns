# Overview

This section is a collection of Programming related patterns.
The patterns are meant as a guideline for your day-to-day development activities and will
 hopefully offer you a mental framework to reason about the tasks you are asked to perform.

For consistency, the patterns follow a similar structure.
As we all know, **context matters**. This is why each pattern is prefaced with a short description of 
when it can be useful to consider using it. The aim is not to apply as many of them as you can on any given task.
**This is not a bingo chart.**

# Why does code quality matters?

## Introduction to clean coding

> You should write working, understandable and maintainable code. 

Most of us have heard this or similar phrases being uttered by our seniors.
It's easy to understand the concept: when you write clean and understandable code, it will be easier to extend and maintain.
The big challenge here is knowing just exactly **how** you write good code.
Experienced developer seem to have a gut instinct, allowing them to know when their code is good and when it needs to be cleaned.
Over time, you will develop this skill. But when starting out, it helps to know a set of of best practices and see if they apply to the code you have just written.

## But it works! That's all that matters, right?

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

# Section Contents

## Code Samples
This section includes a variety of programming patterns that have been collected, and put to use 
in both personal and professional projects. In order to make learning them a bit easier, we have included 
code samples to these patterns. They can help you understand the approaches described in the patterns and offer 
a great way of getting some practical experience with them.
The code included in the patterns can be writting a variety of languages, but the default language is Oracle Java.
The table below can assist you in downloading the development environments you need to work with the included code samples.

| Technology | Download link |
|---|---|
| Java Development Kit | [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html) |

