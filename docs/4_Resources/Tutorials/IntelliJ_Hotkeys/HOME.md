# IntelliJ_Hotkeys

## License

Example code in this series is published under the MIT License, by it's original creator.

> The MIT License (MIT)
>
> Copyright (c) 2016 Tim Schraepen
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.



## Tutorial Outline

> Code with exercises to learn shortcuts and their associated thinking patterns
> Based on the repository [ProductivityWithShortcuts](https://github.com/Sch3lp/ProductivityWithShortcuts) by [Tim Schraepen](https://github.com/Sch3lp).

Each chapter contains a thorough explanation and a set of exercises. 
Even though the progression in these chapters might seem to be increasing in difficulty, you don't need to think of them as thresholds.
The main reason this series is divided into chapters is to help your brain make new neural pathways even better by trying to categorize certain types of shortcuts. This way, we hope you'll think of Using them more frequently in real life.


### What you'll learn
* Increase your productivity by using IntelliJ shortcuts.
* Think along with your pair, who's already proficient in using shortcuts.
* In what situations/contexts shortcuts are helpful.
* Some patterns for multi-cursor usage.

### How you'll learn
By doing! The only way to get shortcuts into mussle memory is by using them. **All.** **The.** **Time.**
This tutorial series provides a structured aproach to learn productivity shortcuts Using incrementally challenging 
exercises that will help you move forward at a consistent pace.

### Good Luck, Have Fun!
If you like these exercises, share them with your friends and colleagues, and drop a line to thank the [original author](https://github.com/Sch3lp).

---



# Chapter 1 - Basics

## Copy and Pasting

````java
public class Chapter1 {

    private String name;
    private int number;

    public Chapter1(String name, int number) {
        this.name = name;
        this.number = number;
    }

    // Exercise 1
    // Copy the Chapter1 constructor to create a new one without a number, have the default number be 0.

    // Exercise 2
    // Do the same but with a default name of "Chapter". This time only use your keyboard.

    // Exercise 3
    // Try to repeat Exercise 1, but instead of ctrl+c and ctrl+v, use ctrl+shift+a to look up your copy and paste actions
}
````

<!-- tabs:start -->

### **Windows**
Using `ctrl`+`c`, `ctrl`+`v`, copy the Chapter1 constructor to create a new one without a number, initialize the `number` field to the default value of `0`.    
Use your mouse to select text, then press `ctrl`+`c` to copy the selected text.  
Use your mouse to move your cursor to somewhere else, then press `ctrl`+`v` to paste the selected text.  

### **Mac**
Using `⌘ `+`c`, `⌘ `+`v`, copy the Chapter1 constructor to create a new one without a number, initialize the `number` field to the default value of `0`.    
Use your mouse to select text, then press `⌘ `+`c` to copy the selected text.  
Use your mouse to move your cursor to somewhere else, then press `⌘ `+`v` to paste the selected text.  

<!-- tabs:end -->

## Keep your hands on your keyboard
Do the same exercise, but **ONLY** use your keyboard to select text.

## How to look up any actions' shortcut


<!-- tabs:start -->
### **Windows**
Repeat Exercise 1, but instead of uring `ctrl`+`c` and `ctrl`+`v`, use `ctrl`+`⇧`+`a` to look up your copy and paste actions in the quick help menu.  
Alternatively, you can double-tab the `⇧` key do open the quick action menu.

### **Mac**

Repeat Exercise 1, but instead of uring `⌘`+`c` and `⌘`+`v` use `⇧`+`⌘ `+`a` to look up your copy and paste actions in the quick help menu.  
Alternatively, you can double-tab the `⇧` key do open the quick action menu.
<!-- tabs:end -->

## IntelliJ's _Productivity Guide_
Open IntelliJ's Productivity Guide using these key combinations:
First press ![Windows](icons/glyph-windows-20.png)`alt+h` for _(H)elp_ (in the taskbar), then press `p` to select _(P)roductivity Guide_.

## Bonus
Try opening the Productivity Guide using ![Windows](icons/glyph-windows-20.png)`ctrl+shift+a`.

## Indenting, formatting with ![Windows](icons/glyph-windows-20.png)`tab`, `shift+tab`
Open Fugly.java, use selection and indent the test builder patterns properly.

Hint: First ![Windows](icons/glyph-windows-20.png)`shift+tab` everything until the entire selection is against the left side, then `tab` the entire selection into its first indentation, decrease your selection and `tab` that into its second indentation. Rinse and repeat.

## Auto-indent with ![Windows](icons/glyph-windows-20.png)`ctrl+alt+l`
Open FuglyToo.java, select a couple of lines starting with the `.withFace(face()` line and press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+l`.

Now empty your selection (select nothing), and press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+l` again.

## Undo, Redo ![Windows](icons/glyph-windows-20.png)`ctrl+z` and ![Windows](icons/glyph-windows-20.png)`ctrl+shift+z`
In most editors, Redo is mapped to ![Windows](icons/glyph-windows-20.png)`ctrl+y`. Not in IntelliJ. This can lead to hilarious (or super annoying) situations where you'll lose your _undo buffer_.

Let's try it out and see what happens so you'll remember it better.

Open FuglyToo.java once more.

Add a comment above the method that reads `// this method is fugly`.

Add a comment on a new line that reads `// such fugliness should never be allowed`.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+z` (_Undo_) and see what happens.

Press it a couple times.

Now press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+z` (_Redo_) and see what happens.

Add three comments each on a different line:
```
// herpty
// derpty
// derp
```
After you've typed the last line, press ![Windows](icons/glyph-windows-20.png)`ctrl+z` until you only have `// herpty` left.

As most people will have the reflex to press ![Windows](icons/glyph-windows-20.png)`ctrl+y` to _Redo_ their work, let's see what happens when we do just that.

So try ![Windows](icons/glyph-windows-20.png)`ctrl+y`, then try ![Windows](icons/glyph-windows-20.png)`ctrl+shift+z` like you meant to do.

Try ![Windows](icons/glyph-windows-20.png)`ctrl+z` and see what that does. Try ![Windows](icons/glyph-windows-20.png)`ctrl+shift+z` again now.

Keep this in mind when you work in IntelliJ, or in another editor that doesn't have ![Windows](icons/glyph-windows-20.png)`ctrl+y` for _Redo_ :)

[_Next Chapter_](chapter2.md)

[_Back to outline_](outline.md)


# Chapter 2 - Navigation
[_Back to outline_](outline.md)
## Word-skipping ![Windows](icons/glyph-windows-32.png)`ctrl+arrows`
Open Chapter2.java, place your cursor in front of the `The` of the popular phrase, and tap ![Windows](icons/glyph-windows-20.png)`ctrl+right` 8 times.

You should now have your cursor at the beginning of the word `camel`.

## Begin/End of Line ![Windows](icons/glyph-windows-32.png)`home`, `end`
Still in Chapter2.java, place your cursor at the start of the popular phrase, and do ![Windows](icons/glyph-windows-20.png)`end`.
Press ![Windows](icons/glyph-windows-20.png)`home` once, look at your position, then press ![Windows](icons/glyph-windows-20.png)`home` again and see what happens.
Press ![Windows](icons/glyph-windows-20.png)`home` one more time and again look at what happens.

If you wanna see a stroboscope effect, put your cursor at the beginning of the word ![Windows](icons/glyph-windows-20.png)`return`, hold down ![Windows](icons/glyph-windows-20.png)`shift+home`. ;)

## Begin/End of File ![Windows](icons/glyph-windows-32.png)`ctrl+home`, `ctrl+end`
Try out ![Windows](icons/glyph-windows-20.png)`ctrl+home` and ![Windows](icons/glyph-windows-20.png)`ctrl+end` in Chapter2.java.

## CamelHumps (+ how to toggle)
In Chapter2.java, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with ![Windows](icons/glyph-windows-20.png)`ctrl+right` on that method.

Depending on your CamelHumps setting, your cursor either ended up on the `Q` or it skipped the entire method name and you ended up on the `(`.

Return to the beginning of the method name and press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+a`, then type `CamelHump`. There should be a setting `Smart Keys: Use "CamelHumps" words` with a toggle button.

Navigate to that option and select it by pressing ![Windows](icons/glyph-windows-20.png)`Enter`, then press ![Windows](icons/glyph-windows-20.png)`Escape` to cancel out of the action menu.

Try to use _Skip Word_ again with ![Windows](icons/glyph-windows-20.png)`ctrl+right`.

Other tools, like SublimeText, have different key combination to skip the entire word (![Windows](icons/glyph-windows-20.png)`ctrl+right`), or skip based on CamelCasing (![Windows](icons/glyph-windows-20.png)`alt+right`).

## Jumping methods ![Windows](icons/glyph-windows-32.png)`alt+up,down`
Put your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.

Keep pressing ![Windows](icons/glyph-windows-20.png)`alt+down` and see what happens.

Keep pressing ![Windows](icons/glyph-windows-20.png)`alt+up` and see what happens.

## Jump to "error" ![Windows](icons/glyph-windows-32.png)`F2`
Move to the top of the file with ![Windows](icons/glyph-windows-20.png)`ctrl+Home` and from there press ![Windows](icons/glyph-windows-20.png)`F2`.

This should navigate your cursor to the class name `Chapter2` because IntelliJ marks it as _unused_.

If you keep pressing ![Windows](icons/glyph-windows-20.png)`F2` it should keep cycling your cursor over the _unused warnings_.

In between the methods `jump()` and `camel()`, paste the following:

```
privet String kakdilla() {
    "horocho";
}
```

Move to the top of the file again, and press ![Windows](icons/glyph-windows-20.png)`F2` once again.

Notice how the cursor now first jumps to the actual compilation error (`privet` cannot be resolved).

Cycling also happens only over all the actual _errors_, and _unused warnings_ are not cycled anymore.

## Jump into ![Windows](icons/glyph-windows-32.png)`ctrl(+alt)+b`
Jump into, or "drill down" as I like to call it, allows you to follow the path that code execution makes at runtime.

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to Chapter2.jumpUsingStrategy() and place your cursor on the jump() method call. Press ![Windows](icons/glyph-windows-20.png)`ctrl+b`, this should bring you to the interfaces `jump()` method.

Now go back to where you came from, and press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+b`. IntelliJ knows you want to "drill down" into the actual method implementation but doesn't know which one, so it will suggest two options. Pick the `MehJumper` by pressing `down` and then ![Windows](icons/glyph-windows-20.png)`enter` and see where it leads you.

Then correct the typo and move on to the next exercise.

## History and its importance ![Windows](icons/glyph-windows-32.png)`ctrl+alt+left,right`
In the previous exercise we drilled down into a method call and changed stuff, but sometimes you want to trace back your steps.

Repeat the previous exercise, or if you're still at the last position of the previous exercise you can continu on from there.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+left` to go back where you came from. This should have brought you back to the `Chapter2.java` class.

Now repeat the previous exercise, but pick the `EpicJumper` and also fix the typo. Then go back again using ![Windows](icons/glyph-windows-20.png)`ctrl+alt+left`.

Also try backtracking your backtrack by pressing `ctlr+alt+right`.

**Please note**: every time you use Navigation shortcuts that bring you to new classes, IntelliJ will remember this in a sort of Navigation History.

## Jump to last edit position ![Windows](icons/glyph-windows-32.png)`ctrl+shift+backspace`
From the end of previous exercise, make sure you're back in the `Chapter2.java` class and press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+backspace` to go back to where you were last editing.

Try pressing it again and see what happens.

## Show in Project ![Windows](icons/glyph-windows-32.png)`alt+F1`
Open `MehJumper` by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+n`, then press ![Windows](icons/glyph-windows-20.png)`alt+F1`. It should open up the `Project` sidebar with MehJumper selected.

Press ![Windows](icons/glyph-windows-20.png)`alt+1` (**not F1**) to minimize the sidebar and get focus back to your editor.

## ![Windows](icons/glyph-windows-32.png)`alt+F7` vs. ![Windows](icons/glyph-windows-32.png)`ctrl+alt+h` vs. ![Windows](icons/glyph-windows-32.png)`ctrl+b`
Checkout the `mud` package. It's got your typical layered application where we pass around a `Ball` through all of the layers.

Let's see what the different shortcuts mentioned in the title actually do.

### ![Windows](icons/glyph-windows-32.png)`alt+F7`
This shows the usage of anything, be it a class, a method or a field in a separate _Tool Window_.

Open (![Windows](icons/glyph-windows-20.png)`ctrl+n`) `Ball.java`, navigate to `getId()` and press ![Windows](icons/glyph-windows-20.png)`alt+F7`.

### ![Windows](icons/glyph-windows-32.png)`ctrl+alt+h`
This shows the call hierarchy of how code got to the place you're starting from.

Repeat the previous exercise, but instead press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+h`.

Navigate the tree with the arrow keys, and select with ![Windows](icons/glyph-windows-20.png)`ctrl+enter` (or `F4` if you directly want to navigate to the code).

Pro-tip: move this _Tool Window_ to the bottom bar (next to `3: Find`), because you'll usually want horizontal space instead of vertical.

### ![Windows](icons/glyph-windows-32.png)`ctrl+b`
This will show the usage in a popup window (![Windows](icons/glyph-windows-20.png)`Escape`able).

Particularly handy to show read or write usage on a field.

Navigate to the `return id;` and put your cursor on `id`.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+b` once, this should navigate to the field itself.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+b` again, now it should show a popup asking if you want to show accessors of the field. Let's go with _Yes_. :)

## Jump to line ![Windows](icons/glyph-windows-32.png)`ctrl+g` (example with paste from stacktrace)
Here's a strip of a stacktrace.

    java.lang.NullPointerException
      at be.swsb.productivity.chapter2.mud.service.BallServiceImpl.findBall(BallServiceImpl.java:18)
      at be.swsb.productivity.chapter2.mud.ui.BallScreen.render(BallScreen.java:15)
      at be.swsb.productivity.chapter2.mud.ui.BallScreenTest.screenCallsStuff(BallScreenTest.java:11)
      at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
      at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
      at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
      at java.lang.reflect.Method.invoke(Method.java:497)
      at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
      at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
      at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
      at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
      at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:271)
      at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:70)
      at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:50)
      at org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)
      at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)
      at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)
      at org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)
      at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)
      at org.junit.runners.ParentRunner.run(ParentRunner.java:309)
      at org.junit.runner.JUnitCore.run(JUnitCore.java:160)
      at com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:119)
      at com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:42)
      at com.intellij.rt.execution.junit.JUnitStarter.prepareStreamsAndStart(JUnitStarter.java:234)
      at com.intellij.rt.execution.junit.JUnitStarter.main(JUnitStarter.java:74)
      at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
      at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
      at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
      at java.lang.reflect.Method.invoke(Method.java:497)
      at com.intellij.rt.execution.application.AppMain.main(AppMain.java:144)

