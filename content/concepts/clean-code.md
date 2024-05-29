+++
title = "Clean code"
author = "Stijn Dejongh"
description = "Aim to write working, understandable, and maintainable code."
type = "concept"
categories = [
    "software development",
]
tags = [
    "maintainability", "cleanliness", "readability"
]
uuid="1f3849c8-28bc-4934-95bf-66d9dcee6858"
aliases=["1f3849c8-28bc-4934-95bf-66d9dcee6858"]
pubdate="2023-09-13"
image="concepts/banner_clean_code.webp"
+++

{{<image
src="/images/concepts/wtf_per_minute.png"  
alt="my attempt at reproducing the infamous `WTF-per-minute` cartoon" >}}

Many of us have encountered advice from experienced developers urging us to 'write clean code.' While the idea is straightforward —clean,
understandable code is easier to extend and maintain — the challenge lies in understanding how to achieve it.

Seasoned developers often seem to possess an intuitive sense for what constitutes 'clean' code, a skill that you will develop over time.
Yet, when you're just starting out, it is invaluable to have a set of best practices to guide you in evaluating your code's cleanliness."

## Description

When developing software, it is tempting to focus solely on making it function correctly. Undoubtedly, functionality is paramount in software
development. However, if you have ever worked on a substantial software project, you have likely spent a considerable amount of time reading and
deciphering existing code. Even if you primarily work in isolation, confusion can still arise when revisiting your own code after a significant
time-lapse.

{{<quote text="But it works! That's all that matters, right?" author="A lazy developer">}}

The mean culprit for this confusion is often code that's simply hard to understand.
It lacks expressiveness or becomes overly verbose. One helpful metric to gauge the cleanliness of your code is humorously known as the 'WTFs per
minute metric,' inspired by a well-known cartoon that has been recreated numerous times.

Writing clean code does more than pleasing your colleagues; you are doing your future self a favour.
Projects inevitably evolve, and what was once insignificant can become critical to the application's success. When the code handling this
functionality is messy, adapting to changing requirements can feel like a descent into chaos. So, do yourself a favour, and strive to keep your code
comprehensible at a glance. Your colleagues and your future self will thank you.

## References

* {{<reference author="Beck, K. & Andres, C."
  year="2004"
  title="Extreme Programming Explained: Embrace Change"
  isbn="9780321278654"
  publisher="Addison-Wesley"
  link="https://www.goodreads.com/book/show/67833.Extreme_Programming_Explained" >}}
* {{<reference author="Fowler, M.; Beck, K.; Brant J.; Opdyke W.; Roberts D."
  year="2012"
  title="Refactoring: Improving the Design of Existing Code"
  isbn="9780133065268"
  publisher="Addison-Wesley Professional"
  link="https://www.goodreads.com/book/show/18624706-refactoring" >}}
* {{<reference author="Thomas, D.; Hunt, A."
  year="2019"
  title="The Pragmatic Programmer, 20th Anniversary Edition: your journey to mastery"
  isbn="9780135957059"
  publisher="Addison-Wesley Professional"
  link="https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/" >}}