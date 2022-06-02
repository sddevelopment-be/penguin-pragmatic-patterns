## Give it a name: Baptizing your code, models, and ideas
 
> There are only two hard things in Computer Science: cache invalidation and naming things.
> 
> ~ Phil Karlton 

In a surprising amount of fairy tales, myths, and legends the _"power of naming"_ is an ancient magical ability that allows you to control things if you just know how it is
really called. Programming is not much different. If the entities and variables you work with have revealing names, a confusing piece of code becomes very clear.
This clarity is achieved by simple renaming things to be expressive, a feat most modern IDE's can do for you at little cost.  

### Context

As a software professional, you spend a lot of time reading code. Some of this code was written by yourself at an earlier point in time, other code is written by others. You notice that functions or parameters have names that do not help you understand their intent.

If the code is significantly harder to read than your average fantasy novel, chances are the names of the `functions`, `parameters`, and `variables` are in need of some attention and nursing.   

### Forces

- Holding a lot of different ideas in your brain is **mentally taxing**
- Poorly understood code leads to **lazy changes**, or introduction of **bugs** (aka. Code rot, Broken windows)
- The original author of the code is unlikely to be available to explain their intent
- Holding on to significant mental context makes **interruptions**, or context switches, more expensive
- As humans we **understand text more easily** if we are given sufficient context, and understand most of the words that are used in the fragment.

### Solution

Give variables, methods, and classes a clear and descriptive name.  
A good name should:
- be a concept that can be used in natural speach (avoid abreviations)
- not contain technical concepts
- aim to live in the problem domain, rather than the solution domain


If you are unable to find a good name:
- rethink your model 
- browse a dictionary for alternative names
- try and extract part of your concept into something that you are able to baptize
- explain what you are trying to model to someone, and ask their input

### Examples

Consider the following code snippets, it is likely you understand the second iteration of the code a lot easier than the first one. 
Some of you might even recognize it as the 'Bowling game kata' [Popularized by Uncle Bob](butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata). To a compiler both code snippets are identical. Humans however are not computers, Even though most developers would like them to be.

As humans we understand text fragments, including code, better if we are given sufficient context and if we understand most of the words that are used in the fragment. Good code should allow anyone with a fundamental understanding of the language of choice to understand what is going on at a glance. The older you get, the harder it becomes to keep a large stack of working knowledge in your head. If your code requires you to hold a lot of this knowledge just to be able  to understand what is going on, it is probably not very well written.


<!-- tabs:start -->

#### **original version**

````java
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
		for(int i = 0; i < AMOUNT; i++) {
			if(caseOne(counter)) {
				result += 10 + bonusOne(counter);
				counter += 1;
			} else if(caseTwo(counter)) {
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
````

#### **with names extracted**

````java
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
		for(int frame = 0; frame < AMOUNT_OF_FRAMES_IN_GAME; frame++) {
			if(isStrike(rollCounter)) {
				score += 10 + strikeBonus(rollCounter);
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
````

<!-- tabs:end -->


