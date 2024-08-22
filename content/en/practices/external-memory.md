+++
title = "Use an External Memory"
author = "Stijn Dejongh"
problem = "You want to reduce the impact of being pulled out of your flow."
description = "Delegate memory tasks to an external system to reduce cognitive load, maintain focus, and improve task management."
summary="""
Struggling with forgetfulness and interruptions? Learn how to leverage an external memory system to free up your mental space, boost productivity, and maintain focus. This technique helps you offload routine tasks, allowing you to prioritize what truly matters while minimizing the risk of being pulled out of your flow. Discover the benefits, potential pitfalls, and strategies for effectively implementing this practice.
"""
categories = [
    "productivity",
]
tags = [
    "task management", "focus", "remembering", "tracking", "organizing", "cognitive load"
]
uuid="18091885-3e43-43f5-a0f7-bcb6c625612b"
aliases=["18091885-3e43-43f5-a0f7-bcb6c625612b"]
outputs = ['html', 'json']
ammerse = [
  {name = "agile", delta = "0.35", rationale = "The practice moderately enhances agility by freeing up mental resources, allowing for quicker responses to changes and improving adaptability."},
  {name = "minimal", delta = "0.75", rationale = "Supports minimalism by reducing cognitive load and simplifying task management, though there is a risk of over-complicating the external memory system."},
  {name = "maintainable", delta = "0.85", rationale = "Strongly supports maintainability by encouraging regular review and simplification of external memory systems, reducing mental clutter over time."},
  {name = "environmental", delta = "0.1", rationale = "Minimal impact on the broader environment, requiring only slight cultural adaptation where reliance on external memory systems is not the norm."},
  {name = "reachable", delta = "0.15", rationale = "Slightly improves goal reachability by organizing tasks and reducing the risk of forgetting, though its impact is limited by user consistency."},
  {name = "solvable", delta = "0.7", rationale = "Enhances problem-solving by offloading memory tasks, allowing for better focus on critical thinking, though over-reliance may reduce on-the-spot problem-solving."},
  {name = "extensible", delta = "0.6", rationale = "The practice is generally extensible and adaptable to various contexts, though its effectiveness relies on consistent use and periodic review."}
]
pubdate="2023-08-23"
image="practices/external_memory_cover.webp"
related_concepts = [
    
]
related_practices = [
    "642d0d66-7b5d-4900-8f68-66adf41466d2",
    "e6cdeaa2-cc30-4928-95fd-f28ea7cb489d",
    "ef0c0e1b-f395-4ee0-8360-e419e97f7447",
    "94a558cd-4e86-4814-a5e9-d6ecafcb0d6b"
]
further_exploration = [
    {type="biblio", id="77fd967c-fe5b-4095-a36b-7e6d0ecbb33e"},
    {type="biblio", id="d33fc09e-39c6-411e-a70e-2ca98375abd6"},
    {type="raw", author="Pham, T.", year="2011", title="A Simple Personal Wiki with VoodooPad", site="asianefficiency.com", link="https://www.asianefficiency.com/organization/a-simple-personal-wiki-with-voodoopad" },
    {type="raw", author="Notion Labs Inc", year="2023", title="Notion: Online notes", site="notion.so", link="https://www.notion.so" },
    {type="raw", author="Saigal, R.", year="2019", title="How to Create a Personal Wiki Using Microsoft OneNote", site="makeuseof.com", link="https://www.makeuseof.com/tag/create-wiki-onenote" },
    {type="raw", author="Trapani, G.", year="2006", title="todo.txt open format", site="todotxt.org", link="http://todotxt.org" }
]
+++

## Problem statement

You want to reduce the impact of _"forgetfulness"_ and being _"pulled out of your flow"_.

## Intent

Delegate the remembering of things to an external system, in order to free up your headspace for more important tasks.

## Solution

* **Implement a Reliable External Memory System:** Use a combination of technological and/or physical tools to keep track of your tasks, ideas, and
  notes. This can include apps, digital notebooks, or physical systems like paper planners or sticky notes.
* **Regular Review and Maintenance:** Establish a routine for revisiting and updating your notes, ensuring that your external memory remains a
  reliable source of truth. This can be done through daily or weekly reviews.
* **Prioritize Searchability and Organization:** Favor systems that allow for easy searching, tagging, and categorization. Text-based formats are
  recommended for their simplicity, version control, and portability across different platforms.
* **Ensure Accessibility:** Make sure that your external memory system is accessible from multiple devices and platforms. This reduces the friction
  involved in capturing and retrieving information.
* **Avoid Over-complication:** Keep the system simple and easy to use, avoiding the temptation to over-engineer your external memory with
  unnecessary features or integrations. Favour using plain text based formats and tools, as they are easier to version, maintain, and port to
  different systems.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* **Trust**: You trust your external brain to remember things for you, and you trust yourself to remember to check it.
* **Routine**: You can schedule time consistently, to revisit your notes and take action if needed.
* **Searchability**: You have a system in place that allows you to quickly find what you need.
* **Availability**: Your external brain is easily accessible, and does not require a lot of effort to use.
* **Simplicity:** The system is simple enough to use that it doesn't add cognitive load, but rather reduces it by offloading memory tasks.

