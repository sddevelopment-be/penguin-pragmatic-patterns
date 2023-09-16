+++
title = "Let's not make it complicated"
author = "Stijn Dejongh"
problem = ""
description = ""
type = "practice"
categories = [
    "software development",
]
tags = [
    "elegance", "KISS", "YAGNI", "complexity"
]
+++

## Problem Statement

Programmers tend to over-design simple things to make them more capable, clever, or beautiful than they need to be at that point in time. 
In doing so, they often end up spending much more time and mental effort on a piece of software than is needed.  
Or worse: they build in functionality or capabilities that will never be used.

{{<image 
src="/images/practices/overdesign.png" 
alt="An image of a bicycle with a robotic rear wheel, looking highly complicated and over-engineered" 
>}}

## Intent

* Speed: Lower throughput time of changes
* Stability: Less regression or bugs introduced during tasks
* Lower function point count of changes
* Reduced cyclic complexity
* Improved readability

## Contextual forces

### Enablers

* the level of refinement of a codebase should make sense for the problem at hand
* not all code will have a significant lifespan
* unpredictability of future requirements
* development time costs a LOT of money
* readable code is easier to maintain

### Deterrents

* people like to show how clever they are
* thinking about future problems can help mitigate them

## Solution

* write code that is as well designed as it needs to be at this point in time.
* make sure the code you write at this point in time adheres to the basic principles of clean code and design
* when an idea for a more generic solution comes to mind during your implementation, take note of it and revisit it afterwards
* iteratively enhance the codebase when it makes sense to do so: when tackling a new code challenge, look for reusable components or
  structural improvements.

## Examples
### Self-diagnosis

Ask yourself:

* _"Is this code likely to be changed/expanded in the future?"_
* _"Is my design solving an issue that is here NOW, or am I solving an issue that might never happen?"_
* _"If this expected issue occurs in the future, can it be easily fixed at that time"_

## References

| Item                                                                                                | Description                                                                                                                                                           | Action                                                                                                                                                                                |
|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Enterprise Quality FizzBuzz](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition) | A prime example of overengineering something that can be done in a way more simple manner.                                                                            | Go through the codebase, and ask _"Why would you want to do this? And why is it overkill here?"                                                                                       |
| [The bowling game kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)            | A programming kata by uncle Bob. Apart from learning how he thinks, the exercise also focusses on suppressing your personal need to overly beautify a simple project. | Do the exercise and stop yourself from creating too many classes. Repeat the mantra: _"This is fine for now"_ to suppress your urges to add indirection or OO concepts to the design. |

---