Let's see where the NullPointer is occurring and open ![Windows](icons/glyph-windows-20.png)`ctrl+n` BallServiceImpl, and use ![Windows](icons/glyph-windows-20.png)`ctrl+g` to enter line `18`, as it states in the second line of the Stacktrace.

## Navigate to method ![Windows](icons/glyph-windows-32.png)`ctrl+F12`
### Paste from stacktrace
Another way of navigating to the place where the NullPointer occurs, albeit less exact, is to first copy the method from the stacktrace, in this case `findBall`.

Then open ![Windows](icons/glyph-windows-20.png)`ctrl+n` BallServiceImpl, press ![Windows](icons/glyph-windows-20.png)`ctrl+F12`, which lists all methods of a class, and paste the method from the stacktrace in that popup window. You can then press ![Windows](icons/glyph-windows-20.png)`Enter` and navigate to that method.

### Quick check equals impl
Want to write a comparator for some object, or want to use it in a Set? You'll want to know about that objects `equals()` implementation.

If that object is chock full of other methods, it might be easier to tap ![Windows](icons/glyph-windows-20.png)`ctrl+F12` to check for an equals implementation. If you can't find it from the first try, tap ![Windows](icons/glyph-windows-20.png)`ctrl+F12` again to browse the methods of the superclass as well.

