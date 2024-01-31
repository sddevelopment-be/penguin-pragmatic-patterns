+++
title = "Let's not make it complicated"
author = "Stijn Dejongh"
problem = "You are spending much more time and mental effort on a piece of software than is needed or valuable."
description = "Write readable code that is as well designed as it needs to be at this point in time."
type = "practice"
categories = [
    "software development",
]
tags = [
    "elegance", "KISS", "YAGNI", "complexity"
]
uuid="94a558cd-4e86-4814-a5e9-d6ecafcb0d6b"
aliases=["94a558cd-4e86-4814-a5e9-d6ecafcb0d6b"]
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "1"},
  {name = "maintainable", delta = "0"},
  {name = "environmental", delta = "0"},
  {name = "reachable", delta = "1"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "-0.5"}
]
pubdate="2023-09-16"
+++

## Problem Statement

Programmers tend to over-design simple things to make them more capable, clever, or beautiful than they need to be at that point in time. 
In doing so, they often end up spending much more time and mental effort on a piece of software than is needed.  
Or worse: they build in functionality or capabilities that will never be used.

{{<image 
src="/images/practices/overdesign.png" 
alt="An image of a bicycle with a robotic rear wheel, looking highly complicated and over-engineered" 
>}}

## Intent

* Speed: Lower throughput time of changes
* Stability: Less regression or bugs introduced during tasks
* Lower function point count of changes
* Reduced cyclic complexity
* Improved readability

## Contextual forces

{{<whatis text=`
These describe factors at play that influence the outcome of the practice. They are not necessarily good or bad, but they are important to be
aware of. Some contextual forces are enablers, giving the practice a higher chance of being useful. Others are deterrents, making the practice less useful
in your given context.` >}}

### Enablers

* the level of refinement of a codebase should make sense for the problem at hand
* not all code will have a significant lifespan
* unpredictability of future requirements
* development time costs a LOT of money
* readable code is easier to maintain

### Deterrents

* people like to show how clever they are
* thinking about future problems can help mitigate them

## Solution

* write code that is as well designed as it needs to be at this point in time.
* make sure the code you write at this point in time adheres to the basic principles of clean code and design
* when an idea for a more generic solution comes to mind during your implementation, take note of it and revisit it afterwards
* iteratively enhance the codebase when it makes sense to do so: when tackling a new code challenge, look for reusable components or
  structural improvements.

### Self-diagnosis

In order to avoid over-complicating your code, ask yourself:
* _"Is this code likely to be changed/expanded in the future?"_
* _"Is my design solving an issue that is here NOW, or am I solving an issue that might never happen?"_
* _"If this expected issue occurs in the future, can it be easily fixed at that time?"_

## Examples

### How not to do it: Enterprise Quality FizzBuzz

FizzBuzz is a children's game well known to software developers, as it is commonly used as a training exercise or interview question. 
The aim is to write a program that counts to a given number. When the current count is divisable by 3, the program should print out `Fizz` rather 
than the current count. When the current count is divisible by 5, it should print out `Buzz`. When divisible by both, we expect `FizzBuzz`.
The FizzBuzz exercise aims to gauge basic programming aptitude, such as the use of loops and accumulators.

Usually, one can write a program to do this in a dozen lines of code. As satire to the tendency of programmers in big corporations to 
overcomplicate their code, people have co-created a version of this program that counts upwards of 10'000 lines of code.
This marvel of overengineering is available online on [github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition)

To give you an idea of how far the authors took it: the Enterprise FizzBuzz system uses Spring, and implements nearly all Go4 patterns.  
The class below shows a strategy-injection visitor to determine which output formatter to use for a given number. 

```java
/**
 * Context for FizzBuzzOutputGeneration
 */
public final class FizzBuzzOutputGenerationContext implements OutputGenerationContext {

	private final DataPrinter printer;
	private final IsEvenlyDivisibleStrategy strategy;

	/**
	 * @param strategy IsEvenlyDivisibleStrategy
	 * @param printer DataPrinter
	 */
	public FizzBuzzOutputGenerationContext(final IsEvenlyDivisibleStrategy strategy,
			final DataPrinter printer) {
		super();
		this.strategy = strategy;
		this.printer = printer;
	}

	/**
	 * @return
	 */
	@Override
	public DataPrinter getPrinter() {
		return this.printer;
	}

	/**
	 * @return
	 */
	@Override
	public IsEvenlyDivisibleStrategy getStrategy() {
		return this.strategy;
	}

}
```

## References

* {{<reference author="Nauerby, E. M.; Kragbæk, M.; et al."
  year="2019"
  title="FizzBuzz: Enterprise Edition"
  site="github.com"
  link="https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition" >}}
* {{<reference author="Martin R."
  year="2005"
  title="The Bowling Game Kata"
  site="butunclebob.com"
  link="http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata" >}}
* {{<reference author="Keeling, M."
  year="2017"
  isbn="1680502093"
  title="Design It: From Programmer to Software Architect"
  publisher="The Pragmatic Bookshelf"
  link="https://pragprog.com/titles/mkdsa/design-it/" >}}


---
