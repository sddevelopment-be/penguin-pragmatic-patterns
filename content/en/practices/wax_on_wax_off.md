+++
title = "Wax on, wax off"
subtitle = "Practice, Rinse, Repeat. Then practice some more."
author = "Stijn Dejongh"
problem = "You find it hard to apply a new skill or idea in your daily life."
description="Establish a routine of repeatable exercises to master new skills and make techniques second nature through consistent practice."
summary="""
Master new skills by focusing on repeatable exercises that fit your schedule. Consistent practice helps deepen understanding and make techniques second nature.
"""
categories = [
    "learning",
]
tags = [
    "training", "repetition", "strategic learning", "mastery", "consistency"
]
uuid="8c3df901-eefa-4dd1-970a-c00cf3b55379"
aliases=["8c3df901-eefa-4dd1-970a-c00cf3b55379"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0", rationale = "Reinforces foundational skills but may introduce slight rigidity."},
  {name = "minimal", delta = "0", rationale = "Promotes simplicity but risks over-complication if too many variations are introduced."},
  {name = "maintainable", delta = "0.8", rationale = "Strongly supports maintainability by ensuring retention of core skills."},
  {name = "environmental", delta = "0", rationale = "No significant impact on environmental factors."},
  {name = "reachable", delta = "0.7", rationale = "Emphasizes setting small, achievable goals with a focus on skill development."},
  {name = "solvable", delta = "0.7", rationale = "Positively impacts problem-solving with minor risks of reduced flexibility."},
  {name = "extensible", delta = "0.4", rationale = "Supports extensibility but may limit application in more advanced scenarios."}
]

pubdate="2023-09-10"
image = "practices/wax_on_cover"
related_concepts = [
  "a49f917b-c560-462a-ac38-46515f6f62d0", "98cc5f46-409b-44df-9fb8-fb1d881970b5"
]
related_practices = [
  "09986d9e-cd80-4016-8000-c62ed5064914"
]
further_exploration = [
  { type="biblio", id="f537c66d-38e8-40cc-aa94-81880f270475"},
  { type="biblio", id="d33fc09e-39c6-411e-a70e-2ca98375abd6"},
  { type="raw", author="Handelsman, M. M. PhD", year="2022", title="Consider the Role of Repetition in the Classroom... Again", site="Psychology Today", link="https://www.psychologytoday.com/us/blog/the-ethical-professor/202202/let-s-consider-the-role-repetition-in-the-classroom-again" },
  { type="raw", author="Hogan, B. P.", year="2015", isbn="9781680501223", title="Exercises for Programmers: 57 Challenges to Develop Your Coding Skills",   publisher="The Pragmatic Bookshelf", link="https://pragprog.com/titles/bhwb/exercises-for-programmers" }
]
+++

## Problem statement

You are learning a new skill, and have understood the basic principles or idea. Applying your budding knowledge consistently is proving to be a
challenge.

## Intent

* Find a repeatable exercise, that fits your schedule, and perform it as often as possible.
* Gain a deeper understanding of the skill you are attempting to master.
* Make corresponding techniques second nature, so you do not have to think about how you are doing something while you are doing it.

## Solution

* Identify an easily repeatable exercise[^1]
  * Ideally, the exercise takes a maximum of 30 minutes to complete
  * For most skills, you can find a compendium of recommended exercises online or in books.
* Perform the chosen exercise multiple times
  * at first focussing intently on how you are doing in detail, going as slow as needed to not make any mistakes
  * repeat the exercise at least weekly, but aim for a higher frequency at first
  * once you are able to perform the required actions without needing to actively think about them, start slowly increasing your speed
* Revisit your practice regularly, even if you have moved on to more advanced skills and their corresponding exercises. It pays dividends to
  retrain your fundamentals.

{{<quote text="I fear not the man who has practised 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times" author="Bruce Lee">}}
  
## Contextual forces

### Enablers
The following factors support effective application of the practice:

* You are determined to master this new skill.
* You enjoy the feeling of being in a flow state.
* There are exercises available, which you can replicate.
* You are able, and willing, to allocate time for dedicated practice.
* You are being supported by a mentor, or have other means to solicit feedback on your technique.

