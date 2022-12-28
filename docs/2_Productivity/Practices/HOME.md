# Practices

## Free your mind: the external memory


### Context


![./free-mind.gif >](./free-mind.gif)

Human memory is [extremely lossy](https://www.nationalgeographic.com/science/article/human-memory). We are better equipped for creative,
constructive thinking than for storing factual information. Focus is [easily disrupted](https://blog.rescuetime.com/context-switching/).
It makes practical and economic sense to try and reduce the impact of _"forgetfulness"_ and being _"pulled out of your flow"_.
Try and find a way to free up your headspace and thinking power for the endeavors that actually matter.

### Drivers

* Context switches hurt your productivity
* Modern systems and activity are too large to pit in your brain completely
* The more you have to keep in memory, the more likely you will forget something
* Having a mental task list becomes exhausting after a while
* We wish to be able to easily report progress when queried
* Hand-overs take a lot of time and effort
* Computers are great at remembering stuff

### Solution

* Use a technological or physical aid to keep track of your ideas and notes
* Make sure you **trust** your external brain, in order to free head-space
* Revisit your notes regularly
* Favor text-based formats, as they are easier to version, maintain and port
* Whatever system you use, make sure it is easily accessible, and non-disruptive to your primary focus

### Examples

There are many online (free and paid) systems that offer you a way to store your thoughts.
Some of them are listed below in the _references_ section.

You can use a simple text-based system to keep track of your thoughts, or ToDo items.
I personally prefer using these text-based systems as they allow for easier cross-platform portability, akd avoid you being locked in to a
single vendor solution. This entire knowledge base can be seen as one big "external brain".

### Personal testimonials / opinions

#### Stijn's developer logs

> [!TIP]
> One of my favorite ways of note-taking while working on a software project is to add a _`dev_notes`_ directory to my codebase.
> For short-lived projects or changes, I tend to add this file to the `.gitignore` configuration of my repository as to not muck up the
> workspace of my colleagues. For more long-term or collaborative projects, consider creating a dedicated repository to host all of your
> developer notes. You can get creative with `symbolic links` to make these folders show up in your codebase regardless of their
> physical location.

### References

| Item                                                                                                                             | Description                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| [Creating a personal wiki](https://www.asianefficiency.com/organization/a-simple-personal-wiki-with-voodoopad/)                  | Asian efficiency: Creating a personal wiki                                                           |
| [notion.so](https://www.notion.so/)                                                                                              | Online note taking                                                                                   |
| [Create a fersonal wiki using MS OneNote](https://cereal.baldwingroup.com/how-to-create-a-personal-wiki-using-microsoft-onenote) | Article by I. Humphrey n using OneNote as an external brain                                          |
| [NextCloud Personal data server](https://nextcloud.com/)                                                                         | DIY data and notes storing solution                                                                  |
| [TODO.txt format](https://github.com/todotxt/todo.txt)                                                                           | An open, text-based format for your TODO files                                                       |
| [Trambu](https://github.com/stijn-dejongh/TraMBU)                                                                                | My owm todo.txt inspired task-management application                                                 |
| [Emacs org mode](https://orgmode.org/)                                                                                           | A major mode for [GNU Emacs](https://www.gnu.org/software/emacs/), aimed at organizing your thoughts |

---


## Organize your workflow

### Context

### Drivers

* You want to finalize your tasks and "get things done"
* People are often distracted by their own thoughts
* Multitasking is hard. Our brains work better if we can compartmentalize between different modes of thinking
* Our memories are very lossy. We tend to forget about things all the time
* Standard To-Do lists have no readily available means of prioritizing items
* Having too many things on our mind stresses us out

### Solution

Use a personalozed productivity flow, using whatever tool you feel comfortable in.
For some, this will be a pen-and-paper system. Others prefer to leverage their digital prowess and lifestyle to have
theis productivity
tool available all the time[^1]. One of the most popular personal productivity methods is called the _"Getting things
done"_ method[^2].

![./task-flow.png ><](./task_flow.png ':size=684')

**Whatever method you choose, make sure to:**

* Have a specific location to dump out your thoughts
* You should **trust** your tools. Peace of mind only happens when you are convinced your ideas and todos are stored
  reliably
* Regularly review your braindump tool and curate it. Some of your ideas will be crappy. Get rid of them.
* Categorize and Prioritize your thoughts **after** you have collected them
    * The Eisenhouwer Matrix is an excellent technique to do this
    * differentiate between "things to remember" and "things that require action"
    * assign "due dates" if able

#### Eisenhouwer priority Matrix

![./eis_matrix.png <](./eis_matrix.png ':size=364')

Organize your action items according to:

* their **importance**: actions can be either `important` or `unimportant`
* their **urgency**: these are either `urgent` or `not urgent`

This leaves you with a nice 2-by-2 grid in which to place your actionable items[^3].
Each grid section corresponds to a specific way to handle the action items contained within:

- **eliminate of ignore** the things that are `unimportant` and `not urgent`. Because _Who cares abut these anyway?_ The
  items in this
  quadrant are better known as "distractions" or "busy work".
- **delegate** the `unimportant` and `urgent`stuff. Something should be done about them fast, but you probably don't
  need to be the
  person working on them.
- **plan / schedule** the items that are `important` and `not urgent`. These are the things that you would really like
  to do, but never
  seem to get around to doing. Setting a specific date on which you will act upon these items will help you get them
  done eventually. Just
  make sure to stick to your schedule.
- **Do these NOW!**: `important` and `urgent`... what are you waiting for? Start working on these immediately. Just make
  sure these
  things are important to YOU and you are not being swayed by someone else's urgency.

### Examples

#### Personal productivity flow using MS online tooling

In recent years, microsoft has pivotted towards providing office-as-a-service applications.
Most if these can be easily incorporated into your personal workflow. Having everything online makes it easier to be
productive,
without losing your mobility.

### References

| Item                                                                                                                   | Description                                                                                                                   | 
|------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| [Getting things done - David Allen](https://www.amazon.com/Getting-Things-Done-Stress-Free-Productivity/dp/0143126563) | Link to book (amazon)                                                                                                         |
| [NextCloud](https://nextcloud.com/)                                                                                    | A self-hosted personal filen organizer, and productivity platform.                                                            | 
| [Eisenhouwer matrix](https://www.productplan.com/glossary/eisenhower-matrix/)                                          | Article on ProductPlan.com discurring the Eisenhouwer matrix                                                                  |
| [Notion.so](https://www.notion.so)                                                                                     | An easy to use, external notebook that allows for limited automation and offering a wide range of customizability and plugins |
| [Trello](https://trello.com/)                                                                                          | A simple Kanban board to track your main tasks and their status                                                               |

[^1]: Unless of course your computers die and your internet connection goes on hiatus  
[^2]: From the
book ['The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change'](https://www.amazon.com/gp/product/0743269519?imprToken=u69OsCPq-VHBYc7olPiAPA)
by Stephen R. Covey  
[^3]: Mathematicians (and computer programmers) call this a _"Matrix"_. We are sorry to disappoint you if you expected
leather clad
martial artists to help you out with setting your priorities.

---




## OPERAs method

### Context

> A mental model to work towards task progress

More often than not, people tend to have a big list of things they would like to get around to doing. Finding out how to make progress
towards a specific goal can be quite challenging. In order to help with this endeavor, the OPERAS mental model can be useful. This is a
general purpose pattern to frame progress towards a specific goal by using the _"divide and conquer"_ technique and a clear checklist-style
plan of attack.

The core idea is to give pattern users a mental map of the different actions that are required to complete a 'milestone'.


### Drivers

- you want to keep tabs on the status of various goals and objectives, by using the step names as status indicators
- having a clear idea of progress made, when combined with the KPI pattern
- split big goals into bite-sized chunks
- stay committed to your goals without feeling like you are drowning in a never ending cycle of irrelevant 'side quests

### Solution

The OPERAS mental model is a description of the flow you go through when advancing a task from "TODO" status to "DONE". A task can be of any
size, and can range from 'build a house' to 'do the dishes'.

- define a goal you wish to work towards
    - It is best to describe this goal in a measurable way, so tracking progress is easier in the future
- when working towards a goal, starting from a 'to do' state, you perform a series of steps in order
    - for some processes, a few of these steps could require very minimal effort.
- the acronym 'OPERAS' stands for the main steps in this model's flow:
    - Orientate
      - Prepare
      - Execute
      - Reflect
      - Adapt
      - Synthesize

![The OPERAs flow >](./OPERAs.png ':size=424')

<div class="accordion">
<details>
<summary>1. Orientate</summary>
<p>
Just like when finding your way through unknown territory, it is best to take in the landscape and plot your next sensible move forward.
The idea is to think about the goal you wish to reach and figure out if there are any smaller milestones to reach in order to work towards your goal.
An example: if you were to want to have a clean house, you could divide this into the cleaning of each room, doing the dishes, and taking care of the garden.
Each of these sub-goals is a milestone to be reached in order to get towards your desired outcome.
</p>
</details>

<details>
<summary>2. Prepare</summary>

<p>
The preparation step is where you gather the tools needed to perform the action. These can either be physical assets, pieces of knowledge, or people whose assistance you need to enlist. This step is the transition between the more strategical aspects of your process to the practical execution of one of the milestones. Ask yourself: _"What do I need to get the started?"_, and then gather the resources needed to go ahead.

> [!WARNING]
> The most common risk in this phase of the process is to over-analyze the situation. This anti-pattern is known
> as _"[analysis paralysis](https://www.investopedia.com/terms/a/analysisparalysis.asp)"_ and is extremely detrimental to making progress.
> Be sure you only identify the minimal set of required resources you need to START progressing. You can always loop back, and search for
> additional resources when they are needed.

> [!NOTE]
> An example: You wish to do the dishes, so you check that the dishwasher is not obviously broken.
> Then you go around the house and gather all the dirty utensils and plates you can find. The preparation step ends with a pile of dirty
> dishes on your kitchen counter.
</p>

</details>

<details>
<summary>3. Execute </summary>

<p>
You set out and do the task you intended to do. This is the operational phase of the process. You work on completion of the next sensible step to reach your first milestone.

> [!INFO]
> An example: You load the dirty plates and cups into the dishwasher.
</p>

</details>


<details>
<summary>4. Reflect</summary>

<p>
At this point, you have finished working on one of the sub-tasks you set out to complete. Either the result was satisfactory or it was not. Either way, there are likely things that went well, and things that did not go well. Use these experiences as a learning mechanic to improve the way you approach tasks in the future.
This is also an excellent time to revisit the original outline of the task distribution to see how to proceed.

> [!INFO]
> An example: You were not able to do all the dishes as they would not all fit into the dishwasher. You also realized 40% of the time you 
> spent on doing the dishes was used to collect the dirty plates and cups from all around the house.
</p>

</details>

<details>
<summary>5. Adapt</summary>

<p>
After reflecting on the actions taken and their outcomes, you can choose to adapt your approach using the insights you have gathered. This can either mean changing your approach entirely, or making small adjustments to the operational execution of your task.
An example: You could wash some of your dishes by hand, as it will not take significant time to do so. Waiting for the dishwasher to complete before loading the next batch of dishes would just move the problem to the future.

> [!INFO] 
> **INSPECTION: is progress made?**  
> Is the sub-goal completed? If not, is it still useful to complete it? If it is: proceed to the next action that works towards its
completion. If not: do something else.
</p>
</details>

<details>
<summary>6. Synthesize</summary>

<p>
After a milestone is reached, you can choose to synthesize the lessons you learned from this process. You could write down some key insights for future reference. 
In a social context, you might even share your insights with others, so they can learn from your experience.

Note that indirect learning is not for everyone, and others might repeat some of the mistakes you made. Even so, armed with your story, they
might know a few coping strategies to resolve the situation in case it goes bad.
</p>
</details>

</div>

### Measuring success

- While working towards a goal, you can measure your progress in a numerical manner, if the goal so allows.
- Are you reaching more milestones?
- Do you feel like you are more productive?
- Do you have an enhanced sense of purpose and/or productivity?

### References

| Item                                                                                                           | Description                                                                                  |
|----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| most agile frameworks                                                                                          | the concepts of `increments`, `reflection` and `adaptation`                                  |
| A. Hunts [GROWS method](https://growsmethod.com/) for digital transformation                                   | A well thought-out phased improvement track for knowledge workers and software professionals |
| KPIs and OKRs                                                                                                  | useful to measure progress                                                                   |
| the ["external memory"](/2_Productivity/Patterns/Practices/HOME?id=free-your-mind-the-external-memory) pattern | keep track of your goals, tasks, and progress                                                |
| the "dream game" pattern by [Matt Barnes](https://theeducationgame.com/coaching/)                              | A nice way to figure out what you are aiming to achieve                                      |

---


## Engaging retrospectives

### Context

> A retrospective, generally, is a look back at events that took place, or works that were produced, in the past.

Hosting a useful retrospective session is quite difficult. You aim to have a group share their frustrations, obstacles, and
share knowledge about what went well. One of the risks of having a static retro format, are that teams lose interest in the sessions, and
are less engaged during the meeting.
We aim to avoid this staleness by varying the "theme" of the retro, while keeping the general structure the same.

Every group can employ slight variations on the approach used, based on a similar template.
The aim of these alternating retro formats is to stimulate constructive communication between team members.While the team lead or management
are present during the discussions, and have the final decision on actions proposed, they should refrain from taking an authoritative
position during the retro.

### Drivers

- You are helping a team or project being in a rut, going through the motions without engaging or following-up on issues and frustrations.
- We can only start improving the situation once we know what is going on
- People perform better when they feel involved in their work
- Most people are intimidated by authority
- People do not like to feel ridiculous and want to be taken seriously

#### Enablers

- Team/Management is willing to try, and dedicate time to improve their process
- Trust in the intentions and skills of the facilitator or person taking the initiative
- Team members feel safe to share their opinions without fear of reprisals

#### Deterrents

- The group has no motivation to experiment with alternative ways of working
- You are operating in a low trust, high conflict environment
- You can not invest the time to be a driving force of change

### Solution

* Gather the team, and openly discuss what it was like to work together over the past X weeks.
* Pocus on making sure every voice is heard, and the discussion is not dominated by a couple of strong-willed individuals

> "A plan or framework is very useful, as you need something to adapt and deviate from as you gain experience."
> ~ Paraphrased quote by [Rini van Solingen](https://rinivansolingen.nl/)

The sections below are intended as a starting point for hosting your own retrospective sessions. You are obviously welcome, and even
encouraged, to adapt them to fit your group's specific needs. We do recommend giving the described structure a try first, to get a feel for
the practice before changing it.

#### Retro participant roles

<!-- tabs:start -->

##### **Facilitator**

Guards the integrity of the retro. He/she is the timekeeper, and the lord-and-master of the retro. During the retro, this person is allowed
to overrule any participant or tell them to shut up (Even if they are their superior in the group hierarchy).

> From personal experience, the person executing this role is more effective when not participating in discussions or votes. The downside of
> sitting out the session is made up for by rotating this role.

##### **Participant**

Joins the retro, raises issues (tickets/stickies, etc), votes on discussion points, engages in constructive dialogue.

##### **Observer**

> "You can sit in the room/meeting/call, but you are not to speak"

Is invited to listen to the retro, but does not participate.
If an observer does not stick to their accepted role, the facilitator should give them the choice between switching to a participator role,
or leaving the meeting.

##### **Scribe**

**can be combined with any other role**

Responsible for taking notes on discussions and actions taken.Personal experience teaches that this is best combined with the roles "
Facilitator" or "Observer".

<!-- tabs:end -->

#### Retro structure

When using a specific retro theme, feel free to tell a small story (1-2 minute fluff). Bonus points for everyone that looks amused.Verify
everyone understands the goals and outline of the retro.

<details>
<summary>1. Set the stage</summary>
<p>

Welcome the participants, reiterate the goal of the retro:

- constructive dialogue
- evaluation of previous actions (if not first retro)
- definition of safe-to-fail experiments (actionable items)
- consensus based assignment of accountability for actions to be taken

When using a specific theme, feel free to tell a small story (1-2 minute fluff). Bonus points for everyone that looks amused.Verify everyone
understands the goals and outline of the retro.

</p>
</details>

<details>
<summary>
2. Warm up (~5min preparation)
</summary>
<p>

Goal: get people talking, break the ice.

You can do this by going around the table and check on with everyone.
If _"how are you feeling right now?"_ is not a comfortable question, change it up a bit.
There is a wide selection of icebreaker exercises that can make this process more comfortable and enjoyable.

We have had good results with:

- _"What is your favorite movie, and why?"_
- _"Tell us two things about yourself that we did not know"_
- _"Who is your favorite pirate?"_
- _"What was your favorite childhood game?"_

</p>
</details>

<details>
<summary>
3. Personal preparation of discussion topics
</summary>
<p>
Reflection on the work performed in the time since the past retro (or the past X days, if this is the first retrospective in a while). Participants are to write down their thoughts without speaking to each other.
In general, the group aims to answer (some of) the following questions:
- What went well?
- What did not go well?
- What should we start/keep doing?
- What should we stop doing?

Reflection, and writing down feedback is usually guided by the theme of the retro.
You can mix up the format a bit, and change the questions or "sticky-note categories" from time to time.
This generally helps keep things fresh. You might also notice that responses vary quite a bit, when using a differently phrased prompt.

**Important to note:** when raising a personal experienced issue, participates are not expected to also have a solution ready.

> There are a lot of resources out there to help you. Take a look at the _"references"_ section below to dig for cool ideas.

</p>
</details>

<details>
<summary>
4. Round-table presentation of possible topics
</summary>
<p>
- All participants present their topic/thoughts/feedback and add their sticky notes to the shared retro board
- These topics should only need 2-3 sentences to outline their intent
- Be as time-efficient as possible here! The value is in the discussion in the group, not so much in presenting the possible topics.

> When using a digital retro board, participants are to prepare their points on their own machine (notepad, zim, word document, ...) so the
> text can be copy-pasted during the presentation of topics, instead of typed out

</p>
</details>

<details>
<summary>
5. Reducing ticket count / Grouping
</summary>
<p>
Link related tickets, in a consensus-based way.
The group may decide to give the facilitator the trust to handle this without much discussion for efficiency reasons.
</p>
</details>

<details>
<summary>
6. Voting
</summary>
<p>
- Participants receive a number of votes (based on amount of tickets, and participants)
- Each person may spend multiple votes on a single ticket (e.g. they only care deeply about one topic)
- When voting, it is advised to not spend votes to indicate agreement with a topic/opinion. Only vote on the items you wish to discuss as a team.
- Special rules can be added to the voting process ( e.g. "Everyone must spend at least one vote on a ticket in category X")

After voting is completed, the tickets are ordered by amounts of votes in descending order.
This means the most voted-upon topics are at the top of the discussion list.

</p>
</details>

<details>
<summary>
7. Discussion and consensus-based action definition
</summary>
<p>
- Start with the highest voted topic (In case of a tie, the facilitator picks a starting topic)
- The person who added the ticket shortly introduces the discussion topic
- Everyone is invited and expected to actively participate during the discussions
- The facilitator can elect to ask somebody's opinion if they notice a certain participant has been quiet for a while (or they know this person has something of value to add to the dialogue)
- The goal of the discussion is to define an actionable item or safe-to-fail experiment, or to agree that no action is needed.

> **PRO-TIP:** Timebox discussions, using a pomodoro technique
> To ensure a good pace, you can use the _"pomodoro technique"_ to timebox discussions.
> The facilitator sets a timer for the first round of discussion. When the timer expires, the group votes to continue the discussion or move
> to the next point. If the discussion is continued, a new timer is set (using a smaller timebox).
> Repeat until the group decides that the raised topic has been resolved.

</p>
</details>

<details>
<summary>
8. Wrap up
</summary>
<p>

Reiterate over the key points of the different discussions and the actions that were proposed.
As a group, ask for volunteers to take ownership over the actionable items.Note that this does not necessarily mean they have to do all the
required work, they are just accountable to ensure that the team follows up on the action.

> Once the actionable items are all assigned, it is advisory to go over the action list again.
>
> Because, repetition works.  
> Also, repeating stuff helps people remember it.  
> And on top of that, repetition works.

</p>
</details>

<details>
<summary>
9. Checkout
</summary>
<p>
Go around the group and ask how each participant experienced the retrospective. Do they feel more energetic/motivated?
Do they have anything that is still on their chest? 
Thank everyone for attending and participating.

Closing statements by facilitator/team lead can happen here.
Leave some room for general messages or updates.

</p>
</details>

<details>
<summary>
10. Follow-up
</summary>
<p>
The facilitator (or person assigned to take notes) creates a write-up of the retrospective discussion and the actions to be taken. This write-up is shared with the team.

> Since the write-up consists of the actions agreed upon by consensus, every team members is encouraged to read through the write-up and
> validate it is consistent with the discussion that took place.  
> A good way to do this is to add a small "Acknowledge" section to the document and ask everyone to sign the write-up. Basically similar to
> the "Read and approved" section in some legal documents.

</p>
</details>

### Measuring success

- The group is engaged during the sessions
- Multiple voices are heard
- You are able to stay within the assigned timebox most times
- The actions decided upon during the retro are executed

### References

| Item                                                                                                                | Description         | Action                                                                   |
| ------------------------------------------------------------------------------------------------------------------- | ------------------- | ------------------------------------------------------------------------ |
| [FunRetrospectives.com](https://www.funretrospectives.com/)                                                         | Paulo Caroli && al. | Get inspired by these plug-and-play mini-themes and icebreaker exercises |
| [Agile retrospective ideas to keep your team engaged](https://miro.com/guides/retrospectives/ideas-games)           | Michael de le Maza  |                                                                          |
| [40 ideas to spice up your retrospective](https://agilestrides.com/blog/40-ideas-to-spice-up-your-retrospective/)   | Ralph van Roosmalen |                                                                          |
| [ 11 Ideas to Spice up Your Retrospective ](https://www.scrum.org/resources/blog/11-ideas-spice-your-retrospective) | Barry Overeem       |                                                                          |
| [ Sprint retrospectives ideas ](https://easyretro.io/retrospective-ideas/)                                          | Various authors     |                                                                          |

---
