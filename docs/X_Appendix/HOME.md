# X_Appendix

# CHANGELOG

## Keeping a Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Following changes are known:
  - **Added** for new features.
  - **Changed** for changes in existing functionality.
  - **Deprecated** for soon-to-be removed features.
  - **Removed** for now removed features.
  - **Fixed** for any bug fixes.
  - **Security** in case of vulnerabilities.


## Changes

### v2.0.0

#### Changed
* Restructured Content to fit the docsify structure
* Rearranged hierarchy to be domain-based over type-based
* Structure descriptions

#### Added
* Docsify deployment config
* New project banner image
* Glossary and Sidenav plugin
* Cover page and logo
* Reading list
* Sidebar dircetory markings (arrows)
* Patterns on Learning: ShuHaRi and Dreyfus
* Patterns on leadership: Lewin's leadership styles

#### Removed
* Dockerized document generation support
* Javascript slideshow library (for now)
* Unneeded duplicated descriptions

#### Fixed
* Resolved various typo's

### v1.1.0

#### Changed
* Update README to include references to tech Stack
* Update the script used to generate the documentation 
* Update gitignore file for IntelliJ artifacts and configurations

#### Added

* Template: add pattern template to github issue tracker and update labels
* Productivity: Essay on agile software development
* Programming: Patterns on writing clean code
  * Baptize your code: the value of giving code artifacts proper names
* Productivity: Patterns on doing things and making progressing
  * Add Return on Investment pattern
  * Add OPERAS method pattern
* Add a Glossary containing terminology used in this tome
* Add LUA filter to include pagebreaks into the markdown
* GitOps: Quality of life gitops updates:
  * Add Issue template for pattern suggestions 
  * Add Issue template for Learning Resource recommendations/Reviews
  * Add labels
  * Add contributors automation
* Automation:
  * Add JustDoIt script
  * Add script to create new section directory structure and empty files

#### Deleted

* Runner for docsite and docsite example output
* Old example documents
* DocSite as deployment of HTML files will not happen any time soon

### v1.0.0 Initial Version
#### Added 
* Repository structure 
* Add documentation outlines
  ** Add overview pages per sections
  ** Add high-level description of software architecture



##### IDE
Short for Integrated Development Environment.
An application that helps you to develop software, by combining useful features and libraries into one single application. These IDEs usually allow you to run your tests and code without needing to leave the comfort of your development environment.

##### KPI
Short for Key Performance Indicator.
the critical (key) indicators of progress toward an intended result. KPIs provides a focus for strategic and operational improvement, create an analytical basis for decision making and help focus attention on what matters most.

