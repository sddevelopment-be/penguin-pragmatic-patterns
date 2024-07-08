+++
title = "Interviewing like a STARR"
author = "Stijn Dejongh"
problem = "Assessing a candidate's skills and experience during an interview using traditional knowledge-based questions often leads to researched and rehearsed answers."
description = "Employ a behavioural questioning method, to conduct more conversational interviews, and enticing candid and truthful responses."
summary="""
improve the quality of candidate assessments during interviews by using situational and behavioural questions based on the STARR (Situation-Task-Action-Results-Reflection) method. 
This technique aims to reveal a candidate's practical experience, decision-making skills, and ability to learn from past experiences.
"""
categories = [
    "communication",
]
tags = [
    "interviewing", "assessments", "understanding"
]
uuid="499c0c2f-e2b4-4266-8871-410c9c4c8718"
aliases=["499c0c2f-e2b4-4266-8871-410c9c4c8718"]
ammerse = [
    {name = "agile", delta = "0.35", rationale="The pattern encourages focusing on current needs, which aligns with agile principles of flexibility and rapid iteration. However, it may lead to future refactoring."},
    {name = "minimal", delta = "-0.65", rationale="The pattern promotes simplicity and avoids over-engineering, effectively reducing unnecessary complexity."},
    {name = "maintainable", delta = "0.65", rationale="Improves code readability and maintainability by avoiding unnecessary features but may introduce technical debt if future requirements are not considered."},
    {name = "environmental", delta = "0.25", rationale=" Aligns with cost-sensitive and efficiency-focused environments but may conflict with cultures prioritizing long-term planning. The overall impact is negligible."},
    {name = "reachable", delta = "0.25", rationale="Sets practical, attainable goals by focusing on immediate needs, with minimal downsides."},
    {name = "solvable", delta = "0.75", rationale="Encourages solving current problems effectively without over-engineering but future problems might require significant refactoring."},
    {name = "extensible", delta = "0.25", rationale="The pattern may hinder future extensibility, necessitating significant rework."},
]
pubdate="2024-05-11"
image = "practices/starr_method_cover.webp"
+++

## Problem Statement

Assessing a candidate's skills and experience during an interview using traditional knowledge-based questions often leads to researched and 
rehearsed answers. You want to assess and verify the interviewee has experience in the application of certain skills.

## Intent

Assess a candidate's skills and experience by asking situational and behavioural questions. These questions are designed to reveal their prior 
experience and how the candidate handled specific situations. By asking open-ended questions, and cueing the 
interviewee to provide specific examples, you can gain a better understanding of their capabilities and how they might fit into your team. 

## Contextual forces
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be aware of.

### Enablers
The following factors support effective application of the practice:

* **Relevant Experience:** When the candidate has significant professional experience to discuss.
* **Structured Evaluation:** There is a structured process in place to assess responses consistently.
* **Sufficient Time:** Enough time is allocated for thorough interviews.
* **Behavioral Insight:** There is a need to assess thinking, behavioural, and social patterns.
* **Candidate Comfort:** Candidates feel at ease during the interview. They are briefed on the STARR interview format before answering the
  questions, allowing them to better articulate their experiences and responses.

### Deterrents
The following factors prevent effective application of the practice:

* **Limited Experience:** The candidate lacks relevant professional experience.
* **Brief Responses:** Candidates tend to give short, uninformative answers.
* **Lacking Interviewer Training:** Interviewers lack training or familiarity with the STARR technique, leading to inconsistent application and interpretation of candidate responses.
* **Time Constraints:** Limited interview time may prevent thorough exploration of each STARR component, reducing the effectiveness of the technique.
* **Execution-only Focus:** The organization is not interested in behavioural or cognitive patterns. Due to lack of interest, or due to the job
  not requiring these skills.
* **Resistance to Change**: There is resistance within the organization to adopt new interview methodologies, hindering the implementation of the STARR technique.
* **Candidate Stress:** When candidates feel pressured to provide the "right" answers, leading to less representative responses.

## Solution

The STARR (Situation-Task-Action-Results-Reflection) method is a structured approach to interviewing that helps you gather all the 
necessary information about a candidate.

{{< image src="/images/practices/starr_diagram.png"  alt="Overview of the STAR-R acronym." caption="STAR-R: situational and behavioural interview questions" >}}

* **Situation:** The context in which the interviewee found themselves. What was going on? What was the interviewee's role and responsibility? 
* **Task:** What was the goal or objective? What was the interviewee trying to achieve? 
* **Action:** What did the interviewee do? What steps did they take to achieve the goal?
* **Results:** What was the outcome? How did the situation unfold? What did the interviewee accomplish?
* **Reflection:** What did the interviewee learn from the experience? How did they grow or change as a result?