### Deterrents
The following factors prevent effective application of the practice:

* **Inconsistency:** You lack trust in your external memory system, either because you forget to check it or because it has failed you in the past.
  This inconsistency can lead to missed deadlines or forgotten tasks.
* **Overwhelm:** You have accumulated too many notes across various systems, leading to confusion and difficulty in finding relevant information
  when needed. This fragmentation can negate the benefits of using an external memory.
* **Inconvenience:** Your external memory is not easily accessible, requiring too much effort to input or retrieve information. This inconvenience
  can lead to underuse and a failure to fully integrate the system into your workflow.
* **Over-automation:** Relying too heavily on automated systems (e.g., task managers or reminders) without a manual review process can lead to
  complacency and the overlooking of critical tasks.

## Rationale

Human memory is [extremely lossy](https://www.nationalgeographic.com/science/article/human-memory). We are better equipped for creative,
constructive thinking than for storing factual information. Focus is [easily disrupted](https://blog.rescuetime.com/context-switching/).
It makes practical and economic sense to try and find a way to free up your headspace and thinking power for the endeavours that actually matter.

* Context switches hurt your productivity
* Modern systems and activity are too large to fit in your brain completely
* The more you have to keep in memory, the more likely you will forget something
* Having a mental task list becomes exhausting after a while
* We wish to be able to easily report progress when queried
* Hand-overs take a lot of time and effort
* Computers are great at remembering stuff

{{< image
    src="/images/practices/free-mind.gif"
    alt="Free your mind, neo!"
    caption="Neo, stopping bullets after freeing his mind. from: 'The Matrix Reloaded'" >}}

## Application

### Consequences

* **Perfectionism:** Using an external memory can lead to perfectionism in tool selection and configuration, where more time is spent fine-tuning
  the system than actually using it. This can detract from overall productivity, as the focus shifts from content to tooling.
* **Over-reliance:** There is a risk of becoming too dependent on the external memory, which might diminish your ability to think critically and
  solve problems on the spot. If you always rely on your notes for problem-solving, your capacity for improvisation and quick decision-making might
  suffer.
* **Anxiety from Loss of Access:** If you lose access to your external memory—whether due to technical issues, loss of physical notes, or being
  away from your usual tools—you might experience anxiety or feel lost. This can be particularly troubling if your entire workflow depends on this
  system.
* **Data Overload:** As you accumulate more notes and tasks, there is a risk of becoming overwhelmed by the sheer volume of information stored.
  Without proper organization and regular culling of outdated or irrelevant information, the system can become a burden rather than a relief.

### Mitigation strategies

* **Set Boundaries for Tooling:** Limit the time and effort spent on configuring and selecting tools. Choose a simple, reliable system early on,
  and resist the urge to constantly tweak or upgrade it. The focus should be on utility, not perfection.
* **Periodic Review and Pruning:** Regularly review and tidy up your external memory. Remove outdated notes and tasks, and reorganize information
  as necessary to prevent data overload. This helps maintain the system's usefulness and prevents it from becoming a source of stress.
* **Backup and Redundancy:** Implement a backup system to prevent loss of information. This could be as simple as regularly exporting digital notes
  or keeping a physical backup of critical information. Consider combining digital and physical systems to mitigate the risk of total
  data loss.
* **Balance Memory with Critical Thinking:** While it is important to trust your external memory, make a conscious effort to engage in
  problem-solving and critical thinking without immediately turning to your notes. This practice can help maintain and develop cognitive skills
  alongside external aids.
* **Establish a Routine:** To avoid inconsistency, create a daily or weekly routine for checking and updating your external memory. This ensures
  that your notes remain relevant and actionable and that you develop a habit of relying on the system without becoming overly dependent.

## Examples

There are many online (free and paid) systems that offer you a way to store your thoughts.
Some of them are listed below in the _references_ section.

You can use a simple text-based system to keep track of your thoughts, or To-Do items.
I personally prefer using these text-based systems as they allow for easier cross-platform portability, and avoid being locked in to a
single vendor solution. This entire knowledge base can be seen as one big _"external brain"_.

### Stijn's developer logs

Working on enterprise projects tends to be a continuous struggle against interruptions, pivots, and moving targets.
In order to stay on track, it helps to keep track of your actions and thoughts.
The best way I have found so far is to keep track of my actions on different projects by including short developer logs inside the code
repositories.
This allows me to come back to a project that has been on ice for a while with relatively low friction.
In addition to this, I try and keep a day-to-day running count of what happened during any given day. This is done in a separate log, which I try to
write at the end of the day.

{{<tip text=`
One of my favourite ways of note-taking while working on a software project is to add a dev_notes directory to my codebase.
For short-lived projects or changes, I tend to add this file to the .gitignore configuration of my repository as to not muck up the
workspace of my colleagues. For more long-term or collaborative projects, consider creating a dedicated repository to host all of your
developer notes. You can get creative with symbolic links to make these folders show up in your codebase regardless of their physical location.
` >}}