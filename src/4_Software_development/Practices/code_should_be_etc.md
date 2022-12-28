## Make your decisions Easy To Change

### Context

Making decisions can be difficult, as what we decide today can impact our future in significant ways.
This practise helps you be more confident in your ability to pivot if it turns out you have made an error in judgement.

> In this world nothing can be said to be certain, except death and taxes.
>
> ~ Benjamin Franklin[^1]


> 'Cause you're hot, then you're cold.  
> You're yes, then you're no.  
> You're in, then you're out.  
> You're up, then you're down.  
> You're wrong when it's right.
>
> ~ Katy Perry, Hot n Cold (2008)

### Drivers

- It is impossible to accurately predict the future.
- We want to strive for the best possible solution, yet not be paralysed by decision fatigue.
- Our lives and environments are constantly in flux, and so is the software we write and maintain. Eventually, thing
  sare bound to be changed.
- Decisions we make today can have long-lasting effects on our code. Therefore it is wise to consider them well, and
  decide on which trade-off is most likely to be beneficial for us.

#### Enablers

- You are operating in an environment where you have enough agency to make your own judgement calls
- The decision you make has a reasonable chance to impact the situation in the long term
- There is no clear "best solution" to the problem at hand

#### Deterrents

- Your context lacks the "safe-to-fail" mentality. In your environment, admitting you have to change your plan is
  considered equivalent to saying you messed up.
- People are not used to evaluating the path they have chosen and considering alternatives, or ways to reroute the
  current course

### Solution

- When making a decision, consider the alternatives according to how easy it is to reverse or adapt them
- Choose the option that allows for most flexibility, while still being in line with your core objectives
    - Note that oftentimes it is not the choice that matters much, but rather how you will ensure it can easily be
      changed or reverted
    - If there are no easily reversible choices available, it night be wise to proceed with caution or set up a small
      scale experiment to assess the alternative in more detail
- Commit to the alternative you chose, and monitor how it is doing
- If too many signals occur informing you that your chosen direction is suboptimal: pivot!

![Pivot! ><](./pivot.png ':size=320')

### Examples

- _Buying a house versus renting_: a real world example of when to consider applying the ETC reasoning. If you have a
  turbulent lifestyle, and want to keep the option of moving abroad open, you are likely better of renting a dwelling
  over buying one.

- _What database to use?_: this is a pertinent question for quite a number of software projects. In this case, the
  choice is not so much which storage technology to go for, rather to consider HOW you hook it up to your code.
  There exist plenty of techniques or frameworks to decouple the choice of database technology from the inner workings
  of your codebase. Examples
  include [Spring Data JPA](https://spring.io/projects/spring-data), [hibernate](https://hibernate.org/),
  or simply using a [layered architecture](https://www.educba.com/layered-architecture/).

---

[^1] Though this quote is attributed to B. Franklin, earlier version of the phrase existed.
See: https://en.wikipedia.org/wiki/Death_and_taxes_(idiom).