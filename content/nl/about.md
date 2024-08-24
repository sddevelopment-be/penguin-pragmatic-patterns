+++
title = "Approach"
order = 1
pubdate = "2023-08-26"
image = "sense_making_meta_model.webp"
summary = "This page is designed to introduce and explain the unique framework through which the site's information is organized and delivered, setting the stage for deeper exploration into the topics covered."
+++

Over the years, I have consumed numerous books, articles, and videos to enhance my skills as a technical professional. Some lessons have been
invaluable on my professional journey, while others have been less helpful. Through discussions with fellow software professionals, I have noticed a
lack of common ground within our industry. Unlike more mature professions, such as woodworking, medicine, law, or politics, software development is
a relatively young field.

As of late 2022, the technology industry has been steadily growing in size and importance. While this might seem like a dream come true for those of
us who grew up fantasizing about living in cyberspace and being all-powerful wizards, the reality is more complicated. Momenteel hebben zo'n 20% van alle software-ontwikkelaars minder dan twee jaar ervaring[^0]. Naarmate ons vakgebied in omvang groeit, zal dit aantal "juniors" naar verwachting enkel stijgen.

Our industry's rapid growth is both our greatest strength and our biggest challenge.
We struggle to articulate our ideas effectively and pass on our knowledge and experience to the next generation of software professionals. While the
internet provides an overwhelming amount of information on coding and productivity tips, there is often disagreement among developers on how to best
approach a situation. The proverb "If you put two developers in a room, they will soon generate three dissenting opinions" is, in fact, quite
accurate.

{{< image src="/images/chapters/silly_standards.webp"
alt="Alice and Bob fret over conventions"
caption="Alice and Bob fret over conventions"
size="44%"
float="right" >}}

I realize the irony in writing an opinionated text while also stating that there are too many opinions out there. Still, allow me to explain why I
set about writing this collection. The basic premise is: **I don't really care how you end up doing things. If you find a way that works well for
you, great! By all means, keep doing it.**

As we live our lives, we tend to learn a great deal about a wide variety of topics. From time to time, we are stumped by how elegantly or easily
someone solves a certain problem. You are left wondering why you have not been tackling similar problems in the same way. It could have saved you
vast amounts of frustration if only you had known earlier.

What you have in front of you is a collection of **"tales from the trenches"**, aimed at helping you stand on the shoulders of the giants who have
come before us. Learn what worked, but more importantly, learn why it worked. If you come across a piece of advice that sounds like it might apply to
you, try it out and see what results you achieve with it. If it does not work out as expected, figure out why it did not work. If you are feeling
particularly charitable, share your newfound knowledge with your friends, coworkers, or the general public.

## Intended Audience

This knowledge base is designed to share information and useful practices with technical professionals, particularly those who are new to the
industry and seeking guidance from experienced practitioners. The repository serves as a personal wiki that includes insights, interpretations, and
experiences gathered from various sources, combined with the author's personal experiences.

The primary goal is to share knowledge and help others improve their skills while navigating the challenges of working in the software development
field. Ultimately, if this work contributes to making someone's life a little more enjoyable, the mission is accomplished.

{{< quote text=`
Heeded my words not, did you? Pass on what you have learned. Strength. Mastery.
But weakness, folly, failure also. Yes,failure most of all.
The greatest teacher, failure is. Luke, we are what they grow beyond. That is the true burden of all masters.`
author="Yoda, Jedi grandmaster" >}}

## Structure

