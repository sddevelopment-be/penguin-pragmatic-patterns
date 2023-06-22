## Tests as a safety net

> [!QUOTE]
> Writing tests slows me down, let me just fix the issue
> ~ all too many developers, unfortunately.

### Context

Ask any software developer about using automated tests for their code, and chances are they will answer with _"We should definitly do that more
often, but there is never time to do so."_. This seems reasonable at first, writing both production code and test code takes longer, right?
The kicker is: even though this approach might feel slower than just hacking away at the live code base and redeploying it a few times to see if you
solved the issue, it usually ends up being faster.

![Hunting bugs ><](./debugging.jpg ':size=420')

### Drivers

* Writing software is difficult and tasking. Writing error-free software even more so.
* We want fast feedback on any changes we make, so we know when we are about to make a mistake that breaks the system.
* Most software projects live a lot longer than originally intended, and are continually edited to provide more functionality or to account for
  changes in the business rules they support.
* We want our software to work as expected, and be devoid of as many dysfunctions as possible.
* Most software developers feel ashamed when they make mistakes.
* We want to feel productive and deliver features as quickly as possible.
* Our memory is fallible. It is extremly difficult to remember why we wrote a piece of code in a cetain way many years down the line.
* Spinning up an entire application takes a long time. As does debugging.

#### Enablers

* The code is structured in a modular way, enabling us to test part of the system in isolation.
* Application deployment is expensive (time and/or money).
* Your programming language of choice has tooling support for automated tests.

#### Deterrents

* Lack of tooling support.
* The test-suite takes long to run.
* Your colleagues or management do not believe in automated testing, and make a fuss when you practice it.
* Your code is not intended to live for more than a few days.
* Your code is relatively simple, and mostly calls other (stable, and mature) software solutions to do the heavy lifting. Think of simple bash
  scripts.

### Solution

* Think about the **desired results** (aka. desiderata) before working on any implementation logic. (Note that with `implementation logic`, we mean
  any code that will be called from the final, productive system.)
    * If these __desired results__ are of a sufficiently high level, we call them **Acceptance criteria**.
* Code automatic validation of this expected result. Most contemporary programming languages provide specific tools to write automated
  tests for your code.
    * When practicing Test-Driven Development, you write these tests before you write the code.
* Once your work is proven to satisfy these criteria, usually because your automated tests pass, you can consider it good enough to ship.
* Keep the desiderata around, and validate they still hold when you make changes to your system.
    * This is one the reasons writing automated tests during development is a big time-saver in the long run. As functionality grow, the amount of
      testing needed to prove your system still works correctly goes up dramatically.

### Measuring success

> [!STUB]
> How do we know if we applied the pattern succesfully? What are our _'red flags'_ that should
> trigger an adaption of the style of application?

### Examples

#### Use Cases / Testimonials

### References

* Beck, K. [Test Desiderata](https://kentbeck.github.io/TestDesiderata/), blogpost by Kent Beck on the properties of a good test.
* [approvaltests.com](https://approvaltests.com/), tooling to easily create an automated set of regression tests.