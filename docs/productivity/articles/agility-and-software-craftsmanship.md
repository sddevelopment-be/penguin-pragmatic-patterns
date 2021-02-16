### [Article] Back to the basics of agile software development

![A stylized Death Star persiflage of the old Scrum logo](img/blog_agile_is_dead.png){ width=50% }

| Property | Value |
|---|---|
| Published on: | 2020-05-04 |
| Author: | Stijn Dejongh |
| Original title: | Pragmatism and Software Craftsmanship |

#### Introduction

Not so long ago, in development teams all over the world, methodologies of ‘ye olden days’ are popping up.
Project managers and senior developers are rediscovering the written wisdom of the giants in our fields. Past ideas have been given a second life.
Alongside, newer derivative systems are emerging. Clever marketeers have found a way of selling their variations of agile processes as a silver bullet solution for struggling teams.
Within this turmoil, a brave alliance of underground freedom fighters is challenging the tyranny and oppression of the awesome AGILE EMPIRE.

#### A new hope: agile software development

In the world of software development, there is an undercurrent of people that believe that _"if we can just find the right system, everything will go perfect"_.
If anyone ever manages to come up with the perfect cut-and-paste methodology that can be applied to any failing software project, and instantly transform it into a high-performing
team, they will make millions if the marketing is adequate.

For the last couple of years, methodologies of _'ye olden days'_ are popping up left, right, and center. Project managers and senior developers are rediscovering the written wisdom of
giants in our field. Past ideas such as 'pair programming', 'XP', 'Scrum', and 'Kanban' have been given a second breath of life. Alongside them, newer derivative systems such as 'DevOps' and 'SAFe' have emerged.

The downside of this resurgence is the incremental pollution of the original values of agile software development due to claims of one-size-fits-all solutions. Clever marketeers have found a way to sell their variations of agile processes as a silver bullet solution for struggling teams. In this article we will take a look at the original values, and mix them with my personal observations and opinions. 

For those of you that are unaware of the origins of Agile Software Development, I'll start with a very brief look at the history of agile software development.


##### The origin story of agile software development

Around the start of the new millennium, the software industry was being frowned upon. First there was the dreaded 'millennium bug', that exposed hundreds of thousands of shortcuts taken by developers over the years.
The result was that a lot of companies and governments were not sure their software would be able to cope with the new date that ended in double zeroes. 
Representing dates in software code has always been a challenge. Just before New Year's Eve 2000, auditing companies around the world started reporting that the majority of software solutions were likely going to crash and burn.
  
The reason for this was that a bunch of developers had used the last two digits of the gregorian calendar's years in date representations and calculations. This meant that affected software would assume the current year was actually '1900', instead of '2000'. This led to the world as a whole looking at our cozy IT bubble with a magnifying glass. 
Stories of projects gone bad, expensive bugs, and movies demonstrating how the world would basically end if we did not get our stuff together, came to the foreground of news reporting.

The increasing scrutiny, and the general feeling of discontentment with their current processes, led to a few bright developers creating their own systems.
These systems were a structured bundling of the lessons these development gurus had gathered over many years of their professional careers.
As with all thing IT, debates began about which system was the best. Developers all over the world started looking for the _"one system to rule them all"_.