##### ROI
Short for 'return on investment'.
A concept originating from the financial sector. Described on [this page](/1_Patterns/Productivity/Concepts/HOME#return-on-investment).

##### Synthesis
A term that is used to describe the act of combining (often diverse) conceptions and observations into a coherent whole. | 


##### Context
- The circumstances in which an event occurs; a setting.
- The part of a text or statement that surrounds a particular word or passage and determines its meaning.

##### CLI
Short for Command Line Interface.
A text based environement that gives you control over your system.

##### Paradigm
A _"paradigm"_ is a fancy word for "point of view". It is the belief system that you hold and use in order to make sense of what is happening around you.
You can look at it as walking around in an unknown city, armed with a town map. If the map is not sufficiently accurate, you will find yourself ending up in the wrong place. You might even end up driving into a lake if the map is inaccurate, digital, and talks to you.

##### Pragmatic
The word _'Pragmatic'_ originally means "skilled in business". You can interpret this as  thinking about the added benefit (return on investment) of an action before deciding to do it. 
A pragmatist will take pieces from various toolsets and methodologies, and apply them to the problem at hand only if it makes sense to use them.
This means that even if a new software architecture is really hip, you would look at the issue you are trying to solve first and see if the new approach is worth doing.


# Reading List

There are so many awesome learning materials that the simple act of finding something 
to read is challenging in and of itself. The list below is a currated index of knowledge resources,
including but not limited to: 
- books
- articles
- videos

In order to help you find the next thing to research, we included some symbols next to each resource.
The meaning of which can be found in the table below.

| Symbol | Meaning |
|:---:|---|
| :fas fa-chess-pawn: | Excellent introductory resource |
| :fas fa-user-ninja: | Practical, and usually opinionated. Pay attention to the context. |
| :fas fa-trophy: | These resources are exceptionally valuable, and considered _'must read/watch'_ by many |
| :fas fa-microscope: | In-depth, somewhat challenging read. |
| :fas fa-jet-fighter: | Quick paced, easily digestable. |

## Shortlist

> A currated list of recommended learning resources

<!-- tabs:start -->
### **Books && Long-form publications**

| Name | Author | Tags |
|:--|---|:---:|
| [The Pragmatic Programmer, 20th Anniversary Edition: your journey to mastery](https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/) | Dave Thomas, Andy Hunt | :fas fa-trophy: :fas fa-user-ninja: :fas fa-jet-fighter: |
| [Pragmatic Thinking and Learning: Refactor Your Wetware](https://pragprog.com/titles/ahptl/pragmatic-thinking-and-learning/) | Andy Hunt | :fas fa-chess-pawn: :fas fa-trophy: :fas fa-jet-fighter: |
| [New Programmer's Survival Manual: Navigate Your Workplace, Cube Farm, or Startup](https://pragprog.com/titles/jcdeg/new-programmer-s-survival-manual/) | Josh Carter | :fas fa-chess-pawn: :fas fa-user-ninja: |
| [The 7 Habits of Highly Effective People](https://www.goodreads.com/book/show/36072.The_7_Habits_of_Highly_Effective_People) | Stephen R. Covey | :fas fa-trophy: |
| [Behind Closed Doors: Secrets of Great Management](https://pragprog.com/titles/rdbcd/behind-closed-doors/) | Johanna Rothman, Esther Derby | :fas fa-user-ninja: :fas fa-jet-fighter: |
| [Java by Comparison: Become a Java Craftsman in 70 Examples](https://pragprog.com/titles/javacomp/java-by-comparison/) | Dr. Simon Harrer, Dr. Jörg Lenhard, Linus Dietz | :fas fa-chess-pawn: :fas fa-user-ninja: | 
| [Getting Things Done: The Art of Stress-Free Productivity](https://www.goodreads.com/book/show/1633.Getting_Things_Done) | David Allen | :fas fa-chess-pawn: :fas fa-trophy: :fas fa-user-ninja: |
| [The Passionate Programmer (2nd edition): Creating a Remarkable Career in Software Development](https://pragprog.com/titles/cfcar2/the-passionate-programmer-2nd-edition/) | Chad Fowler | :fa fa-chess-pawn: |
| [The Developer's Code: What Real Programmers Do](https://pragprog.com/titles/kcdc/the-developer-s-code/) | Ka Wai Cheung | :fas fa-chess-pawn: :fas fa-user-ninja: |
| [The Healthy Programmer: Get Fit, Feel Better, and Keep Coding](https://pragprog.com/titles/jkthp/the-healthy-programmer/) | Joe Kutner | :fas fa-user-ninja: :fas fa-jet-fighter: |
| [Practices of an Agile Developer](https://pragprog.com/titles/pad/practices-of-an-agile-developer/) | Andy Hunt, Dr. Venkat Subramaniam | :fas fa-user-ninja: :fas fa-jet-fighter: |
| [Nonviolent Communication: A Language of Life](https://www.goodreads.com/book/show/71730.Nonviolent_Communication) |  Marshall B. Rosenberg | :fas fa-trophy: :fas fa-chess-pawn: :fas fa-jet-fighter: |
| [Apprenticeship Patterns](https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842/) | Dave Hoover| :fas fa-trophy: :fas fa-pawn: :fas fa-user-ninja: |
| [Programming Kotlin: Create Elegant, Expressive, and Performant JVM and Android Applications](https://pragprog.com/titles/vskotlin/programming-kotlin/) | Dr. Venkat Subramaniam | :fas fa-chess-pawn: :fas fa-user-ninja: |
| [Design and Build Great Web APIs: Robust, Reliable, and Resilient](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/) | Mike Amundsen | :fas fa-microscope: |
| [Pragmatic Guide to Sass 3: Tame the Modern Style Sheet](https://pragprog.com/titles/pg_sass3/pragmatic-guide-to-sass-3/) | Hampton Lintorn Catlin, Michael Lintorn Catlin | :fas fa-chess-pawn: :fas fa-user-ninja: }
| [Practical Microservices: Build Event-Driven Architectures with Event Sourcing and CQRS](https://pragprog.com/titles/egmicro/practical-microservices/) | Ethan Garofolo | :fas fa-microscope: :fas fa-user-ninja: |
| [Data Science Essentials in Python](https://pragprog.com/titles/dzpyds/data-science-essentials-in-python/) | Dmitry Zinoviev | |
| [Exercises for Programmers: 57 Challenges to Develop Your Coding Skills](https://pragprog.com/titles/bhwb/exercises-for-programmers/) | Brian P. Hogan | :fas fa-chess-pawn: :fas fa-user-ninja: |
| [Semantic Software Design](https://www.oreilly.com/library/view/semantic-software-design/9781492045946/) | Eben Hewitt | :fas fa-microscope: |
| [97 Things Every Java Programmer Should Know](https://www.oreilly.com/library/view/97-things-every/9781491952689/) | edited by: Kevlin Henney, Trisha Gee | :fas fa-user-ninja: :fas fa-jet-fighter: |
| [The Nature of Software Development: Keep It Simple, Make It Valuable, Build It Piece by Piece](https://pragprog.com/titles/rjnsd/the-nature-of-software-development/) | Ron Jeffries | :fas fa-chess-pawn: :fas fa-trophy: :fas fa-user-ninja: |
| [Software Design X-Rays: Fix Technical Debt with Behavioral Code Analysis](https://pragprog.com/titles/atevol/software-design-x-rays/) | Adam Tornhill | :fas fa-microscope: |
| [Small, Sharp Software Tools: Harness the Combinatoric Power of Command-Line Tools and Utilities](https://pragprog.com/titles/bhcldev/small-sharp-software-tools/) | Brian Hogan | :fas fa-user-ninja: |
| [First Things First](https://www.goodreads.com/book/show/36071.First_Things_First) | Stephen R. Covey, A. Roger Merrill, Rebecca R. Merrill  | :fas fa-user-ninja: |
| [The 8th Habit: From Effectiveness to Greatness](https://www.goodreads.com/book/show/1044141.The_8th_Habit) | Stephen R. Covey | :fas fa-trophy: :fas fa-user-ninja: :fas fa-jet-fighter: |
| [Principle-Centered Leadership](https://www.goodreads.com/book/show/44644.Principle_Centered_Leadership) | Stephen R. Covey | :fas fa-user-ninja: |
| [The Five Dysfunctions of a Team: A Leadership Fable](https://www.goodreads.com/book/show/21343.The_Five_Dysfunctions_of_a_Team?from_search=true&from_srp=true&qid=gvzpNFeQpW&rank=1) | Patrick Lencioni | :fas fa-trophy: :fas fa-user-ninja: |

### **Articles && Short-form publications**

| Name | Author | Tags |
|:--|---|:---:|
| [The Big Refactoring](https://principal-it.eu/2022/02/tdd-tales-the-big-refactoring/) | Jan Van Ryswyck | :fas fa-user-chess-pawn: |
| [16 misconceptions about Waterfall](https://failfastmoveon.blogspot.com/2020/11/16-misconceptions-about-waterfall.html) |  Michael Küsters  | :fas fa-chess-pawn: :fas fa-user-ninja: | 
| [Product Manager vs Product Owner](https://medium.com/@melissaperri/product-manager-vs-product-owner-57ff829aa74d) | Melissa Perri | :fas fa-microscope: |
| [The 2020 Scrum Guide and Related Content](https://resources.scrumalliance.org/Article/2020-scrum-guide-related-content) | Scrum Alliance | :fas fa-trophy: |
| [Improving Feedback Flows in Organizations with 'Complete Peer Feedback'](https://phauer.com/2020/complete-peer-feedback/) | Philipp Hauer | :fas fa-chess-pawn: :fas fa-user-ninja: |
| [How to Make Your Development Department More Productive](https://betterprogramming.pub/how-to-make-your-development-department-more-productive-adc4613ff12a) | Dieter Jordens | :fas fa-pawn: :fas fa-user-ninja: |
| [A Leader’s Framework for Decision Making](https://hbr.org/2007/11/a-leaders-framework-for-decision-making) | David J. Snowden && Mary E. Boone | :fas fa-microscope: :fas fa-trophy: |
| [Dilemmas in a general theory of planning](https://archive.epa.gov/reg3esd1/data/web/pdf/rittel%2bwebber%2bdilemmas%2bgeneral_theory_of_planning.pdf) [paper] | Horst W. J. Rittel && Melvin M. Webber | :fas fa-microscope: |
| [Getting Serious About Diversity: Enough Already with the Business Case](https://hbr.org/2020/11/getting-serious-about-diversity-enough-already-with-the-business-case) | David A. Thomas | :fas fa-ninja: |

### **Talks**

| Name | Author | Tags |
|:--|---|:---:|
| [Beauty in Code 2020: "Getting Back To The Heart of Agile"](https://www.youtube.com/watch?v=2e-7TFa9NhU)| Alistair Cockburn | :fas fa-trophy:  |
| [Beauty in Code 2018: "Software professionals, we keep using that word..."](https://www.youtube.com/watch?v=ll0IvBWEdz0) | Louis Hansen | :fas fa-user-ninja: |
| [Beauty in Code 2020: "Lambda? You Keep Using That Letter"](https://www.youtube.com/watch?v=0igQL-zrx-U) | Kevlin Henney | :fas fa-trophy: :fas fa-microscope: |
| | | |
| [DDD Europe 2020: Bounded Contexts for Team Organization](https://www.youtube.com/watch?v=nl35cA4uFu8) | Cyrille Martraire | :fas fa-ninja: |

### **Websites**

| Name | Author | Tags | 
|:--|---|:---:|
| [Coding is like cooking](http://coding-is-like-cooking.info)| Emily Bache | :fas fa-user-ninja: |
| [The C4 model for visualising software architecture](https://www.c4model.com/) | Simon Brown | :fas fa-trophy: :fas fa-jet-fighter: |
| [Sociocracy 3.0: Evolve Effective Collaboration At Any Scale](https://sociocracy30.org/) | Bernhard Bockelbrink, James Priest and Liliana David | :fas fa-trophy: :fas fa-user-ninja: :fas fa-microscope: |
| [GROWS Method®: forming good habits in software development](https://growsmethod.com/) | GROWS Method® Institute, Andy Hunt | :fas fa-user-ninja: |

### **Podcasts**

| Name | Author | Tags | 
|:--|---|:---:|
| [A bit of optimism](https://open.spotify.com/show/0wjYlCNxLDgFUUjZMaP6Dx?si=c6e9dc79be9d4859)| Simon Sinek | :fas fa-user-ninja: |
| [Beyond Coding](https://open.spotify.com/show/7asIKIPU3N6n0SNWHxwMnQ?si=a7300c86f6f84d66) | Patrick Akil | |
| [The education game](https://open.spotify.com/show/7IqTX2koCqgzJ8uTpmHqzk?si=ec0e3e413b9142bb)| Matt Barnes && Dr. Scott Van Beck| |
| [What you will learn](https://open.spotify.com/show/1oQ6gWZqHHBgsrpIISZiAr?si=7a093729ea4c4d99) | Adam Ashton && Adam Jones | |
| [Scrum master toolbox](https://open.spotify.com/show/4r6DQLCHDaSNjbgtZtAfUp?si=ab622d849eef4646) | Vasco Duarte | |
| [Troubleshooting Agile](https://open.spotify.com/show/2Uu2l7kVWPLYuBF5L0N6Mu?si=26c4e0a7c8734ab0)| Jeffrey Fredrick && Douglas Squirrel| |
| [The productivity show](https://open.spotify.com/show/6idQBTQNbAQEKSDJHV5OjX?si=0074e14c266f461a) | Asian Efficiency | |

<!-- tabs:end -->

