## Conventions for convenience

### Context

### Drivers

* We wish to maintain a higher level of code discipline, increasing the reliability of the code.
* Code is write-once, read-many.
* Humans are excellent at recognizing deviations from the norm.
* Reviewing code for consistency is a tedious task, that most prefer to avoid.
* We have a need for expressing our individuality.

#### Enablers

* Shared formal description of the conventions
    * works well if the reasoning for the convention is also documented
* Mature automation support

#### Deterrents

* Too many manual actions required to maintain the conventions
* Lack of easy access to source code (e.g. code within Excel macro's)

### Solution

* Define code-level conventions within your team (or for yourself)
    * Make sure not to over-restrict
    * Publish these in a central space
    * When working with others, routinely go over these conventions and update them as required
* Use automation to enforce the conventions
    * static code analysis tools can give you fast feedback
* Use automation to make the code follow the conventions
    * Make use of linters when possible

### Measuring success

* amount of bugs not caught by tests or review (lower is better)
* amount of lines adhering to the conventions (higher is better)

### Examples

#### Accidental thermonuclear war

A great example of this is using brackets in Java. While not strictly necessary to make your code compile or work, many teams
explicitly ask their developers to include brackets. Even on one-liner if statements. This particular convention tends to irk
newer developers who like their code to be as concise as possible. While brevity is a usually a good thing, at other times it can be confusing.
Take a quick look at the following code.

```java
public void failSafe(boolean thePresidentIsDead){
		if(thePresidentIsDead)
		System.out.println("OMG! You killed him. You bastards!");
		launchNukes();

		businessAsUsual();
		}
```

Take a closer look at the code snippet. Can you see the problem?
Failing to follow the convention of using brackets for every `if`-statement, combined with some bad indentation could
allow a world-shattering bug to slip through a code review. When the code is executed the nukes are always launched, regardless of
whether the president died or not.

### References

| Item                                                                    | Description                                                                 | 
|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [eslint](https://eslint.org/)                                           | Linting library for Javascript and Typescript                               |
| [mcandre/linters](https://github.com/mcandre/linters)                   | A comunity currated list of linters                                         |
| [Google Java Style](https://google.github.io/styleguide/javaguide.html) | Styleguide for java development, published by Google                        |
| [Sonar](https://www.sonarsource.com/products/sonarcloud/)               | Static code analysis tool                                                   |
| [ArchUnit](https://www.archunit.org/)                                   | Allows for testing of non-functional requirements and architectural designs |