### Deterrents
The following factors prevent effective application of the practice:

* You give up easily.
* You are not able, or not willing, to dedicate time for practise.
* You do not know where to start, and have no means of learning from a skilled practitioner.
* You have a tendency to jump to a new and shiny thing before understanding yor current objective.

## Rationale

* Repetition works. Repeating stuff helps you remember. Also, repetition works.
  * Being exposed to the same techniques or ideas helps your brain form new neural pathways, and strengthens existing ones.
  * For physical activities, this is commonly referred to as "muscle memory" 
* Making practise a routine habit, lowers the "getting started"-hump. Making it easier to regularly commit yourself to it.
* Focusing on a smaller subsection of techniques helps make them manageable.
* Honing your skills in a stress-free environment allows you to reinforce the concepts and techniques, avoiding debilitating panic reactions.

## Application

### Consequences

Applying this pattern of repeatable exercises can lead to the following outcomes:

* **Increased Proficiency:** By consistently practising the same exercise, you will likely see a marked improvement in your ability to perform
  the skill. The repetition helps reinforce the technique, making it more instinctive and easier to recall in real-world scenarios.
* **Enhanced Confidence:** As you become more proficient through repetition, your confidence in your abilities will grow. Knowing that you have
  mastered the fundamentals can give you a solid foundation to tackle more complex challenges.
* **Risk of Monotony:** There is a possibility that the repetitive nature of the exercises could lead to boredom or a lack of motivation over
  time. Without variation, the practice might become stale, reducing its effectiveness.
* **Neglect of Broader Skill Set:** Focusing intensely on a specific exercise or set of exercises might cause you to overlook other important
  aspects of the skill. This could lead to a narrow skill set that lacks versatility.
* **Overtraining:** In physical skills, particularly, there is a risk of overtraining if the exercises are not balanced with rest or variation.
  This can lead to fatigue or even injury, negating the benefits of practice.

### Mitigation strategies

To mitigate the potential negative consequences of this pattern:

* **Introduce Variation:** Periodically vary your exercises to keep practice sessions engaging. You can modify the exercises slightly or
  alternate between different but related exercises to maintain interest while still reinforcing core skills.
* **Set Clear Goals:** Establish specific, achievable goals for your practice sessions. This can help maintain focus and motivation by giving
  you something concrete to work toward.
* **Balance with Broader Training:** Ensure that your practice routine includes a mix of focused repetition and broader skill development. This
  helps you build a well-rounded skill set and prevents the neglect of other important areas.
* **Monitor for Signs of Fatigue:** Be mindful of signs of physical or mental fatigue, especially if your exercises are physically demanding.
  Incorporate rest days or lighter practice sessions as needed to prevent overtraining.
* **Seek Feedback:** Regularly seek feedback from a mentor, coach, or peer to ensure that your practice is effective and that you are not
  reinforcing bad habits. This external perspective can help you stay on track and continue improving.

## Examples

### Code Kata

In software development, the concept of performing "Code Katas" in order to train your fingers and mind is well established.
There are plenty of resources available online to help programmers home their skills.

A selection of notable kata are:
* [The Bowling game coding kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)
* [Gilded Rose refactoring kata](https://github.com/emilybache/GildedRose-Refactoring-Kata)
* [Tennis refactoring kata](https://github.com/emilybache/Tennis-Refactoring-Kata)
* [FizzBuzz coding kata](https://codingdojo.org/kata/FizzBuzz/)

More free-form training can be achieved by working on random short assignments. 
These helps you train your problem-solving, by removing the safety of knowing how to approach an issue.
While this is not training in the same way as performing a kata, it can be a useful addition to it.

* [codewars.com](https://www.codewars.com/)
* [Google summer of code challenges](https://summerofcode.withgoogle.com/)


[^1]: In martial arts, this is called a "kata". A kata is generally a select few movements, which are executed in a fixed order at a fixed
cadence. Even though these are solitary drills, practitioners are told to imagine they are fighting against real opponents while performing
their routines. 