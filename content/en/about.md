+++
title = "Approach"
order = 1
pubdate = "2024-09-14"
image = "sense_making_meta_model"
summary = "This page is designed to introduce and explain the unique framework through which the site's information is organized and delivered, setting the stage for deeper exploration into the topics covered."
+++

Software development is a young field compared to medicine, law, or woodworking. We don't have centuries of established practices to draw from, and our industry's rapid growth compounds the challenge. As of late 2022, around 20% of software developers have less than two years of experience[^0]—a proportion that continues to rise.

{{< image src="/images/chapters/silly_standards" 
  alt="Alice and Bob fret over conventions"
  caption="Alice and Bob fret over conventions"
  size="44%"
  float="right" >}}

This creates a paradox: we have access to an overwhelming amount of advice, frameworks, and "best practices," yet we struggle to find common ground. The proverb "put two developers in a room, they'll soon generate three dissenting opinions" rings uncomfortably true.

This knowledge base exists to help navigate that landscape. The premise is simple: __we don't prescribe solutions. We help you build judgement.__

If you find a technique that works well for your context, use it. If it doesn't fit, understanding _why_ it doesn't fit is just as valuable as knowing the technique itself.

What you have here is a collection of __"tales from the trenches"__—structured insights drawn from real work, designed to help you recognize patterns, understand trade-offs, and make informed choices. Learn what worked, but more importantly, learn _why_ it worked and _when_ it applies.

## Who this is for

This knowledge base serves technical professionals at any stage—whether you're onboarding to your first role, leading cross-functional teams, or working in a non-technical capacity alongside engineering groups.

**If you're early in your career**, you'll find primers that build foundational understanding without assuming prior knowledge, plus practices that explain _when_ and _why_ experienced professionals make certain choices.

**If you're leading or mentoring**, you'll find structured ways to share context, align teams, and navigate trade-offs without prescribing rigid solutions.

**If you're collaborating across disciplines**, you'll find glossaries and concept maps that translate specialized language into plain terms, helping you participate in technical discussions with confidence.

The repository is a personal wiki—insights, interpretations, and experiences gathered from various sources and refined through real-world application. The goal is to share knowledge in a way that helps you navigate challenges more effectively. If this work makes someone's professional life a little more manageable, the mission is accomplished.

{{<quote text=`
Heeded my words not, did you? Pass on what you have learned. Strength. Mastery.
But weakness, folly, failure also. Yes,failure most of all.
The greatest teacher, failure is. Luke, we are what they grow beyond. That is the true burden of all masters.`
author="Yoda, Jedi grandmaster" >}}

## How to navigate this library

