# 0_Intro

Imagine the thrill of discovering new ideas and techniques that will help you excel at the things you do every day.
Whether you're already working in a technical role or just starting out, there's always more to learn and explore.
Either way, we've got something for you.

In this knowledge base, you'll discover practical insights and valuable tips from experts who have dedicated themselves to mastering their craft.
By reading on, you'll gain a deeper understanding of the topics that interest you and learn new ways to take steps towards achieving your goals and
becoming the best you can be.

So why not give it a try? Keep reading and see how far you can go.

# Preface: "Hello world!"

Over the years, I've consumed a lot of books, articles, and videos to improve my skills as a technical professional.
Some lessons have proven to be great assets on my own professional journey, while others have been less helpful.
By talking to other software professionals, I've noticed a lack of common ground within our industry.
Unlike more mature professions, such as woodworking, medicine, law, or politics, software development is a fairly young field.

As of late 2022, the technology industry has been steadily growing in size and importance. While this might seem like a dream come true for those of
us who grew up fantasizing about living in cyberspace and being all-powerful wizards, the reality is more complicated. Currently, around 20% of
software developers have less than two years of experience[^0], and as our industry continues to expand, the number of _"juniors"_ is only
expected to rise.

Our industry's rapid growth is both our greatest strength and our biggest challenge.
We struggle to articulate our ideas effectively and pass on our knowledge and experience to the next generation of software professionals. While the
internet provides an overwhelming amount of information on coding and productivity tips, there is often disagreement among developers on how to best
approach a situation. The proverb "If you put two developers in a room, they will soon generate three dissenting opinions" is, in fact, quite
accurate.

![Alice and Bob fret over conventions >](../silly_standards.png ':size=420')

I realize the irony in writing an opinionated text, while also stating that there exist too many opinions out there. Still, allow me to
explain why I set about writing this entire thing. The basic premise is: _I don't really care how you end up doing things_. If you find
a way that works well for you, great! By all means, keep doing it.

As we live our lives, we tend to learn a great deal about a wide variety of topics.
From time to time we are stumped by how elegant, or easy, someone solves a certain problem. You are left wondering
why you have not been tackling similar problems in the same way. It could have saved you vast amounts of frustration, if
only you had known earlier.

> [!QUOTE] _“Heeded my words not, did you? Pass on what you have learned. Strength. Mastery. But weakness, folly, failure also.
> Yes, failure most of all. The greatest teacher, failure is. Luke, we are what they grow beyond. That is the true burden of all masters.”_
>
> -- Yoda, Jedi master

What you have in front of you is a collection of _"tales from the trenches", aimed at helping you stand on the shoulders of the giants that have
come before us. Learn what worked, but more importantly: learn why it worked. If you come across a piece of advice that sounds like it might apply
to you, try it out and see what results you achieve with it. When it did not work out as expected, figure out why it did not work. If you are
feeling particularly charitable, share you newfound knowledge with your friends, coworkers, or the general public.

# About this publication

## Intended Audience

This knowledge base is designed to share information and useful practices with technical professionals,
particularly those who are new to the industry and seeking guidance from experienced practitioners.
The repository serves as a personal wiki that includes insights, interpretations, and experiences gathered from various sources, combined with the
author's personal experiences.

The primary goal is to share knowledge and help others improve their skills while navigating the challenges of working in the software development
field. Ultimately, if this work contributes to making someone's life a little more enjoyable, the mission is accomplished.

## Structure