You may already be familiar with some of the ideas presented, so feel free to skip ahead. If you have any feedback or suggestions about
the content, please leave a comment on the [github page](https://github.com/sddevelopment-be/penguin-pragmatic-patterns).

Please note that this knowledge base will remain a work in progress for some time, and not all content will be refined. To stay up-to-date with
the latest changes, check out the [Changelog](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/blob/develop/docs/CHANGELOG.md).

To enhance your reading experience, this knowledge base is organized by categories, each containing the following types of content:

- **Patterns:** Short pieces of advice to inspire you, presented in a similar format for easy reference.
  - **Concepts:** Ideas and models that can change the way you perceive a situation.
  - **Practices:** Things you can do to improve your skills or work more effectively.
  - **Procedures:** Step-by-step instructions for completing a task.
- **Resources and Reviews :** Recommendations for books, articles, and other learning materials that I found helpful.
- **Glossary:** Definitions and explanations of unfamiliar concepts and abbreviations.

For those interested in further exploration of the topics discussed in this work, check out
the [Reading list section](/X_Appendix/Learning_Materials/HOME) in the appendices.
There, you'll find a curated list of books, articles, and audiovisual resources worth exploring.

### A pattern-based approach

Sharing knowledge can be a challenging task as it involves conveying ideas and thoughts in a way that is easily understood by the receiver. The
difficulty lies in achieving a high signal-to-noise ratio, where the signal represents the intended message, and the noise represents anything that
hinders its communication. Groups often resort to using jargon, which is specialized language referring to concepts relevant to the in-group, to
make the exchange more efficient. However, using jargon can create a communication gap between those who are familiar with it and those who are not.

In this context, creating a structured way of representing knowledge by visualizing ideas and how they relate to one another can be helpful. By
creating a "map" of concepts, we can better understand and share them with others.

Sharing knowledge with other practitioners in a formalized manner is a common activity in a variety of fields. Chess players share certain board
positions and [common tactics](https://chesstempo.com/tactical-motifs) using "motifs"[^1]. In popular internet culture, we see the same as plenty of communication happens using memes and
tropes[^2]. Recent marketing campaigns and elections in various countries have seen an uptick in using funny pictures and videos on the web to
influence people's decision-making.

When looking for a structured way to represent ideas, experiences, or cookbooks (i.e. knowledge), we software developers are inclined to create
formal models of topics we wish to understand better.

A pattern language is **a formal way to represent wisdom that improves one's ability to operate in a certain field of expertise**. The knowledge
represented in a pattern language is usually stripped down to its bare essentials, making it easier to apply in a variety of situations. Much like a
dictionary, each of the "patterns" in this knowledge portfolio is referred to by its name and contains information on the type of challenge it
addresses, as well as a description of the context in which it works well.

To share information about things you can do, as well as ideas and models that can change the way you perceive a situation, the patterns in this
knowledge base are split into the categories: `Concepts`, `Practices`, and `Procedures`.
To keep the content in this work consistent, each pattern follows a similar structure.
As we now know, context matters! That is why each pattern is prefaced with a short description of when it can be useful to consider using it.

The pattern structure definition is illustrated in the following figure:

{{< image src="/images/chapters/pattern_definition.webp"  alt="Pattern structure definition" >}}

Some patterns may contain references to other resources, as well as supporting examples, testimonials, tutorials, and so on. These examples can be included inside the pattern description, but they might also exist as separate resources in a different section of this publication.

{{< warning text=`
  Please note that pattern lists are not like a bingo chart or a collection of Pokémon.
  There is no special prize for incorporating all the patterns in this publication into your work or life. Instead, we encourage you to be selective
  and only use the practices that resonate with you. You are free to modify them according to your needs and preferences. After all, who are we to
  tell you what to do?` >}}

## Interoperability with other frameworks

{{< image src="/images/sense_making_meta_model.webp"
alt="Compositional breakdown of the overarching sense-making meta model"
caption="Compositional breakdown of the overarching sense-making meta model"
size="40%"
float="right">}}

One of the tricky things about sharing knowledge is that it is often difficult to find a common language to express ideas. What is evident to
one person, might be a complete mystery to another. Using a structured way to represent the concepts, practices, and procedures will help you tremendously
in understanding and sharing them with others. Unfortunately, this does not solve another common problem: **how to make sense of the vast amount
of frameworks, proscriptive methodologies, and practices that are out there?**

To address this issue, we have created a sense-making meta model that can be used to combine the ideas presented in this knowledge base with
other sources of information. The model defines three **primary drivers** that influence the way we operate in a certain field of expertise:

- **Values**: Deeply held beliefs that guide our actions and decisions.
- **Axioms and Fundamental Laws**: Core (absolute) truths or principles that form the foundation of our understanding of the world.
- **The current context**: The specific circumstances in which we find ourselves.

These are categorized as **primary drivers** because they are the most influential and deeply rooted aspects of our sense-making process.
They are --in varying degrees-- difficult to change and are often taken for granted. The model also includes less firmly rooted aspects, which
are more malleable and can be changed more easily. These are:

- **Creeds**: Tenet and beliefs that guide our actions and decisions.
- **Behaviors**: Observable actions and reactions that are influenced by our creed, and the primary drivers.

Finally, the model includes **effects**, which are the outcomes of our actions and decisions.
These are the (in)direct results of our behaviours, in combination with the current context, and the fundamental laws that apply to the
situation. For example: If you push a ball off a table (behaviour), while on earth (context), it will fall to the ground (effect) because of
Newton´s first law of motion (fundamental law).

This knowledge base is designed to help you understand the **creeds**, and **behaviors** parts of the sense-making meta model. That means any of
the practices, concepts, and procedures you find here are meant to help you understand and change the way you act and react in a given situation.
Understanding of the primary drivers is not explicitly covered in this publication, and we recommend you look for other models and frameworks
that provide insights into these aspects. This could be the [AMMERSE](https://www.ammerse.org/) values, the [Agile Manifesto](https://agilemanifesto.org/),
the [Cynefin framework](https://en.wikipedia.org/wiki/Cynefin_framework), or your religious and ethical beliefs, to name a few.

{{< warning text=`
  Please note that the sense-making meta model is a simplification of the complex reality we live in. It is a tool to help you understand and
  change the way you act and react in a given situation. It is not a complete representation of the world, and it is not meant to be used as a
  one-size-fits-all explanation for the complexity of the real world.` >}}

### Use of AMMERSE values

As mentioned earlier, this knowledge base is designed to arm you with ideas and practices that can help you navigate the challenges of your
daily life. Folowwing the [Sociocracy 3.0](https://sociocracy30.org/) philosophy, the practices are intended to be used as a flexible toolbox.\
You are free to pick and choose the practices that resonate with you and modify them according to your needs and preferences. To help you out
identifying the practices that might be useful to you, we have included an evaluation of the practices based on the [AMMERSE](https://www.ammerse.org/) values.

The [AMMERSE](https://www.ammerse.org/) values are a set of principles that help practitioners evaluate their organizational preferences,
needs, and desires. Put simple, they are a set of values that can be used to guide decision-making in a variety of contexts.
AMMERSE is the work of [Jonathan B. Crossland](https://www.linkedin.com/in/jonathancrossland/), who has kindly allowed their use in this publication.
Each of the practices is accompanied by an indication of the expected impact of its application on the AMMERSE values in a certain context.
As an example: a practice titled "Sabotage the project" would have a significant negative effect on the "Environmental", "Reachable" and
"Maintainable" values.

We use the following values:

- **Agile (A):** – Encouraging adaptability and quick response to change.
- **Minimal (Mi):** – Advocating for simplicity and efficiency in all operations.
- **Maintainable (M):** – Prioritizing solutions that are easy to sustain and improve.
- **Environmental (E):** – Promoting awareness and consideration of environmental impact.
- **Reachable (R):** – Setting achievable goals within time and budget constraints.
- **Solvable (S):** – Focusing on effective problem-solving strategies.
- **Extensible (Ex):** – Designing for the future with adaptable and scalable solutions.

Each pattern is evaluated for its impact on these values, providing a quick reference for practitioners to understand the potential implications
of incorporating the practice into their work. To do so, we use a scale from -1 to 1, where -1 indicates a significant negative impact, 0
indicates no meaningful impact, and 1 indicates a significant positive impact. The iconography used to represent these values is as follows:

{{< bootstrap-table "bootstrap-table table-striped table-responsive half-width" >}}

|                   icon                   | value range     | meaning                     |
| :--------------------------------------: | --------------- | --------------------------- |
| <i class='fas fa-angle-double-down'></i> | `]-0.5; -1]`    | Significant negative impact |
|     <i class='fas fa-angle-down'></i>    | `]-0.25; -0.5]` | Moderate negative impact    |
|  <i class='fas fa-arrow-trend-down'></i> | `]-0.1; -0.25]` | Slight negative impact      |
| <i class='fas fa-arrows-left-right'></i> | `[-0.1; 0.1]`   | Negligible impact           |
|   <i class='fas fa-arrow-trend-up'></i>  | `]0.1; 0.25]`   | Slight positive impact      |
|      <i class='fas fa-angle-up'></i>     | `]0.25; 0.5]`   | Moderate positive impact    |
|  <i class='fas fa-angle-double-up'></i>  | `]0.5; 1]`      | Significant positive impact |

{{</ bootstrap-table >}}

We hope you find this knowledge base useful and that it helps you navigate the challenges of working in the software development field.

---

[^0]: Statistics retrieved
    from [https://www.zippia.com/software-engineer-jobs/demographics/](https://www.zippia.com/software-engineer-jobs/demographics/), Evolution of
    software engineer demographics in the USA in 2019.

[^1]: Unfortunately knowing this does not instantly make you a great chess player, as my elo on online platforms so adequately reminds me.

[^2]: So wide-spread even, that academics have [started investigating](https://www.michelecoscia.com/?page_id=2070) what makes some memes
    successful while others are doomed to be left in the ditches of the web.
