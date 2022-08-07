## Write 'Good Enough' Code

### Context

![Sometimes it is okay to keep it simple >](./overdesign.png ':size=380')

A mistake passionate programmers tend to make is to over-design simple things to make them theoretically and aesthetically more beautiful than they need to be at that point in time. In doing so, they often end up spending much more time and mental effort on a piece of software than is needed (or will ever be valuable).

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
* iteratively enhance the codebase when it makes sense to do so: when tackling a new code challenge, look for reusable components or structural improvements

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

| Item                                                                                                | Description                                                                                                                                                            | Action                                                                                                                                                                                |
| --------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Enterprise Quality FizzBuzz](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition) | A prime example of overengineering something that can be done in a way more simple manner.                                                                               | Go through the codebase, and ask _"Why would you want to do this? And why is it overkill here?"_                                                                                      |
| [The bowling game kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)            | A programming kata by uncle Bob. Apart from learning how he thinks, the exercise also focusses on suppressing your personal need to overly beautify a simple project. | Do the exercise and stop yourself from creating too many classes. Repeat the mantra: _"This is fine for now"_ to suppress your urges to add indirection or OO concepts to the design. |