Let's open `RealBall` with ![Windows](icons/glyph-windows-20.png)`ctrl+n`, and try to find out if this class has its own `equals` and `hashcode` implementation, or if it uses its superclass implementations.

[_Next Chapter_](chapter3.md)

[_Back to outline_](outline.md)

# Chapter 3 - Selection
[_Back to outline_](outline.md)
## Move + Select ![Windows](icons/glyph-windows-32.png)`ctrl+shift+arrows`
Open `Chapter3.java`, then move your cursor to the beginning of `"jumps over"`, hold down ![Windows](icons/glyph-windows-20.png)`ctrl` and ![Windows](icons/glyph-windows-20.png)`shift` and press the ![Windows](icons/glyph-windows-20.png)`right` arrow to select that sentence and cut and paste it behind the first line.

## Expand Selection ![Windows](icons/glyph-windows-20.png)`ctrl+w`
Press ![Windows](icons/glyph-windows-20.png)`ctrl+n` and open `Fugly.java`.

Move your cursor to line 23, column 28 by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+g` and typing `23:28`.

From that position press ![Windows](icons/glyph-windows-20.png)`ctrl+w`, keep pressing it again, and see what happens.

What happens if you keep on pressing it?

Try using ![Windows](icons/glyph-windows-20.png)`ctrl+shift+w` and see what that does.

What happens if you keep on pressing that combination?

## Using Selection to help Navigation (e.g. Fluent API)
Because ![Windows](icons/glyph-windows-20.png)`ctrl+w` expands a selection, and because the arrow keys decide where our cursor is going to be: ![Windows](icons/glyph-windows-20.png)`left` at the beginning or ![Windows](icons/glyph-windows-20.png)`right` at the end of the selection.

We can use a little trick to format our Fluent API.

Format the one-liner so that it looks like the method below. You can do this by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+w` until you have a selection containing a "method call", e.g. `fugly()`, then press `right` to put your cursor at the end, and press ![Windows](icons/glyph-windows-20.png)`enter`.

