+++
title = "Pomodoro Focus"
author = "Stijn Dejongh"
problem = "You are distracted by various inputs from your environment, causing you to not finish tasks you set out to do."
description = "Use tomato-based timers to stay focussed on the task at hand."
categories = [ "productivity" ]
tags = [ "time-management", "focus" ]
uuid = "cfd81655-1c47-4ee9-9f73-ea959bba3af4"
aliases = [ "cfd81655-1c47-4ee9-9f73-ea959bba3af4" ]
pubdate = "2023-08-26"
image = "practices/pomodoro_cover.webp"

[[ammerse]]
name = "agile"
delta = "-0.5"

[[ammerse]]
name = "minimal"
delta = "0"

[[ammerse]]
name = "maintainable"
delta = "0.5"

[[ammerse]]
name = "environmental"
delta = "0"

[[ammerse]]
name = "reachable"
delta = "1"

[[ammerse]]
name = "solvable"
delta = "0.5"

[[ammerse]]
name = "extensible"
delta = "0"
+++

## Problem statement

You are distracted by various inputs from your environment, causing you to not finish tasks you set out to do.

## Intent

- Your tasks get finished more often, or at least move to a point where (part of) the work can be considered  **"completed"**.
- Your days stop feeling like you are running all over the place without accomplishing much.
- You feel less resistance to starting a task.

## Contextual forces

### Enablers

The following factors support effective application of the practice:

- You wish to complete tasks to be best of your ability, and as fast as circumstances allow.
- The tasks you perform require your attention, and take sufficiently long to achieve.
- You can split your tasks into smaller parts, each adding some value on their own accord.
- You have some autonomy on how you allocate your time.

### Deterrents

The following factors prevent effective application of the practice:

- Your main activity requires you to switch between various tasks quickly.
- The tasks you are performing often take a few moments of your time and do not require focus.
- Your environment rewards **looking** busy over **being** busy.

## Solution

- Set a timer[^0] for a fixed amount of time. This timebox is called a "pomodoro".
  - Commonly, 25 minutes is used as a base value.
- Distance yourself from all distractions, and work on one task until the timer notifies you.
- After completing a time box, take a 5-minute break.
- Set a new timer, and repeat.
- After completing four iterations, take an extended break.

For tasks that require a long time to complete, decide beforehand how much time you will invest in it now.
It helps to specify a specific amount of pomodoro timers that you will devote to working on the task. You stop when the task is done, or
your time allocation runs out. Whichever comes first.

{{\<tip text=`The pomodoro technique works well if you split your tasks down into smaller chunks that can be accomplished within a single 
pomodoro.` >}}

## Rationale

**"The hardest part is getting started."** Reducing the resistance to start a task can help practitioners to overcome the inertia.
The pomodoro technique aims to achieve this by introducing the reassurance that the end is in sight.
Rather than committing to fully complete an endeavour, a practitioner is committing to work on a certain task for a fixed period of time.

Adding a certain element of gamification, and quantifiability, to the process helps motivate people to work towards their goals more frequently
and consistently.

## Considerations

- **Disruption in Collaborative Environments:** The technique may disrupt team workflows if pomodoro cycles of individual team members are not
  synchronized.The focus on minimizing distractions can reduce spontaneous, valuable interactions with team members, potentially impacting
  collaboration and innovation.
- **Perceived Rudeness:** By actively discouraging interruptions, individuals using the technique may come across as rude or uncooperative to
  colleagues. Overuse of the technique can lead to feelings of isolation, as it discourages social interactions during work periods.
- **Overemphasis on Timers:** Focus on timers might become a distraction, reducing natural workflow. Focusing too much on the timer can lead to a
  counterproductive obsession with time management, rather than actual task completion and quality.
- **Rigidity:** The fixed intervals might not suit all types of tasks or personal working styles.
- **Break Mismanagement:** Poor management of break times can lead to loss of momentum or extended procrastination. The standard 5-minute breaks may
  not be enough for some individuals to recharge effectively, leading to fatigue over time.

### Mitigation Strategies

- **Flexibility:** Allow some flexibility in the duration of pomodoros and breaks to accommodate different types of tasks and individual needs.
- **Communication:** Clearly communicate with colleagues about your use of the technique to avoid misunderstandings and ensure collaborative work
  is not hindered.
- **Adaptability:** Modify the technique to fit the nature of your work and personal preferences, such as adjusting the length of work intervals
  and breaks.
- **Balance:** Ensure a balance between focused work periods and spontaneous interactions to maintain healthy team dynamics and personal well-being.

## Examples

### A command line pomodoro timer

If you do not have a mechanical timer available, you can use your computer's terminal to act the part.
The script below, published by Byron Salty [on GitHub](https://github.com/byronsalty/pom/blob/main/pom) is an excellent way of doing this.
On MacBooks, the `say` command makes your computer talk to you.

```bash
#!/bin/bash

if [ -z "$1" ]; then
  let min=25 
else
  let min=$1
fi
echo "Waiting ${min} minutes"

for i in $(seq 1 $min)
do
  sleep 60  
  let rem=min-i
  echo -ne "${rem} minutes remaining\\r"
done
echo ""

msg="Pomodoro completare"
echo $msg
say -v Luca $msg
```

## Further Exploration

- {{<reference author="Cirillo, F."
  year="2013"
  title="The Pomodoro Technique"
  publisher="FC Garage GmbH"
  isbn="9783981567908"
  link="https://www.goodreads.com/book/show/18482790-the-pomodoro-technique" >}}
- {{<reference author="Salty B."
  year="2023"
  title="A simple Pomodoro CLI"
  site="dev.to"
  link="https://dev.to/byronsalty/a-simple-pomodoro-cli-48p0" >}}
- {{<reference author="Ünver, Ö."
  year="2023"
  title="Productivity Tips for Folks with ADD"
  site="youtube.com/@MindYourOwnRevisions"
  link="https://www.youtube.com/watch?v=pVLETEecnG4&list=PLb_RIH-LKllK_e60yYfB_76oBeuG1OCjw&index=23" >}}

---

[^0]: Old-school kitchen timers in the shape of a tomato are where this technique got its name. The Italian word for "tomato" being **"pomodoro"**.
