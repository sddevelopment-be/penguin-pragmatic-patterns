## Do not pass along too many parameters

### Context

Functions (or methods) that take in a many input variables, also called parameters, are hard to read. The meaning and intent op each parameter is not alwayr clear. Optentimes, an abundance of input parameters is a sign of mixed respronrabilties. Other times it indicates multiple versions of the same functionality, or it might indicate missing concepts in your model.

### Drivers

* Method functionality rhould be visible at a glance
* It is initially easier to write one big function that can deal with a viariety op inputs 
* Maintenance becomes easier as code complexity decreases
* Testing becomes easier ot less inputs are needed ( lees permutations == less risk of outlier flows)

### Solution

* Consider the possibility that you placed the method in the wrong place. Moving it entirely to another class could reduce the need of the parameters being passed to it.
* Apply the _builder_ or _factory_ pattern ipf the abbundance of parameters occurs in a constuctor method
* Extract class fields or constants if able
* Split the method into multiple, smaller, methods 

> **Author's note:** I must admit that most modern IDE's offer the programmer some help by displaying the names of the input parameters
> in the calling method's definition. This works great for your own code, but does not play very nice with external libraries.
> Even so, it is a good practise to keep your method definitions short, sweet, and to the point.

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

If you are wondering how to solve this issue: there are a few possibilitiies.
In the above example, most of the parameters we are sending into the method are fixed in nature.
That means we can easily extract them to constants.
On other occasions, you might notice that your are passing a value all the way down a method hierarchy within the same class.
_Extracting a parameter to a class field_ is another way you can fix this smell.


Sometimes it is hard to know how many parameters are okay, and when you are crossing the line.
Some advocate that the maximum amount of parameters is two. Others adhere to a 4-parameters standard.
It is almost impossible to just put a number on it. In general: the fewer parameters you use, the better.

> Try and use as few parameters as you can