You may already be familiar with some of the ideas presented in this book, so feel free to skip ahead. If you have any feedback or suggestions about
the content, please leave a comment on the [github page](https://github.com/sddevelopment-be/penguin-pragmatic-patterns).

Please note that this knowledge base will remain a work in progress for some time, and not all content will be refined. To stay up-to-date with
the latest changes, check out the [Changelog](/X_Appendix/HOME?id=changelog).

To enhance your reading experience, this publication is organized by categories, each containing the following types of content:

- **Patterns:** Short pieces of advice to inspire you, presented in a similar format for easy reference.
- **Articles and short-form information:** Opinionated pieces, additional context, or specific case-studies written by myself or others with
  permission.
- **Resources and Reviews :** Recommendations for books, articles, and other learning materials that I found helpful.

If you encounter unfamiliar concepts or abbreviations, consult the [glossary](/X_Appendix/Glossary/HOME) for definitions and explanations.

For those interested in further exploration of the topics discussed in this work, check out the [Reading list section]
(/X_Appendix/Learning_Materials/HOME) in the appendices. There, you'll find a curated list of books, articles, and audiovisual resources worth
exploring.

## A pattern-based approach

Sharing knowledge can be a challenging task as it involves conveying ideas and thoughts in a way that is easily understood by the receiver. The
difficulty lies in achieving a high signal-to-noise ratio where the signal represents the intended message, and the noise represents anything that
hinders its communication. Groups often resort to using jargon, which is specialized language referring to concepts relevant to the in-group, to
make the exchange more efficient. However, using jargon can create a communication gap between those who are familiar with it and those who are not.
In this context, creating a structured way of representing knowledge by visualizing ideas and how they relate to one another can be helpful. By
creating a "map" of concepts, we can better understand and share them with others.

Sharing knowledge with other practitioners in a formalized manner is a common activity in a variety of fields. Chess players share certain board
positions and [common tactics](https://chesstempo.com/tactical-motifs) using "motifs."[^1] In popular internet culture, we see the same as
plenty of communication happens using memes and tropes.[^2] Recent marketing campaigns and elections in various countries have seen an uptick in
using funny pictures and videos on the web to
influence people's decision-making.

When looking for a structured way to represent ideas, experiences, or cookbooks (i.e. knowledge), it helps to stick to tried-and-true techniques.
As software developers, we are inclined to create formal models of topics we wish to understand better.

A [pattern language](/X_Appendix/Glossary/HOME?id=pattern-language) is **a formal way to represent wisdom that improves ones ability to operate in a
certain field of expertise**. The knowledge represented in a pattern language is usually stripped down to its bare essentials, making it easier to
apply in a variety of situations. Much like a dictionary, each of the _"patterns"_ in this knowledge portfolio is referred to by its `name` and
contains information on the type of challenge it addresses, as well as a description of the context in which it works well.

To share information about things you can do, as well as ideas and models that can change the way you perceive a situation, the patterns in this
knowledge base are split into two categories: `Concepts` and `Practices`.
To keep the content in this work consistent, each pattern follows a similar structure. As we now know, **context matters!**. That is why each
pattern is prefaced with a short description of when it can be useful to consider using it.

The pattern structure definition is illustrated in the following figure:

![Pattern structure definition ><](./pattern_definition.png ':size=680')

Some patterns may contain references to other resources, as well as supporting examples, testimonials, tutorials, and so on. These examples can be
included inside the pattern description, but they might also exist as separate resources in a different section of this publication.

> [!WARNING]
> **Pattern lists are not a bingo chart.**
> Please note that pattern lists are not like a bingo chart or a collection of Pokémon.
> There is no special prize for incorporating all the patterns in this publication into your work or life.
> Instead, we encourage you to be selective and only use the practices that resonate with you.
> You are free to modify them according to your needs and preferences. After all, who are we to tell you what to do?

---

# Section References

[^0] Statistics retrieved from [https://www.zippia.com/software-engineer-jobs/demographics/](https://www.zippia.
com/software-engineer-jobs/demographics/), Evolution of software engineer demographics in the USA in 2019.

[^1] Unfortunately knowing this does not instantly make you a great chess player, as my elo on online platforms so adequately reminds me.

[^2] So wide-spread even, that academics have [started investigating](https://www.michelecoscia.com/?page_id=2070) what makes some memes
successful while others are doomed to be left in the ditches of the web.