You may already be familiar with some of the ideas presented—skip ahead as needed. If you have feedback or suggestions, leave a comment on the [GitHub page](https://github.com/sddevelopment-be/penguin-pragmatic-patterns).

This knowledge base remains a work in progress. To stay current with changes, check the [Changelog](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/blob/develop/docs/CHANGELOG.md).

Content is organized into the following categories:

- **Patterns:** Short, structured pieces of advice presented in a consistent format for easy reference.
  - **Concepts:** Mental models that can shift how you perceive a situation.
  - **Practices:** Actionable techniques you can apply to improve skills or work more effectively.
  - **Procedures:** Step-by-step instructions for completing specific tasks.
- **Resources:** Recommendations for books, articles, and learning materials, with context on what you'll gain from them.
- **Glossary:** Plain-language definitions of specialized terms and abbreviations.

For deeper exploration of any topic, see the curated resources in the bibliography and tools sections.

### Why patterns?

Sharing knowledge effectively requires balancing signal and noise—conveying ideas clearly without burying them in jargon or abstraction. Different fields solve this differently: chess players share tactics through motifs, internet culture spreads ideas via memes, and software developers create formal models.

A **pattern language** is a structured way to represent practical wisdom. Each pattern distils a recurring challenge and its context-dependent solution into a reusable form. Much like a dictionary, patterns in this library are referenced by name and include:
- The type of problem they address
- The context in which they work well
- Trade-offs and forces at play

Patterns here are split into **Concepts** (mental models), **Practices** (actionable techniques), and **Procedures** (step-by-step guides). Each follows a consistent structure, prefaced with a description of when it's useful to consider.

The pattern structure definition is illustrated in the following figure:

{{< image src="/images/chapters/pattern_definition"  alt="Pattern structure definition" >}}

Some patterns include references to other resources, supporting examples, testimonials, or tutorials. These may appear within the pattern or as separate entries elsewhere in the library.

{{< warning text=`
  Pattern catalogs are not bingo cards. There is no prize for using every pattern in this collection. Instead, be selective—use what resonates, adapt as needed, and discard what doesn't fit. After all, you know your context better than we do.`
>}}


## Combining this with other frameworks

{{< image src="/images/sense_making_meta_model"
alt="Compositional breakdown of the overarching sense-making meta model"
caption="Compositional breakdown of the overarching sense-making meta model"
size="40%"
float="right">}}

Structured knowledge helps, but it doesn't solve another challenge: __making sense of the vast landscape of frameworks, methodologies, and practices already out there.__

We've created a **sense-making meta model** to help you integrate ideas from this library with other sources. The model defines influence layers:

**Primary drivers** (deeply rooted, hard to change):
* **Values**: Deeply held beliefs that guide actions and decisions.
* **Axioms and Fundamental Laws**: Core truths or principles forming the foundation of understanding.
* **Current context**: The specific circumstances you're operating within.

**Secondary elements** (more malleable):
* **Creeds**: Tenets and beliefs that guide your approach.
* **Behaviors**: Observable actions influenced by creeds and primary drivers.

**Outcomes**:
* **Effects**: Results of behaviors within the current context, governed by applicable fundamental laws (e.g., push a ball off a table on Earth → it falls due to gravity).

This knowledge base focuses on **creeds and behaviors**—helping you understand and adjust how you act and react in different situations. Primary drivers (values, laws, context) are not explicitly covered. For those, explore frameworks like [AMMERSE](https://www.ammerse.org/), the [Agile Manifesto](https://agilemanifesto.org/), the [Cynefin framework](https://en.wikipedia.org/wiki/Cynefin_framework), or your personal ethical and philosophical foundations.

{{< warning text=`
  The sense-making meta model is a simplification. It's a tool for understanding, not a complete representation of reality. Use it to guide your thinking, not as a one-size-fits-all explanation.` >}}

### Use of AMMERSE values

As mentioned earlier, this knowledge base is designed to arm you with ideas and practices that can help you navigate the challenges of your 
daily life. Following the [Sociocracy 3.0](https://sociocracy30.org/) philosophy, the practices are intended to be used as a flexible toolbox.  
You are free to pick and choose the practices that resonate with you and modify them according to your needs and preferences. To help you out 
identifying the practices that might be useful to you, we have included an evaluation of the practices based on the [AMMERSE](https://www.ammerse.org/) values.

The [AMMERSE](https://www.ammerse.org/) values are a set of principles that help practitioners evaluate their organizational preferences, 
needs, and desires. Put simple, they are a set of values that can be used to guide decision-making in a variety of contexts.
AMMERSE is the work of [Jonathan B. Crossland](https://www.linkedin.com/in/jonathancrossland/), who has kindly allowed their use in this publication.
Each of the practices is accompanied by an indication of the expected impact of its application on the AMMERSE values in a certain context.
As an example: a practice titled "Sabotage the project" would have a significant negative effect on the "Environmental", "Reachable" and
"Maintainable" values.

We use the following values:
* **Agile (A):** – Encouraging adaptability and quick response to change.
* **Minimal (Mi):** – Advocating for simplicity and efficiency in all operations.
* **Maintainable (M):** – Prioritizing solutions that are easy to sustain and improve.
* **Environmental (E):** – Promoting awareness and consideration of environmental impact.
* **Reachable (R):** – Setting achievable goals within time and budget constraints.
* **Solvable (S):** – Focusing on effective problem-solving strategies.
* **Extensible (Ex):** – Designing for the future with adaptable and scalable solutions.

Each pattern is evaluated for its impact on these values, providing a quick reference for practitioners to understand the potential implications 
of incorporating the practice into their work. To do so, we use a scale from -1 to 1, where -1 indicates a significant negative impact, 0 
indicates no meaningful impact, and 1 indicates a significant positive impact. The iconography used to represent these values is as follows:

{{< bootstrap-table "bootstrap-table table-striped table-responsive half-width" >}}

|                   icon                   | value range     | meaning                     |
|:----------------------------------------:|-----------------|-----------------------------|
| <i class='fas fa-angle-double-down'></i> | `]-0.5; -1]`    | Significant negative impact |
|    <i class='fas fa-angle-down'></i>     | `]-0.25; -0.5]` | Moderate negative impact    |
| <i class='fas fa-arrow-trend-down'></i>  | `]-0.1; -0.25]` | Slight negative impact      |
| <i class='fas fa-arrows-left-right'></i> | `[-0.1; 0.1]`   | Negligible impact           |
|  <i class='fas fa-arrow-trend-up'></i>   | `]0.1; 0.25]`   | Slight positive impact      |
|     <i class='fas fa-angle-up'></i>      | `]0.25; 0.5]`   | Moderate positive impact    |
|  <i class='fas fa-angle-double-up'></i>  | `]0.5; 1]`      | Significant positive impact |

{{</ bootstrap-table >}}


We hope you find this knowledge base useful and that it helps you navigate the challenges of working in the software development field.

[^0]: Statistics retrieved
from [https://www.zippia.com/software-engineer-jobs/demographics/](https://www.zippia.com/software-engineer-jobs/demographics/), Evolution of
software engineer demographics in the USA in 2019.

[^1]: Unfortunately knowing this does not instantly make you a great chess player, as my elo on online platforms so adequately reminds me.

[^2]: So wide-spread even, that academics have [started investigating](https://www.michelecoscia.com/?page_id=2070) what makes some memes
successful while others are doomed to be left in the ditches of the web.
