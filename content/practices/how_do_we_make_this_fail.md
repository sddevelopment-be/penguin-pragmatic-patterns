+++
title = "Plan a self-sabotage"
author = "Stijn Dejongh"
problem = "You have an idea and want to strengthen it against negative forces."
description="""
Proactively identify and mitigate potential failure points in your ideas and plans by intentionally challenging and attempting to 
undermine them. This approach aims to strengthen ideas against negative forces and increase their resilience.
"""
categories = [
    "learning",
]
tags = [
    "exploration", "discovery", "hardening"
]
uuid="1bdb4866-7c15-46b1-ad38-26111791eed5"
aliases=["1bdb4866-7c15-46b1-ad38-26111791eed5"]
ammerse = [
  {name = "agile", delta = "0.5"},
  {name = "minimal", delta = "-0.5"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "1"},
  {name = "extensible", delta = "0.5"},
]
pubdate="2023-09-19"
outputs = ['html','rss', 'json']
image = "practices/self_sabotage_cover.webp"
+++

## Problem Statement

You have an idea and want to strengthen it against negative forces.

## Intent

* Discover critical risks to your ideas.
* Reflect on ways to cope with setbacks.
* Harden your idea by limiting failure conditions.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* The individual or team can think creatively about potential failure points.
* There is a willingness to critically assess and attack one's own ideas.
* Access to resources or prior knowledge about common pitfalls is available.
* There is access to knowledgeable individuals for feedback and insights.

### Deterrents
The following factors prevent effective application of the practice:

* You do not have access to others / prior knowledge.
* You have difficulties finding/accepting issues with your own ideas or creations.

## Solution

* **Challenge your own ideas**
    * Begin by actively sabotaging your own ideas and plans.
    * Delve deep into your suggested approach and ask, "How can I ensure this fails?".
    * Encourage creativity and explore beyond common expected issues.
    * The effectiveness of this technique relies on your willingness to undermine yourself.
* **Create a Comprehensive List**
    * Compile a list of all the ways you can guarantee failure.
    * Organize these potential failure scenarios from "most impactful" to "least impactful."
    * Prioritize addressing the five most impactful scenarios as a starting point.
* **Assess Likelihood (Optional):**
    * For a more thorough evaluation, assign a likelihood rating to each "sabotage" scenario, ranging from high probability to low probability.
    * This assessment will allow you to create a 2-by-2 matrix, helping you visualize and prioritize potential issues.
* **Mitigate Impact of Failures:**
    * Consider and develop strategies to mitigate the three **most likely** high-impact failure scenarios.
    * Consider and develop strategies to mitigate the three **least likely** high-impact failure scenarios.[^1]
* **Track potential risks:**
    * During execution of your plan, actively track and reassess the risks to your idea. Be prepared to act!
    * Concentrate your attention and efforts on the failure modes that have the highest impact, as identified in the matrix.

{{<image src="/images/practices/sabotage.png" alt="A 2-by-2 matrix showing risks to an idea/plan ordered by impact and likelihood" >}}

By following this systematic approach, you can proactively strengthen your ideas against negative forces, ensuring they are more resilient and
better prepared for potential challenges.

## Rationale

### Creativity and Blind Spots

* Creative thinking can make it challenging to identify flaws in your plans.
* Common cognitive biases come into play:
    * **Selection bias:** Only taking into account part of the information available to you, as it fits what you want to believe.
    * **Effort justification:** Overvaluing something, because you have put effort into it.
    * **Illusion of validity:**  Overestimating your ability to interpret and accurately predict the outcome of when analysing a set of data.
    * **Illusion of explanatory depth:** Believing you understand something much more thoroughly than you actually do.

### Perspective Shifting

* Emotionally investing in your ideas can hinder clear reasoning.
* Shifting from "constructive mode" to "destructive mode" mentally helps distance yourself from biases.

## Considerations

* **Over-emphasis on Risks:** Focusing too much on potential failures can lead to excessive caution and hinder progress.
* **Time and Effort:** Conducting a thorough self-sabotage analysis requires significant time and effort, potentially detracting from other 
  productive activities.
* **Negative Mindset:** Continually thinking about how things can fail might foster a negative mindset, which can be demotivating and 
  counterproductive.

### Mitigation Strategies

* **Balance Risk Assessment:** Maintain a balanced approach by also considering potential positive outcomes and opportunities.
* **Allocate Time Wisely:** Schedule dedicated time for self-sabotage analysis to ensure it does not interfere with other important tasks. Know 
  when to stop and move forward. Not every potential risk warrants extensive mitigation.
* **Foster a Positive Environment:** Encourage a positive mindset by celebrating small successes and learning from identified risks rather than
  focusing solely on failures.

## References

* {{<reference author="Brown, A."
  year="2015"
  title="Financial Risk Management For Dummies"
  publisher="For Dummies"
  isbn="9781119082187"
  link="https://www.goodreads.com/book/show/26518085-financial-risk-management-for-dummies" >}}

[^1]: The idea being that the unlikely, high-impact failure modes are usually what catches people by surprise, and tend to ruin a plan as no one
bothered to think about mitigation strategies. An example from the technology world: "What if a hurricane destroys our data centre?".