This structure helps you to ask open-ended questions that require the interviewee to provide specific examples. 
This way, you can gain a better understanding of their capabilities and how they might fit into your team. Be sure to ask follow-up questions to 
the interviewee's responses to get a deeper understanding of their thought process and decision-making skills.  
The purpose is to make the interview as conversational as possible, putting the interviewee at ease and allowing them to provide more candid (and 
truthful) responses.

### Notes

* A candidate that answers the "Task" part of the question with a self-imposed goal rather than a direct order from their superior is likely 
  showing initiative and intrinsic motivation.
* A candidate that mostly answers the questions in the interview with _"We"_ instead of _"I"_ might be trying to take credit for the work of a 
  team, to which they contributed little.
* The answers to the "Results" part of the interview indicate whether the candidate is able to list both desired and undesired outcomes. 
  This can give you an idea of how they handle failure and success, and whether they are forthcoming about potential problems.
* While optional, the "Reflection" step is crucial for understanding how the candidate learns from their experiences. This can give you an idea of 
  how they approach iterative personal growth and development. These reflection-based questions are not useful in all contexts, but can be very 
  revealing.
* When asking about results, pay attention to the candidate's ability to quantify their achievements. This can give you a better understanding of
  how they think about their impact on the project or team.

## Consideration

* **Limited Predictive Power:** Directly assesses the candidate's past actions and results, which does not inherently account for their potential to
  adapt to new or evolving situations.
* **Culture and Context Sensitivity:** Be aware of cultural resistance to these types of questions. Some candidates may not be used to this style of interviewing and may need more
  guidance. This is not a sign of incompetence, but rather a lack of familiarity with the technique or with the idea of speaking candidly about
  challenging situations.
* **Increased effort:** Consistent training is required to maintain interview quality. Interviewers need to be familiar with the STARR technique and
  its application to ensure effective candidate evaluation.
* **Potential rigidity:** The structured format may limit the interviewer's ability to explore unexpected or nuanced responses. Interviewers should
  remain flexible and adapt the technique as needed to ensure comprehensive candidate evaluation.

### Mitigation strategies

* **Put them at ease:**  Encourage the interviewee to provide specific examples from their experiences. Make sure to put them at ease and create a conversational
  atmosphere. It helps to tell them _"There are no right or wrong answers, we mainly want to get a sense of who we are dealing with"_.
* **Role-Specific Questions:** Tailor the STARR questions to the specific role requirements, ensuring that the candidate's past experiences are relevant to the position.
* **Grow-and-Learn Questions:** Introduce questions or scenarios that specifically address future potential and adaptability. For example, "How
  have you approached a situation where you needed to learn a new technology quickly to meet project demands?"
* **Training and Preparation:**
  * Implement regular training programs for interviewers to ensure they are familiar with the STARR technique and can apply it effectively.
  * Provide candidates with information about the STARR format before the interview to reduce discomfort and improve response quality.
* **Flexibility:** Encourage interviewers to remain flexible and adapt the structured format as needed to avoid rigidity and ensure
  comprehensive candidate evaluation. Make sure to ask questions that are relevant to the role you are hiring for. Be prepared to ask follow-up
  questions to get a deeper understanding of the interviewee's thought process and decision-making skills.
* **Balancing Thoroughness and Efficiency:** Allocate sufficient time for interviews but ensure the process remains efficient to avoid delays in 
  hiring, especially in high-demand situations.
* **Continuous Improvement:** Regularly review and refine the interview process based on feedback from both interviewers and candidates to enhance the effectiveness of the STARR technique.

## Examples

### Possible questions to ask

* Tell me about a time you disagreed with your boss. How did you resolve it?
* Have you ever had to make an unpopular decision, and explain it to those impacted? How did you handle it?
* What is one of the most challenging technical issues you encountered so far? How did you solve the problem?
* Describe a time when you used a metaphor or analogy to explain a tricky concept to a coworker or family member.

## Further Exploration

* {{<reference author="Cook, S."
  year="2009"
  title="Coaching for High Performance: How to Develop Exceptional Results Through Coaching"
  isbn="9781849280037"
  publisher="It Governance Ltd"
  link="https://www.goodreads.com/book/show/11013308-coaching-for-high-performance" >}}
* {{<reference author="McKay B.; McKay K."
  year="2017"
  title="The STAR Interview Method: How to Answer + Examples"
  site="biginterview.com"
  link="https://resources.biginterview.com/behavioral-interviews/star-interview-method/" >}}
* {{<reference author="Belludi, N."
  year="2007"
  title="Use The STAR Technique to Ace Your Behavioral Interview"
  site="rightattitudes.com"
  link="https://www.rightattitudes.com/2008/07/15/star-technique-answer-interview-questions/" >}}
* {{<reference author="Crossland, J.B."
  year="2024"
  site="chatgpt.com"
  title="STARR technique AMMERSE evaluation by openAI"
  link="https://chatgpt.com/share/19bd350a-b050-4eec-88b1-d54fae0d937d?oai-dm=1" >}}


---
