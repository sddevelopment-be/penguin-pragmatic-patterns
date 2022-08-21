# Practices

## Give it a name: Baptizing your code, models, and ideas

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> ~ Phil Karlton

In a surprising amount of fairy tales, myths, and legends the _"power of naming"_ is an ancient magical ability that allows you to control
things if you just know how it is
really called. Programming is not much different. If the entities and variables you work with have revealing names, a confusing piece of
code becomes very clear.
This clarity is achieved by simple renaming things to be expressive, a feat most modern IDE's can do for you at little cost.

### Context

As a software professional, you spend a lot of time reading code. Some of this code was written by yourself at an earlier point in time,
other code is written by others. You notice that functions or parameters have names that do not help you understand their intent.

If the code is significantly harder to read than your average fantasy novel, chances are the names of the `functions`, `parameters`,
and `variables` are in need of some attention and nursing.

### Drivers

- Holding a lot of different ideas in your brain is **mentally taxing**
- Poorly understood code leads to **lazy changes**, or introduction of **bugs** (aka. Code rot, Broken windows)
- The original author of the code is unlikely to be available to explain their intent
- Holding on to significant mental context makes **interruptions**, or context switches, more expensive
- As humans, we **understand text more easily** if we are given sufficient context, and understand most of the words that are used in the
  fragment.

### Solution

Give variables, methods, and classes a clear and descriptive name.  
A good name should:

- be a concept that can be used in natural speech (avoid abbreviations)
- not contain technical concepts
- aim to live in the problem domain, rather than the solution domain

If you are unable to find a good name:

- rethink your model
- browse a dictionary for alternative names
- try and extract part of your concept into something that you are able to baptize
- explain what you are trying to model to someone, and ask their input

### Examples

Consider the following code snippets, it is likely you understand the second iteration of the code a lot easier than the first one.
Some of you might even recognize it as the 'Bowling game
kata' [Popularized by Uncle Bob](butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata). To a compiler both code snippets are identical.
Humans however are not computers, Even though most developers would like them to be.

As humans we understand text fragments, including code, better if we are given sufficient context and if we understand most of the words
that are used in the fragment. Good code should allow anyone with a fundamental understanding of the language of choice to understand what
is going on at a glance. The older you get, the harder it becomes to keep a large stack of working knowledge in your head. If your code
requires you to hold a lot of this knowledge just to be able to understand what is going on, it is probably not very well written.

<!-- tabs:start -->

#### **original version**

```java
package be.doji.sandbox.kata;

public class Main {

    public static final int MRIG = 21;
    public static final int AMOUNT = 10;
    public static final int MAX = 10;

    private final int[] down = new int[MRIG];
    private int cr = 0;

    public void go(int input) {
        down[cr++] = input;
    }

    public int calcResult() {
        int result = 0;
        int counter = 0;
        for (int i = 0; i < AMOUNT; i++) {
            if (caseOne(counter)) {
                result += 10 + bonusOne(counter);
                counter += 1;
            } else if (caseTwo(counter)) {
                result += sum(counter) + bonusTwo(counter);
                counter += 2;
            } else {
                result += sum(counter);
                counter += 2;
            }
        }
        return result;
    }

    private boolean caseOne(int in) {
        return down[in] == MAX;
    }

    private boolean caseTwo(int in) {
        return sum(in) == MAX;
    }

    private int sum(int in) {
        return down[in] + down[in + 1];
    }

    private int bonusTwo(int in) {
        return down[in + 2];
    }

    private int bonusOne(int in) {
        return down[in + 1] + down[in + 2];
    }
}
```

#### **with names extracted**

```java
package be.doji.sandbox.kata;

public class Game {

    public static final int MAXIMUM_ROLL_IN_GAME = 21;
    public static final int AMOUNT_OF_FRAMES_IN_GAME = 10;
    public static final int MAX_PINS_PER_FRAME = 10;

    private final int[] pinsKnockedOver = new int[MAXIMUM_ROLL_IN_GAME];
    private int currentRoll = 0;

    public void roll(int pinsRolledOver) {
        pinsKnockedOver[currentRoll++] = pinsRolledOver;
    }

    public int score() {
        int score = 0;
        int rollCounter = 0;
        for (int frame = 0; frame < AMOUNT_OF_FRAMES_IN_GAME; frame++) {
            if (isStrike(rollCounter)) {
                score += 10 + strikeBonus(rollCounter);
                rollCounter += 1;
            } else if (isSpare(rollCounter)) {
                score += sumOfPinsKnockedOverInFrame(rollCounter) + spareBonus(rollCounter);
                rollCounter += 2;
            } else {
                score += sumOfPinsKnockedOverInFrame(rollCounter);
                rollCounter += 2;
            }
        }
        return score;
    }

    private boolean isStrike(int rollCounter) {
        return pinsKnockedOver[rollCounter] == MAX_PINS_PER_FRAME;
    }

    private boolean isSpare(int rollCounter) {
        return sumOfPinsKnockedOverInFrame(rollCounter) == MAX_PINS_PER_FRAME;
    }

    private int sumOfPinsKnockedOverInFrame(int rollCounter) {
        return pinsKnockedOver[rollCounter] + pinsKnockedOver[rollCounter + 1];
    }

    private int spareBonus(int rollCounter) {
        return pinsKnockedOver[rollCounter + 2];
    }

    private int strikeBonus(int rollCounter) {
        return pinsKnockedOver[rollCounter + 1] + pinsKnockedOver[rollCounter + 2];
    }
}
```

