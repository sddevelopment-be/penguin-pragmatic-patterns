## Pomodoro focus

### Problem statement

You are distracted by various inputs from your environment, causing you to not finish tasks you set out to do.

### Intent

* Your tasks get finished more often, or at least move to a point where (part of) the work can be considered  __"completed"__.
* Your days stop feeling like you are running all over the place without accomplishing much.
* You feel less resistance to starting a task.

### Contextual forces

#### Enablers

* You wish to complete tasks to be best of your ability, and as fast as circumstances allow.
* The tasks you perform require your attention, and take sufficiently long to accomplish.
* You can split your tasks into smaller parts, each of which add some value on their own accord.
* You have some autonomy on how you allocate your time.

#### Deterrents

* Your main activity requires you to switch between various tasks quickly.
* The tasks you are performing often take a few moments of your time and do not require focus.
* Your environment rewards __looking__ busy over __being__ busy.

### Solution

* Set a timer[^0] for a fixed amount of time. This timebox is called a "pomodoro".
    * Commonly, 25 minutes is used as a base value.
* Distance yourself from all distractions, and work on one task until the timer notifies you.
* After completing a timebox, take a 5 minute break.
* Set a new timer, and repeat.
* After completing four iterations, take an extended break.

For tasks that require a long time to complete, decide beforehand how much time you will invest in it now.
It helps to specify a number of pomodoro's that you will devote to working on the task. You stop when the task is done, or your tinme allocation
runs out. Whichever comes first.

> [!TIP]
> The pomodoro technique works well if you splits your tasks down into smaller chunks that can be accomplished within a single pomodoro.

### Rationale

__"The hardest part is getting started."__ Reducing the resistance to start a task can help practitioners to overcome the inertia.
The pomodoro technique aims to achieve this by introducing the reassurance that the end is in sight.
Rather than committing to fully complete an endeavour, a practitioner is commiting to work on a certain task for a fixed period of time.

Adding a certain element of gamification, and measurability, to the process helps motivate people to work towards their goals more frequently
and consistently.

### Consequences

> [!STUB]
> Due to it's online nature, this work in in perpetual motion.
> This section has not yet been completed. If you are interested in adding content here, please refer to
> the ["How to contribute" guide](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/blob/content/software_patterns/CONTRIBUTING.md) on
> github.

### Examples

#### A command line pomodoro timer

If you do not have a mechanical timer available, you can use your computer's terminal to act the part.
The script below, published by Byron Salty [on github](https://github.com/byronsalty/pom/blob/main/pom) is an excelent way of doing this.
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

### References

* F. Cirillo, "The Pomodoro Technique". FC Garage GmbH,
  2013, [isbn: 9783981567908](https://www.goodreads.com/book/show/18482790-the-pomodoro-technique)
* B. Salty, "A simple Pomodoro CLI". dev.to, 2023, [retrieved from the web on 14 aug 2023](https://dev.to/byronsalty/a-simple-pomodoro-cli-48p0)

---
[^0] Old-school kitchen timers in the shape of a tomato are where this technique got its name. The Italian word for "tomato" being __"pomodoro"__. 