Responding to this, that bright few who created the most popular systems, decided to get together at a ski resort to discuss their shared beliefs. 
This free-form discussion ultimatly resulted in [The Manifesto for Agile Software Development](https://agilemanifesto.org/). One of them made a simple website with nothing more than their four core beliefs,
and a set of complimentary principles that demystify the four core beliefs. The development world jumped on this wisdom like a pack of starved dogs on a steak.
The manifesto and principles started to become revered as the Holy Bible of software development. The values and principles were regarded as commandments, more so than a set of good advices.


##### Our hero is defeated by its own success! 

At first, it were mostly software developers that bought into the manifesto. They held conferences, and tried to deliver software in a better and more relaxed way.
The few, who were allowed the freedom to work as they pleased, reported good results. Fast forward a decade or two, and we see an abundance of agile consulting firms.
Each offering training in their "optimized method of agile". The agile movement started feeling more and more like an industry of cultist preachers, like you would see on american tv,
than as a group of developers trying to deliver good software. Many of these consulting firms market their agile methodologies as the end-all-be-all of project management.
As such, a lot of project leads and managers got very interested in these methods that claim the team will be able to cope with any change of requirements, will always have good estimates,
and always deliver on time, no matter what happens or who leaves the team. I must admit it sounds like a wet dream to professionals in a leadership position.

Nowadays, other industries are buying into the agile hype. **And they are buying in hard!**
You see companies rolling out their own version of SCRUM with their company branding and flavor applied to it.
Some use these processes as their core selling point to customers: _"We are different, we are Agile! So we will always deliver on time!"_.
People that look for a job in the software industry are routinely asked if they have experience with Agile/SCRUM/Kanban.
Saying you have experience with these methods has become a big competitive advantage for both companies and individuals.

The downside of all of this success is that the big majority of Agile practitioners have never heard of the original manifesto, or the values it champions.
They have no clue that the original idea was to provide a framework for a personal creed and a way of working specifically aimed at developers.
Instead, we ended up with the rigorous application of as many SCRUM "ceremonies" we can cram into our days, a plethora of competing certification systems, 
and a bunch of gurus claiming their flavor of SCRUM is the only right way to do software development.   

Recently, my developer heroes, the pragmatic programmers ( [Dave Thomas](https://pragdave.me/) and [Andy Hunt](https://toolshed.com/)), have started proclaiming they regret how popular the 'Agile' system they co-created has become.
Dave gave a very insightful and interesting talk on the subject at the GOTO conference in 2015, basically pleading for people to stop sheepishly following the latest and greatest flavor of SCRUM, and to grab back to the original values of the Manifesto.  

[![Dave Thomas GOTO talk](http://img.youtube.com/vi/a-BOSpxYJ9M/0.jpg)](https://www.youtube.com/watch?v=a-BOSpxYJ9M "Dave Thomas GOTO talk")

#### The manifesto strikes back

I fully agree with Dave when he says that the branding of Agile has taken a turn for the worse.
Let's take a look at the values that were championed by the original authors of the Manifesto for agile software development, as
published on [agilemanifesto.org](https://agilemanifesto.org/). The authors of the manifesto discussed for days to find the perfect wording,
they refactored their initial text countless times to come to a manifesto that had "all the right words, in all the right places".
This is the reason that their website contains the line _"this declaration may be freely copied in any form, but only in its entirety through this notice"_. Unfortunately, the last sentences and the header of the text are often omitted or regarded as of little value.

##### The original values

I will dissect the values from the original publication, and offer some personal annotations to them. 

> We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:

The authors are addressing software professionals that are looking for guidance to write good software. 
With this paragraph, the authors are clearly demonstrating that the set of high-level values that follows originates from personal experience in the field.
As we mentioned before, these are personal beliefs and values to be applied when the situation calls for it, not holy commandments.

> Individuals and interactions over processes and tools

It's great to have tools and processes that help your team communicate in a structured and clear way.
The idea of speaking the same language, and using the same formats, is of great value to teams far and wide.
The downside of this way of working is what we in Belgium call the _"Over the wall"_-principle. It means that an individual in a team does not feel like part of a team, just does what he is asked, and then throws the task over to the next person (on the other side of the wall).
Ticketing systems are notorious for enabling this behaviour. If you ever hear the words _"The ticket isn't formatted correctly, so I am not able to help you"_, chances are you are working in somewhat of an "over the wall"-process.
Even teams that claim to _be doing agile_ often fall into this trap. They tend to be overly reliant on their tooling (jira, kanban boards, excel sheets, ...) and lose focus of what these tools are there for: **communicating with each other**.

The authors of the manifesto say they believe that simply talking to each other, being open in your communication, and informally sharing ideas, make for a more efficient and relaxed way of sharing information.
The back and forth dialogue that results from just speaking to each other often uncovers hidden, or unspecified knowledge. In more formal systems, information that is missing grinds the process to a halt: analyses have to be redone, the specs needs to be rewritten, etc.
If our core process is to have more **casual and honest conversations** about what we are doing, such **costly mistakes can easily be avoided**. 

> Working software over comprehensive documentation

At the end of the day, we want to build something that works. In certain methodologies, schematic drawings, long functional descriptions, and presentations about software that does not exist yet, are seen as deliverables.
This means that a large part of what the client expects and pays for is highly detailed documentation. The question rises if this really brings value to them. Would they be better off if you invested that time spent on documention
in writing code for a piece of the application they hired you to build?  Sometimes development teams spend more time on keeping their documentation up to date than on actually writing code.
That sounds like a team which has their priorities messed up, doesn't it?

> Customer collaboration over contract negotiation

This core value is, in my opinion, a logical consequence of combining the first and second values and applying them to interactions with your client instead of interactions within your team.
Some projects start with having all the requirements pinned down and checked off by the client. They then dive into their coding den and start churning out code and documents.
Months (or years) down the line, the specifications have all been met, and the project can be presented to the client. It is often at this time the client realizes that they had other expectations of the software.
This is followed by back and forth bickering, along the lines of: _"This is not what we paid you for!"_, _'Yes it is! Look, we have it in writing, and your signature is on the bottom of the page'_, and so on.

What matters most is that the customer is satisfied with the software you deliver. Whether that corresponds to what they originally asked of you or not, is not very relevant at the time of delivery.
A satisfied customer will write a good review, or recommend you to their peers. A customer that is strongarmed into accepting and paying for something they did not want, will not be inclined to give you the same courtesy.
The question here is _"what hurts you the most?"_. Is it putting in extra effort to make sure the client is happy, or dealing with a bad reputation down the line?
 
> Responding to change over following a plan

Again, as in good code, the 'read down principle' is applied again. Again, this core value is a more specified version of the one before it.
If you are collaborating with the customer, and showing them your progress on a regular basis, they will often times come up with alterations to the original specifications.
_"Oh that's cool! You know what would make it even better?  If we also added X and Y to this module, because it's very similar from a business perspective."_
Responding to feedback like that, and making changes to your plan help you keep your customer pleased with your work. If you are willing to deviate from the "6 months plan" when the customer requests it,
you will be building a solution that they will be happy with. 

Other times, the customer changing their minds is not the only driver for change. Occasionally, your developers will discover that the framework they started using two weeks back is actually impeding their progress.
The framework might even make it impossible to satisfy the next planned customer request. It's in times like these that you will end up delivering more value, by changing your course.
Note that "responding to change" does not mean that the team will be able to deliver any random idea the client has. **Time and effort** are still a reality.
If _"being able to deal with anything, and still deliver on time"_ is why you started using an agile approach, you will be very disappointed or end up with mountains of software rot that grinds your project to a halt sooner or later. 
(let's not even think about developers running away to competitors because they are fed up with management's unrealistic demands.)
 

> That is, while there is value in the items on  the right, we value the items on the left more.

In my opinion, **this is the most important sentence from the original text**. Unfortunately, it is the one most often forgotten. 

The examples and notions I wrote down are simplifications of reality.
Aiming to have more direct communication, having working software, _working with_ instead of _fighting against_ your customers, and being adaptable, are things to strive towards.
This does not mean that having a contract in place, having some formalized processes, or even having a plan should be avoided altogether. Those things are also very valuable.
[Rini van Solingen](https://rinivansolingen.nl/) phrased this point very well: _"It is important to have a plan, because you need something to deviate from"_.
You **need** a general outline, a map with a general direction to steer the ship towards. That does not mean you should sail into that huge iceberg, just because the map says that is the intended course. 


#### How can we improve our process?

We started to notice that the combination of agile approaches and our modern _cut-and-paste_ way of applying best practices can be a recipe for disaster.
In this section, I will take lessons from the concepts of pragmatism and craftsmanship to try and propose a different way of applying agile approaches. 

##### A Pragmatic Paradigm

A _"paradigm"_ is a fancy word for "point of view". It is the belief system that you hold and use in order to make sense of what is happening around you.
You can look at it as walking around in an unknown city, armed with a town map. If the map is not sufficiently accurate, you will find yourself ending up in the wrong place.
You might even end up driving into a lake if the map is inaccurate, digital, and talks to you.

The word _'Pragmatic'_ originally means "skilled in business". You can interpret this as  thinking about the added benefit (return on investment) of an action before deciding to do it.
A pragmatist will take pieces from various toolsets and methodologies, and apply them to the problem at hand only if it makes sense to use them.
This means that even if a new software architecture is really hip, you would look at the issue you are trying to solve first and see if the new approach is worth doing.

> Take what you want, destroy the rest.
> ~from McCade's Bounty - William C. Dietz

A few years ago [blockchain](https://en.wikipedia.org/wiki/Blockchain) was all the rage. Many leading technologists wanted to use it on their projects, just to add a fancy buzzword to their sales pitch or resume.
Back then, you would find articles all over the place claiming blockchain technology would solve any technological issue. In the end, a lot of time and effort was put in by developers, only to realise that their software had not become better by the inclusion of the new technology.
Sometimes their software turned out to be slower, more expensive, and more confusing to their users. A pragmatist would likely have hesitated to jump on this hype train.
he, or she obviously, would not do something just because everyone else is doing it. They would not use a technology if it added little value to the project they were working on. 

Put the words _Pragmatic_ and _Paradigm_ together, and you know what I am getting at. Pragmatists look at processes, tools, frameworks, and life in general with an open mind and buy in to the things which help them progress, but change and amend the practices that deliver little value. 

##### Mastery and Craftsmanship

To get to the bottom of the problem with blindly following advise from external experts, it's valuable to understand how one acquires skills.
The Pragmatic Programmers (Dave and Andy) often use the metaphor of _workshops for craftsmen_ in their publications to this end.
People who view their vocation as a craft understand and appreciate that they will have to put in significant effort to excel at their jobs, they see themselves on the long road towards mastery.

We see this theme in the [Dreyfus model of skill acquisition](https://en.wikipedia.org/wiki/Dreyfus_model_of_skill_acquisition). 
Everyone starts of as a _'Novice'_ and as their skills progress they go up in level. A select few will eventually reach the level of _"Expert"_ through hard work, commitment, and dedication.
Note that while someone might be an expert in one area, he can very well be a novice in another area.
The main difference between the lower and upper end of these levels is how they look at challenges, and how they apply their knowledge.

An expert will choose his approach mostly subconsciously, because it _"just felt like the right thing to do"_. Experts have the ability of putting their current task within a broader context and come to an adequate solution without the needed for overly analysing the situation.
**Context** is a word of crucial importance here. It is the ability to identify the context of a task that allows experts to know which solution is just right for the current problem. 
They will instinctively know which alternative is likely to only make matters worse.

Inexperienced practitioners of a craft (the workshop novices of olden days) are pleased when someone provides them with clear-cut instructions, especially if they've heard applying these instructions will lead to certain success.
Remember what I said earlier about those agile prophets jumping out of the woodwork? Let's be very clear here: no one can tell you what to do in your specific personal context, regardless of your skill level.
There is no other team out there that is the same as yours. No other company is a carbon copy of yours. There is no project that is identical to yours.
Practices that have worked out great for other projects, might explode in your face. Their context is probably just not right for your specific situation. You need to adapt these successful practices to fit your context. 
Having someone knowledgeable around to help identify the processes that need customizing is highly valuable, but very rare. 

| Skill Level/Mental Function | 	Novice 	| Advanced Beginner 	| Competence 	| Proficient 	| Expert | 
|---|---|---|---|---|---|
| **Recollection** | Non-Situational | Situational | Situational | Situational | Situational | 
| **Recognition** |	Decomposed |	Decomposed |	Holistic |	Holistic |	Holistic |
| **Decision** |	Analytical |	Analytical |	Analytical |	Intuitive |	Intuitive |
| **Awareness**  |	Monitoring  |	Monitoring |	Monitoring  |	Monitoring  |	Absorbed | 


Pragmatism and craftsmanship closely relate. Most people that climb to higher levels of mastery tend to follow more pragmatic approaches. 
It is my personal belief that an eclectic combination of practices is the way to go to achieve better performance on your current project.
It boils down to: _"Don't just do things because some consultant or book says you should do them"_. Always be mindful of your context, and apply those practises that bring value. 
In order to know which practices are helpful, it is important to understand where they originated from, and the problems they aimed to solve.
**Understand the WHY, before worrying about the HOW!**

> Always consider the context.
> ~Andy Hunt, Pragmatic Thinking and Learning: Refactor Your Wetware

I would advise you to also look for contextual knowledge in the business domain of your clients. If you understand why your client wants something, you are often able to suggest a more valuable alternative to the task they just asked you to complete.
You could respond to their request with: _"It would be very expensive to build your application that way. But if I understand your need correctly, doing XYZ might also solve your issue at a much lower cost."_

If you find yourself on a project that is more likely to jump onto the next _hype train_ that rolls into town instead of looking for ways to improve your current approach,
remember that eventually you will run into serious problems. It is then up to you and your peers to try and make the best of the situation. 
You could try to convince your management to improve the existing processes, instead of restructuring everything because it is the trendy thing to do. 
This way, you can steer your project towards the path of pragmatism and continuous improvement. 
If that fails miserably, you always have the last resort of hauling ass and looking for a less whimsical environment.

##### Knowledge to take with you

The most important lesson to take away from this article is that **context matters**.
External advisors and consultants might have a very deep understanding of a specific process, but they have little knowledge of your team, company, and the issue you are trying to solve.
If you want to make your project operate more efficiently, or get out of the mess you've gotten yourself into, **you and your team** will have to do most of the heavy lifting.

Adding experienced and skilled people to your team can help you gather new knowledge and practices. These people are invaluable as they have seen what works and what does not in different environments.
If these people stick around on your project for a significant time, and are activly involved in your process, they might uncover some inefficiencies or _'weirdness'_ in your approach.
Team members that have been on the project for a long time can likely tell you why your team is currently doing things the way you are. These senior members can also provide you with knowledge of the business processes of your clients, and the history of your project.
Information such as _"We tried  to switch to a different server technology five years ago, but in the end the change did not go through because the client has very specific privacy requirements"_ can help you narrow down
 which of the alternatives you are thinking of is actually viable.
 
When you are the experienced person to join a team, be mindful of your own biases. Remember that the things that have worked well for you in the past might not work in your new context.
You need both a fresh set of ideas, and the knowledge of the people who have been on the team for a long time.
The great paradox here is that the persons who have been on a team for a long time are usually the least likely to welcome change. 
They are also the ones with the most valuable knowledge to make the new idea work. When you try to introduce a new approach to a project, be sure to include these people in your quest.
 
If adding experienced practitioners to your team is not an option for you, employing consultants on a short-term basis or following a training seminar might be more viable.
Just remember that if you do choose this option, it is up to you to understand the approaches they are trying to sell and the problems those approaches can solve.
These consults and training seminars are useful to change your perspective of things, and to show you possible alternatives to your way of working.
Armed with this knowledge, you can go back to your daily tasks and be mindful of inefficiencies. 
Maybe that _"Test Driven Development"_ training you took a few months ago was on to something, and maybe applying those practices will help our team produce less bugs and miss less deadlines.

You can always start trying a new approach. If you continually evaluate if it is helping your team, or rather slowing it down in the long run, you will know whether to keep the process or not.
The core values of the [The Manifesto for Agile Software Development](https://agilemanifesto.org/), and it's [twelfde principles of agile software](https://agilemanifesto.org/principles.html) are a great point of reference if you are in doubt of what to try next.
But remember they are **references and advise**, not the law. 

**Listen to your team, gather ideas from skilled people (internal and external), and be on the lookout for improvements to your process.
But most of all, care deeply about what you are doing.**

#### TL;DR

* _"doing Agile"_ will not fix all your problems
* just because some company is successful while doing something, does not mean you will be successful if you blindly copy their approach, Consider the context.
* experienced people use the tools and processes that make sense to **their project**, **their team**, and **their corporate environment**
* time is your friend
* If you aim to master your chosen craft, be pragmatic, motivated, and keep exploring!
* If you are in a leadership position, **attract and hire motivated people who care about their craft**. They will bring greater value to your project than any process or management hype could hope to ever do.
* Listen to your team, gather ideas from skilled people (internal and external), be on the lookout for improvements to your process.


#### References and Further reading

If this overview of agile software development and craftsmanship has inspired you to read more about the subject, I invite you to take a look at the books and video material I based this article on.

| author | year | url | title | location | publisher |
|---|---|---|---|---|---|
| Beck, K; et al | 2001 | [agilemanifesto.org](https://agilemanifesto.org) | Manifesto for Agile Software Development | Public Domain Internet | Ward Cunningham |
| Dreyfus, Stuart E; Dreyfus, Hubert L | 1980 | [http://www.dtic.mil](http://www.dtic.mil/cgi-bin/GetTRDoc?AD=ADA084551&Location=U2&doc=GetTRDoc.pdf)| A Five-Stage Model of the Mental Activities Involved in Directed Skill Acquisition | Washington, DC | Storming Media |
| Hunt, A | 2008 | [pragprog.com](https://pragprog.com/book/ahptl/pragmatic-thinking-and-learning) | Pragmatic Thinking and Learning: Refactor Your 'wetware' | online publishing, USA | Pragmatic Bookshelf |
| Hunt, A; Thomas, D | 2019 | [pragprog.com](https://pragprog.com/book/tpp20/the-pragmatic-programmer-20th-anniversary-edition) | The Pragmatic Programmer, your journey to mastery | Boston, Massachusetts, USA | Addison Wesley/Pragmatic Bookshelf |
| Hunt, A; Subramaniam, V | 2006 | [pragprog.com](https://pragprog.com/book/pad/practices-of-an-agile-developer) | Practices of an Agile Developer | online publishing, USA | Pragmatic Bookshelf |
| Hoover, D; Oshineye, A | 2009 | [oreilly.com/library](https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842/ch01.html) | Apprenticeship Patterns: Guidance for the Aspiring Software Craftsman | Sebastopol, CA, USA | O'Reilly Media, Inc |
| van Solingen, R | 2019 | [talk on youtube](https://www.youtube.com/watch?v=z8gTFDY9Lj8) | De Kracht van Agile (8 ankerpunten voor de praktijk) | Delft, NL | Agile 2019 talks - distributed on youtube.com |
