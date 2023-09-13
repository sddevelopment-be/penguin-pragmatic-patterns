+++
title = "Clean code"
author = "Stijn Dejongh"
description = "Aim to write working, understandable, and maintainable code."
type = "concept"
categories = [
    "software development",
]
tags = [
    "programming", "maintainability", "cleanliness", "readability"
]
+++

{{<image
src="/images/concepts/wtf_per_minute.png"  
alt="my attempt at reproducing the infamous `WTF-per-minute` cartoon" >}}

Many of us have encountered advice from experienced developers urging us to 'write clean code.' While the idea is straightforward —clean,
understandable code is easier to extend and maintain — the challenge lies in understanding how to achieve it.

Seasoned developers often seem to possess an intuitive sense for what constitutes 'clean' code, a skill that you'll develop over time.
Yet, when you're just starting out, it's invaluable to have a set of best practices to guide you in evaluating your code's cleanliness."

## Description

When developing software, it's tempting to focus solely on making it function correctly. Undoubtedly, functionality is paramount in software
development. However, if you've ever worked on a substantial software project, you've likely spent a considerable amount of time reading and
deciphering existing code. Even if you primarily work in isolation, confusion can still arise when revisiting your own code after a significant
time lapse.

{{<quote text="But it works! That's all that matters, right?" author="A lazy developer">}}

The mean culprit for this confusion is often code that's simply hard to understand.
It lacks expressiveness or becomes overly verbose. One helpful metric to gauge the cleanliness of your code is humorously known as the 'WTFs per
minute metric,' inspired by a well-known cartoon that has been recreated numerous times.

Writing clean code isn't just about pleasing your colleagues; it's a favor to your future self.
Projects inevitably evolve, and what was once insignificant can become critical to the application's success. When the code handling this
functionality is messy, adapting to changing requirements can feel like a descent into chaos. So, do yourself a favor, and strive to keep your code
comprehensible at a glance. Your colleagues and your future self will thank you.