Rinse and repeat.

## Wrapping (IntelliJ feature)
IntelliJ has a neat feature that wraps your selection with braces, curly braces, single or double quotes, ...

You can enable this feature under `Settings` by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+alt+s`, then go to `Editor > General > Smart Keys`, and enable `Surround selection on typing quote or brace`.

An alternative is by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+shift+a`, and then type `Smart Keys Braces`.

Fix the `wrapStuff` method by selecting `"efffff"` with ![Windows](icons/glyph-windows-20.png)`ctrl+w`, and then type a `"`.

Then apply the same pattern to `yewwww` but instead of a `"`, type a `(`.

Then apply the same pattern to the entire method body but type a `{`.

This feature really shines in combination with multi-cursor (which we'll see in a later chapter).

[_Next Chapter_](chapter4.md)

[_Back to outline_](outline.md)

# Chapter 4 - Line Editing
[_Back to outline_](outline.md)

Pro-tip: [Listen to this while solving the exercises](https://www.youtube.com/watch?v=DcU4_FuZIkI)

##Duplicate line ![Windows](icons/glyph-windows-32.png)`ctrl+d`
Open `Chapter4.java`, move your cursor to line 6, press ![Windows](icons/glyph-windows-20.png)`ctrl+d`.

##Yank ![Windows](icons/glyph-windows-20.png)`ctrl+y`
Press ![Windows](icons/glyph-windows-20.png)`ctrl+y` repeatedly to delete the lines.

##Moving lines with and without constraints ![Windows](icons/glyph-windows-20.png)`ctrl+shift+up,down` vs. ![Windows](icons/glyph-windows-20.png)`alt+shift+up,down`
Right now in `Chapter4.java`, the `System.out.println`'s are switched around.

Place your cursor on one of the `System.out.println`'s, hold down ![Windows](icons/glyph-windows-20.png)`alt+shift` and press ![Windows](icons/glyph-windows-20.png)`up` or ![Windows](icons/glyph-windows-20.png)`down` to move that line.

Do the same for the other line.

Now the methods aren't in order yet, so place your cursor on `_2_snarf`'s method signature, but this time hold down ![Windows](icons/glyph-windows-20.png)`ctrl+shift` and press `up` or `down` to move the entire method.

##Start new line ![Windows](icons/glyph-windows-32.png)`shift+enter`
In `Chapter4.java`, go to 20:20. From this position we want to start implementing the methods body.

Typically, one would do this by pressing `end`, and then `enter`. But you can do this in one go by pressing ![Windows](icons/glyph-windows-20.png)`shift+enter`, so let's do just that.

It'll come in handy later.

##Join lines ![Windows](icons/glyph-windows-32.png)`ctrl+shift+j`
We want to write the return statement of `_4_thundercats()` on just one line.

Don't do `end`, `delete`, `end`, `delete`, ...

Instead, first select all of the thundercats names (the strings), then press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j` (for Join lines). Hint: ![Windows](icons/glyph-windows-20.png)`ctrl+w` right after the `{`.

You might have to repeat the ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j` combination, because IntelliJ's auto-formatting kicks in sometimes.

[_Next Chapter_](chapter5.md)

[_Back to outline_](outline.md)

# Chapter 5 - Embedded Windows
[_Back to outline_](outline.md)

IntelliJ has various _Tool Windows_, like the `1: Project` window, `9: Version Control` window, or `3: Find` window. When one of these _embedded_ windows have focus, other shortcuts are available.

In this topic we'll talk about some of them.

## Opening/Closing (Toggling) ![Windows](icons/glyph-windows-32.png)`alt+number` ![Windows](icons/glyph-windows-32.png)`ctrl+F4`
All of these windows are accessible by holding down ![Windows](icons/glyph-windows-20.png)`alt` and pressing the associating number.
e.g. If you want to open or close the `1: Project` window, you press ![Windows](icons/glyph-windows-20.png)`alt+1`.

## Switching tabs ![Windows](icons/glyph-windows-32.png)`alt+left,right`
Some of these windows have multiple tabs in them, i.e. the `6: TODO` window. So let's open that with ![Windows](icons/glyph-windows-20.png)`alt+6`.

You'll notice that it contains the _Project_, _Current File_, _Scope Based_ and _Default Changelist_ tabs.

You can switch between these tabs by pressing ![Windows](icons/glyph-windows-20.png)`alt+right` and ![Windows](icons/glyph-windows-20.png)`alt+left`.

Give it a try!

## Navigation from Embedded Windows ![Windows](icons/glyph-windows-32.png)`ctrl+enter` vs. ![Windows](icons/glyph-windows-32.png)`F4`
Some Tool Windows will display results, like `3: Find` and `8: Hierarchy`, which you can use to navigate to directly.

There's two ways of doing this:
* ![Windows](icons/glyph-windows-20.png)`ctrl+enter`: allows you to navigate to your selected result, but focus remains on your Tool Window
* ![Windows](icons/glyph-windows-20.png)`F4`: navigates to your selected result AND focuses the editor window in one go.

Let's try 'em both out.

We want to follow the path the code takes at runtime until we get to `CoffeeBeans.scent()`, so let's trace back our steps from there by opening `CoffeeBeans.java`, and ![Windows](icons/glyph-windows-20.png)`ctrl+alt+h` on the `scent()` method.

![Windows](icons/glyph-windows-20.png)`ctrl+enter` on `CoffeeSmeller.smell()`, see where it takes you, then ![Windows](icons/glyph-windows-20.png)`ctrl+enter` on `Chapter5.smellBeans()`.

We figured out we want to change something in `CoffeeSmeller`, so select `CoffeeSmeller` in the `8: Hierarchy` tool window and instead of pressing ![Windows](icons/glyph-windows-20.png)`ctrl+enter`, press `F4`.

Now we can change the implementation.

## Why resizing is for dummies ![Windows](icons/glyph-windows-32.png)`ctrl+shift+F12`
Stop resizing your _Tool Windows_, use them when you need them (see _Opening/Closing (Toggling)_).

If you don't need your _Tool Window_, you'll want to focus back on your editor window. You can do this from anywhere (meaning, from any focussed _Tool Window_) by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+shift+F12`.

So, let's first imagine we were looking at a hierarchy of `CoffeeBeans.scent()`, we looked at `CoffeeSmeller`'s use and we checked where in the package structure `CoffeeSmeller` was situated by pressing ![Windows](icons/glyph-windows-20.png)`alt+F1`.

Now we have both the `1: Project` and `8: Hierarchy` _Tool Windows_ open. But we want to continue tweaking the CoffeeSmellers code, so let's press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+F12` and get our focus back on where it belongs, without any distractions.

Happy editing!

[_Next Chapter_](chapter6.md)

[_Back to outline_](outline.md)

# Chapter 6 - IntelliJ's Suggestions
[_Back to outline_](outline.md)
## IntelliJ's Auto-correct ![Windows](icons/glyph-windows-32.png)`ctrl+shift+enter`
Sometimes we make mistakes, mistakes that will take us into the deepest pits of bracket hell.

Thank God there's IntelliJ, trying to auto-correct our mistakes.

Let's open (![Windows](icons/glyph-windows-20.png)`ctrl+n`) `Chapter6.java`, a class with many mistakes (and (a hell of (a lot of)) brackets).

Let's see what IntelliJ can do for us to fix the mistakes by pressing ![Windows](icons/glyph-windows-20.png)`F2` to navigate quickly to the first error, and press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+enter`.

Press ![Windows](icons/glyph-windows-20.png)`F2` again and let's see if IntelliJ can auto-fill the missing semicolon.

Press ![Windows](icons/glyph-windows-20.png)`F2` again and see if it can auto-correct an incomplete method.

Undo (![Windows](icons/glyph-windows-20.png)`ctrl+z`) your last auto-correct and type out `public void poo(` above the comment line.

It's basically the same thing we tried to auto-correct just a few seconds ago. The only difference is that there are now two "incomplete" error statements.

Try pressing ![Windows](icons/glyph-windows-20.png)`ctrl+shift+enter` anyways and see what happens.

## Autocomplete ![Windows](icons/glyph-windows-32.png)`ctrl+space` vs. ![Windows](icons/glyph-windows-32.png)`ctrl+shift+space`
Open `Transformers.java`. Try to autocomplete the constructor of our old friend `optimus`. (Hint: ![Windows](icons/glyph-windows-20.png)`F2` to quickly navigate to the missing constructor argument)

First try pressing ![Windows](icons/glyph-windows-20.png)`ctrl+space` to have IntelliJ give you an autocomplete suggestion. You'll notice that eventhough the constructor only expects an `AutobotEnum`, IntelliJ still suggest a bunch of other stuff like `new`, `null`, `equals()`, etc.

`Escape` out of the suggestion window and let's try the alternative ![Windows](icons/glyph-windows-20.png)`ctrl+shift+space`. This makes IntelliJ way more helpful.

Before selecting one of the `AutobotEnum` suggestions, try pressing ![Windows](icons/glyph-windows-20.png)`ctrl+shift+space` again.

That's right, there's a static method `Autobot.optimusEnum()` that also returns an `AutobotEnum`, IntelliJ knows about this method as well.

Try it out again to construct `Optimus`' nemesis, `Megatron`.

### Autocomplete selection confirmation
After you used ![Windows](icons/glyph-windows-20.png)`ctrl+shift+space` or ![Windows](icons/glyph-windows-20.png)`ctrl+space`, confirming your selection can be done in multiple ways.

* Pressing `Enter` straight up completes the code.
* Pressing `Tab` replaces code that was there before.
* Pressing `.` completes the code and suffixes a `.` so you can continu typing
* Pressing `space` does the same but suffixes with a `space`. (this is different from regular suggestion after typing a `.`!)

Right now `Optimus` has a `.catchphrase` method that takes a prefix. Since it's always _\<prefix\> Rollout!_ we can rename that method to `rollout`.

Let's _navigate_ to the `.catchphrase` method with ![Windows](icons/glyph-windows-20.png)`ctrl+alt+b`. Then simply delete `catchphrase` and replace it with `rollout` (don't use ![Windows](icons/glyph-windows-20.png)`shift+F6`).

Then go back to the `Transformers` class with ![Windows](icons/glyph-windows-20.png)`ctrl+alt+left`, and autocomplete to use the new `rollout` method instead of the previous, non-compiling `catchPhrase` method. First try using `Enter` as your selection confirmation, see what happens. Then undo with ![Windows](icons/glyph-windows-20.png)`ctrl+z`, retry autocompletion and use `Tab` as your selection confirmation.

Rinse and repeat with the other ways listed above.

## _QuickFix_ (:bulb:) ![Windows](icons/glyph-windows-32.png)`alt+enter`
_QuickFix_ is magical. It's your go to shortcut for almost everything.

Creating a new constructor? ![Windows](icons/glyph-windows-20.png)`alt+enter`

Creating getters (and setters) for newly created fields? ![Windows](icons/glyph-windows-20.png)`alt+enter`

Extracting a method out of selected code? ![Windows](icons/glyph-windows-20.png)`alt+enter`

Extracting a variable? ![Windows](icons/glyph-windows-20.png)`alt+enter`

Code not compiling? ![Windows](icons/glyph-windows-20.png)`alt+enter`

Cure cancer? ![Windows](icons/glyph-windows-20.png)`alt+enter`

The list goes on and on.

So really, if there's one shortcut you should remember it's this one.

## Creating _stuff_ ![Windows](icons/glyph-windows-32.png)`alt+insert`
Try out these things using ![Windows](icons/glyph-windows-20.png)`alt+insert`:
* Create a new package from the `1: Project` _Tool Window_ to create a new class in the next step.
* Create a new class from the `1: Project` _Tool Window_.
* Create a new constructor in that class from the editor.

## Deleting _stuff_ ![Windows](icons/glyph-windows-32.png)`alt+delete`
Let's delete all the stuff we created in the previous step using ![Windows](icons/glyph-windows-20.png)`alt+delete`.
* Delete the constructor you just created
* Delete the class you just created (the package will probably be deleted automatically because it was the only class in there)

## View JavaDoc ![Windows](icons/glyph-windows-32.png)`ctrl+q`
Open `Transformers.java`, and move your cursor to `Autobot`.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+q` to view the JavaDoc of the `Autobot` class. `Escape` out of this window.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+q` twice to get a bigger (and separate) window. Notice that you can not simply `Escape` out of this separate window. You can however close it by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+q` one more time and then `Escape` out of it.

![Windows](icons/glyph-windows-20.png)`ctrl+q` is also available from inside the autocompletion suggestion box. Try to call `.toString()` after your `new Autobot()` statement while using autocompletion (either by typing `.` or by ![Windows](icons/glyph-windows-20.png)`ctrl+space`'ing).

While still in the autocompletion suggestion, navigate to the `.toString()` option and press ![Windows](icons/glyph-windows-20.png)`ctrl+q` to read the JavaDoc.

## View parameters ![Windows](icons/glyph-windows-32.png)`ctrl+p`
Not sure what parameters a method you're trying to use takes? Press ![Windows](icons/glyph-windows-20.png)`ctrl+p` while in the brackets of a method call and check what parameters you need.

In `Transformers.java`, let's try to create the _StarScream Decepticon_.

First uncomment the `// Decepticon.StarScream()` line.

Then put your cursor in between the brackets and type ![Windows](icons/glyph-windows-20.png)`ctrl+p`.

Notice how IntelliJ signals which parameter you're required to fill in by **emboldening** the parameter name.

[_Next Chapter_](chapter7.md)

[_Back to outline_](outline.md)

# Chapter 7 - Finding/Buffer
[_Back to outline_](outline.md)

Eventhough this is a small chapter, I thought it was worth including because it helps introduce the next chapter on Multicursors a little bit better.

## Find word and add to buffer ![Windows](icons/glyph-windows-32.png)`ctrl+F3`
Let's open `WOTW.md` with ![Windows](icons/glyph-windows-20.png)`ctrl+shift+n` and look for the word _Martians_ in the first sentence.

Select this word (![Windows](icons/glyph-windows-20.png)`ctrl+w`) and press ![Windows](icons/glyph-windows-20.png)`ctrl+F3` once. Now the word _Martians_ has been added to our _Find Buffer_ and we can find the next occurrence by pressing ![Windows](icons/glyph-windows-20.png)`F3`.

## Find next/previous occurrence from buffer ![Windows](icons/glyph-windows-32.png)`F3`/`shift+F3`

What happens when you keep on pressing ![Windows](icons/glyph-windows-20.png)`F3`?

What happens when you keep on pressing ![Windows](icons/glyph-windows-20.png)`shift+F3`?

Open `War.java`, position your cursor on `13:33` with ![Windows](icons/glyph-windows-20.png)`ctrl+g`. Select the `.` and press ![Windows](icons/glyph-windows-20.png)`ctrl+F3`.

Find the next `.`.

[_Next Chapter_](chapter8.md)

[_Back to outline_](outline.md)

# Chapter 8 - Multiple Cursors
[_Back to outline_](outline.md)

The feature you've all been waiting for: _Multiple Cursors_!

This is probably the most powerful and useful feature any text editor could have. But sadly enough, it might be the most underused one as well because it's harder to grasp.

So take a breather, and make sure you're awake for this chapter.

## Toggle Column Mode ![Windows](icons/glyph-windows-32.png)`alt+shift+insert`
For starters, let's introduce you to _Column Mode_.

Let's open `Chapter8`. The `output` variable contains a long string concatenation, but there are a few problems with it:
* the `+` is missing to actually DO the concatenation
* and there's a space missing at the end of every string

You could put your cursor at the beginning of the second line, type a `+`, and then press `down` and `home` and type a `+` again, **repeat that for every line**, but there's an easier way.

Since all of the strings are lined up perfectly wouldn't it be easier if we could first put a bunch of cursors in front of every line, and then just type `+`? Let's try just that.

First position your cursor to the **beginning** of the second string (`"one hell of a"`).

While watching the bottom right of your screen press ![Windows](icons/glyph-windows-20.png)`alt+shift+insert` once.

You should see the word `Column` appear next to `UTF-8`. This means you have just toggled on `Column Mode`.

Now, hold down ![Windows](icons/glyph-windows-20.png)`shift` and press `down` until you've reached the last string (`"of column mode"`). There should be a cursor blinking at the beginning of every line.
It might look like one giant cursor, but it is in fact a bunch of them.

Now simply type a `+` and be amazed.

Exit out of your multi-cursors by pressing `Escape`. Exit out of _Column Mode_ by pressing ![Windows](icons/glyph-windows-20.png)`alt+shift+insert` again. The word `Column` should not appear anymore in the bottom right.

This still leaves the issue of all of the strings not having a space at the end though.

Let's undo our changes by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+z` and let's take a different approach. Notice how ![Windows](icons/glyph-windows-20.png)`ctrl+z`'ing once puts the multiple cursors back.

Now, what we really want is a `+` at the **end** of every string, and to add a space inside all the strings. Here's how you could do that.

Instead of putting your cursor at the beginning of the second line, put it at the beginning of the **first** line (`"This sure is"`).

Toggle _Column Mode_ again with ![Windows](icons/glyph-windows-20.png)`alt+shift+insert`, and select all the lines again by repeatedly pressing `down` until you've reached the second last string.

Now press ![Windows](icons/glyph-windows-20.png)`End`. Notice how the cursors are all at different ending positions.

First let's add the spaces so our strings aren't concatenated right against each other. Move your cursor inside of the string by pressing `left` once. Then type a `space`.

Then press ![Windows](icons/glyph-windows-20.png)`End` again and type a `+`. `Escape` out of the multicursor and disable _Column Mode_ by pressing ![Windows](icons/glyph-windows-20.png)`alt+shift+insert`.

This is a great feature for when all the lines you want to edit are right underneath each other, but that won't always be the case.

Let's see how we can solve that issue as well.

## ![Windows](icons/glyph-windows-32.png)`alt+j`, ![Windows](icons/glyph-windows-32.png)`alt+shift+j` and ![Windows](icons/glyph-windows-32.png)`ctrl+alt+shift+j`
In `Chapter8` there are two methods that need some fixing. They both tried to use a `StringBuilder` but seemed to have forgotten that you need the `append()` method.

We can't use _Column Mode_ because the same mistake is repeated in a different method and there are lines in between that we don't want to put a cursor at.

We can, however, use ![Windows](icons/glyph-windows-20.png)`alt+j` to add a cursor to a _Find buffer_ (![Windows](icons/glyph-windows-20.png)`F3` and ![Windows](icons/glyph-windows-20.png)`ctrl+F3`).

Try to think for a moment what selection you'd want to _Find_ in that class.

Let's first try to see what would be included by ![Windows](icons/glyph-windows-20.png)`ctrl+F3`'ing on the following selections: `"`, `.`, `."`.

Spoiler:

`"` won't be good, because then we'd also end up with a cursor at the end of the string.

`.` won't be good either, because we don't want to include the `.toString()`.

`."` however is a near perfect fit.

So let's select the first `."` at `21:17` and press ![Windows](icons/glyph-windows-20.png)`alt+j` once and see what happens.

Now repeat ![Windows](icons/glyph-windows-20.png)`alt+j` until you've selected all of the occurrences.

You'll notice that the last occurrence is working code, and we didn't want that last one. So press ![Windows](icons/glyph-windows-20.png)`alt+shift+j` to undo that last `add to cursor` selection.

Then let's fix the code by typing `append` after the `.`. Don't exit out of your multi-cursor just yet.

Remember how in Chapter 3 we learned about IntelliJ's _Wrapping_ feature? And how I said it was gonna shine in this chapter?

If you haven't already, enable Wrapping with ![Windows](icons/glyph-windows-20.png)`ctrl+shift+a`, `smart braces`, `enter`.

From the multi-cursors positioned after the `append` you just typed, press ![Windows](icons/glyph-windows-20.png)`shift+end` to select all the strings, and then press `(`.

As an alternative to repeatedly pressing ![Windows](icons/glyph-windows-20.png)`alt+j`, and if you're 100% sure that you won't include too much, you can also press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j` and add **all** occurrences to your cursors in one go.

Undo ![Windows](icons/glyph-windows-20.png)`ctrl+z` your corrections and try it out.

Notice how ![Windows](icons/glyph-windows-20.png)`alt+shift+j` still deselects the last occurrence. This is because ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j` is merely a repeated ![Windows](icons/glyph-windows-20.png)`alt+j`.

##Various use cases
Now that we've seen the basics of multiple cursors, let's try to apply it to some day to day tasks and see how it can make your life so much easier.

### Creating a TestBuilder
Let's pretend we've got a _Transfer Object_ `PersonTO` that represents a person in our domain. We want to create a TestBuilder for this class to easily configure in our Unit Tests.

TestBuilders also typically reside under the same package as the class you want to build, but in the _test_ folder structure.

In IntelliJ, you can create a Unit Test for a class by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+shift+t` from the class you're in.

Let's use this to our advantage for creating a TestBuilder, so open `PersonTO` with ![Windows](icons/glyph-windows-20.png)`ctrl+n`, and press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+t`.

Overwrite the class name from `PersonTOTest` to `PersonTOTestBuilder` and press `Enter`.

You might want to get rid of unnecessary `org.junit.Assert.*` imports by pressing ![Windows](icons/glyph-windows-20.png)`ctrl+alt+o` to _Organize Imports_.

Go back ![Windows](icons/glyph-windows-20.png)`ctrl+alt+left` to the `PersonTO`, and copy all privates over to the TestBuilder.

Create an empty constructor for the TestBuilder with ![Windows](icons/glyph-windows-20.png)`alt+insert`. Press `up` and ![Windows](icons/glyph-windows-20.png)`ctrl+enter` to choose an empty constructor from the generation menu.

Create a `build` method that returns a `PersonTO`.

Then, still inside the `PersonTOTestBuilder`, generate setters for all the privates you just copied from `PersonTO`:

Press ![Windows](icons/glyph-windows-20.png)`alt+insert`, select `Setters`, press ![Windows](icons/glyph-windows-20.png)`shift+end` to select all the fields, and press ![Windows](icons/glyph-windows-20.png)`ctrl+Enter`.

`Enter` would also work, but it's better to ![Windows](icons/glyph-windows-20.png)`ctrl+Enter` when in a separate window, to press the highlighted button, and perform the _Default action_. And add this to muscle memory.

Now we've got a bunch of setters... That's great, but we want configurable methods on our builder instead.

Select `void set` of the first setter, and press ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j`.

Type `PersonTOTestBuilder` (because we want a _Fluent API_).

Now we've got some options with our method names. You either want all your configurable methods to have the `with` keyword, or you want them lowercased.

You can lowercase all your methods by selecting the first letter: from your multicursors position press ![Windows](icons/glyph-windows-20.png)`shift+right`. Then press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+u` to toggle lower or upper case.

Now the only thing we need to do is return `this`. So press `down`, then press ![Windows](icons/glyph-windows-20.png)`shift+enter` (instead of ![Windows](icons/glyph-windows-20.png)`end`,`enter`), and type `return this;`

There you go, TestBuilder in under a minute.

### Testing Enum Lists
We've got a made up `Status` enum containing a bunch of statuses that contain another made up `SubStatus`.

In its Unit Test `StatusTest` we want to test that the static methods return the correct `Statuses` based on their `SubStatus`.

The implementation is already there, we just need a good list summation in our `.containsOnly` of the `NOT_REALLY` test.

Let's try using multicursors to get a list we can use.

Open `Status`, use ![Windows](icons/glyph-windows-20.png)`alt+j` on `NOT_REALLY` until you've got cursors on all the enums with that status.

Then try to select the Statuses themselves. Hint: You might have to disable `CamelHumps` with ![Windows](icons/glyph-windows-20.png)`ctrl+shift+a` to help with the selection.

Copy ![Windows](icons/glyph-windows-20.png)`ctrl+c` these.

Now navigate back to `StatusTest` and before you paste, enable _Column Mode_, make sure there's a bunch of empty lines and paste.

_Column Mode_ allows your multiple cursors to remain after pasting.

So with our multicursors still there, put a `,` behind every copied enum, and press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j` to join all the lines.

Complete the `yaReallyStatuses_ContainOnlyDoneAndDunno` test on your own. Hint: ![Windows](icons/glyph-windows-20.png)`alt+insert` is context sensitive, meaning IntelliJ will know what you want because you're in a Unit Test.

### Making csv lists from XML
Here's an excerpt of our xml containing a bunch of people from DC's Batman.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<Persons>
    <Person>
        <FirstName>Bruce</FirstName>
        <LastName>Wayne</LastName>
        <Age>24</Age>
        <SecretIdentity>Batman</SecretIdentity>
    </Person>
    <Person>
        <FirstName>Pamela Lillian</FirstName>
        <LastName>Isley</LastName>
        <Age>26</Age>
        <SecretIdentity>Poison Ivy</SecretIdentity>
    </Person>
    <Person>
        <FirstName>Edward</FirstName>
        <LastName>Nigma</LastName>
        <Age>41</Age>
        <SecretIdentity>The Riddler</SecretIdentity>
    </Person>
</Persons>
```
We'll try and create a csv list from this xml.

So let's open (![Windows](icons/glyph-windows-20.png)`ctrl+shift+n`) `Batman.xml`, and navigate to the directory where it's at with ![Windows](icons/glyph-windows-20.png)`ctrl+F1`.

Create a new file with ![Windows](icons/glyph-windows-20.png)`alt+insert` and call it `persons.csv`.

Copy the contents of `Batman.xml` into `persons.csv`. We can delete the first line already with ![Windows](icons/glyph-windows-20.png)`ctrl+y`.

We know that every `</` denotes the end of one field, but if we would ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j` on that, we would also include the `</Person>` tags.

These tags though, denote the end of one line, so let's first get rid of those and replace them with simple `new lines`. That means we can simply get rid of the start tag `<Person>` with ![Windows](icons/glyph-windows-20.png)`ctrl+y`.

Your file should now only contain items like this:
```
        <FirstName>Bruce</FirstName>
        <LastName>Wayne</LastName>
        <Age>24</Age>
        <SecretIdentity>Batman</SecretIdentity>

```

Select all the closing tags by selecting `</` and ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j`, and replace them by a `,`.

Your file should now only contain items like this:
```
        <FirstName>Bruce,
        <LastName>Wayne,
        <Age>24,
        <SecretIdentity>Batman,

```
If you want to retain the tag names as a CSV header line you can ![Windows](icons/glyph-windows-20.png)`alt+j` on the opening angular brackets and ![Windows](icons/glyph-windows-20.png)`ctrl+w` to select all tag names.

Paste them at the top (`home`) while in _Column Mode_ to retain the multicursors, at the ![Windows](icons/glyph-windows-20.png)`end` of the line put a `,` and ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j`oin lines.

Then select all the opening tags by selecting `<` and ![Windows](icons/glyph-windows-20.png)`ctrl+alt+shift+j`.

Expand selection with ![Windows](icons/glyph-windows-20.png)`ctrl+w`, delete the tags, ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j`oin lines and remove the last `,` at the ![Windows](icons/glyph-windows-20.png)`end` of the line. You can then still get rid of excess new lines by pressing `up` and either ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j`oin lines or ![Windows](icons/glyph-windows-20.png)`ctrl+y` delete line.

And that's it.

[_Next Chapter_](chapter9.md)

[_Back to outline_](outline.md)

# Chapter 9 - Endgame
[_Back to outline_](outline.md)

We'll make a full exercise where you'll:

1. Create a new class that resides in a new package and has to interact with another existing class
2. Create a new test for that class
3. Create a new TestBuilder for the existing class
4. Perform a _red, green, refactor_
5. (Optional) commit and push

[_Back to outline_](outline.md)