<!-- tabs:end -->


## Write 'Good Enough' Code

### Context

![Sometimes it is okay to keep it simple >](./overdesign.png ':size=380')

A mistake passionate programmers tend to make is to over-design simple things to make them theoretically and aesthetically more beautiful
than they need to be at that point in time. In doing so, they often end up spending much more time and mental effort on a piece of software
than is needed (or will ever be valuable).

### Drivers

* the level of refinement of a codebase should make sense for the problem at hand
* people like to show how clever they are
* readable code is easier to maintain
* thinking about future problems can help mitigate them
* unpredictability of future requirements
* development time costs a LOT of money
* not all code will have a significant lifespan

### Solution

* write code that is as well designed as it needs to be at this point in time.
* make sure the code you write at this point in time adheres to the basic principles of clean code and design
* when an idea for a more generic solution comes to mind during your implementation, take note of it and revisit it afterwards
* iteratively enhance the codebase when it makes sense to do so: when tackling a new code challenge, look for reusable components or
  structural improvements

> [!NOTE]
> This approach is also referred to as "avoiding gold plating"

### Examples

#### Self-diagnosis

Ask yourself:

* _"Is this code likely to be changed/expanded in the future?"_
* _"Is my design solving an issue that is here NOW, or am I solving an issue that might never happen?"_
* _"If this expected issue occurs in the future, can it be easily fixed at that time"_

### Indicators

* Throughput time of changes
* Regression introduced during tasks
* Function point count of changes
* Cyclic complexity
* Readability

### Related Resources

| Item                                                                                                | Description                                                                                                                                                           | Action                                                                                                                                                                                |
|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Enterprise Quality FizzBuzz](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition) | A prime example of overengineering something that can be done in a way more simple manner.                                                                            | Go through the codebase, and ask _"Why would you want to do this? And why is it overkill here?"                                                                                       |
| [The bowling game kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)            | A programming kata by uncle Bob. Apart from learning how he thinks, the exercise also focusses on suppressing your personal need to overly beautify a simple project. | Do the exercise and stop yourself from creating too many classes. Repeat the mantra: _"This is fine for now"_ to suppress your urges to add indirection or OO concepts to the design. |

---


## Do not pass along too many parameters

### Context

Functions (or methods) that take in a many input variables, also called parameters, are hard to read. The meaning and intent op each parameter is not always clear. Oftentimes, an abundance of input parameters is a sign of mixed responsibilities. Other times it indicates multiple versions of the same functionality, or it might indicate missing concepts in your model.

### Drivers

* Method functionality should be visible at a glance
* It is initially easier to write one big function that can deal with a variety of inputs
* Maintenance becomes easier as code complexity decreases
* Testing becomes easier ot less inputs are needed ( lees permutations == less risk of outlier flows)

### Solution

* Consider the possibility that you placed the method in the wrong place. Moving it entirely to another class could reduce the need of the parameters being passed to it.
* Apply the _builder_ or _factory_ pattern ipf the abundance of parameters occurs in a constructor method
* Extract class fields or constants if able
* Split the method into multiple, smaller, methods

> **Author's note:** I must admit that most modern IDE's offer the programmer some help by displaying the names of the input parameters
> in the calling method's definition. This works great for your own code, but does not play very nice with external libraries.
> Even so, it is a good practice to keep your method definitions short, sweet, and to the point.

### Examples

Let's revisit the code we looked at earlier. This time it's a version that does not comply with the unspoken rule of minimizing the amount
of parameters.

```java
private int score(int score, int rollCounter, int amountOfFramesInGame, int maxPinsPerFrame) {
	for(int frame = 0; frame < amountOfFramesInGame; frame++) {
		if(isStrike(rollCounter, maxPinsPerFrame)) {
			score += maxPinsPerFrame + strikeBonus(rollCounter);
			rollCounter += 1;
		} else if(isSpare(rollCounter)) {
			score += sumOfPinsKnockedOverInFrame(rollCounter) + spareBonus(rollCounter);
			rollCounter += 2;
		} else {
			score += sumOfPinsKnockedOverInFrame(rollCounter);
			rollCounter += 2;
		}
	}
	return score;
}
```

You might say this the four parameters do not look all too bad. At least the parameters have a clear name, that allows anyone that calls our
code to know what we expect. While this is true when you look at the receiving method, take a look at how it looks from the caller's point of view:


```java
public int main() {
    return score(0, 0, 10, 10);
}
```

If you are wondering how to solve this issue: there are a few possibilities.
In the above example, most of the parameters we are sending into the method are fixed in nature.
That means we can easily extract them to constants.
On other occasions, you might notice that your are passing a value all the way down a method hierarchy within the same class.
_Extracting a parameter to a class field_ is another way you can fix this smell.


Sometimes it is hard to know how many parameters are okay, and when you are crossing the line.
Some advocate that the maximum amount of parameters is two. Others adhere to a 4-parameters standard.
It is almost impossible to just put a number on it. In general: the fewer parameters you use, the better.

> Try and use as few parameters as you can