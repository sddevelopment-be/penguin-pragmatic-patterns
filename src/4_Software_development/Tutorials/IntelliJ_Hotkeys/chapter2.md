# Chapter 2 - Navigation

## Word-skipping with the arrow keys

<!-- tabs:start -->

### **Windows**

Open `Chapter2.java`, and place your cursor in front of the word _"The"_ of the popular phrase, and tap <kbd>ctrl</kbd><kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

### **Mac**

Open `Chapter2.java`, and place your cursor in front of the _"The"_ of the popular phrase, and tap <kbd>&#8997</kbd><kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

<!-- tabs:end -->

## Jump to Start/End of Line

<!-- tabs:start -->

### **Windows**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>end</kbd>.
Press <kbd>home</kbd> once, look at your cursors position, then press <kbd>home</kbd> again and see what happens. Press <kbd>home</kbd> one more time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd><kbd>home</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

### **Mac**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>&#8984;</kbd><kbd>&#8594;</kbd>.
Press <kbd>&#8984;</kbd><kbd>&#8592;</kbd> once, look at your cursors position, then press <kbd>&#8984;</kbd><kbd>&#8592;</kbd> again and see what happens. Press <kbd>&#8984;</kbd><kbd>&#8592;</kbd> one more time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd><kbd>&#8984;</kbd><kbd>&#8592;</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

<!-- tabs:end -->

## Jump to Begin/End of File

<!-- tabs:start -->

### **Windows**

Try out <kbd>ctrl</kbd><kbd>home</kbd> and <kbd>ctrl</kbd><kbd>end</kbd> in `Chapter2.java`.  
Alternatively, you can accomplish the same using <kbd>PgUp</kbd> and <kbd>PgDn</kbd>.

### **Mac**

Try out <kbd>&#8984</kbd><kbd>&#8593;</kbd> and <kbd>&#8984</kbd><kbd>&#8595;</kbd> in `Chapter2.java`.  
Alternatively, you can accomplish the same using <kbd>Fn</kbd><kbd>&#8593;</kbd> and <kbd>Fn</kbd><kbd>&#8595</kbd>.

<!-- tabs:end -->

## CamelHumps (+ how to toggle)

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>ctrl</kbd><kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press <kbd>ctrl</kbd><kbd>shift</kbd><kbd>a</kbd>, then type `CamelHump`. There should be a setting named `Smart Keys: Use "CamelHumps" words` with a toggle indicator.

Navigate to that option using the arrow keys, and toggle it by pressing <kbd>Enter</kbd>, then press <kbd>Escape</kbd> to exit the action menu.

Try to use _Skip Word_ again with <kbd>ctrl</kbd><kbd>&#8594;</kbd>.

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>ctrl</kbd><kbd>&#8594;</kbd>), or skip based on CamelCasing (<kbd>alt</kbd><kbd>&#8594;</kbd>).

### **Mac**

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>&#8997;</kbd><kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press<kbd>&#8984;</kbd><kbd>a</kbd>, then type `CamelHump`. There should be a setting named `Smart Keys: Use "CamelHumps" words` with a toggle indicator.

Navigate to that option using the arrow keys, and toggle it by pressing <kbd>Enter</kbd>, then press <kbd>Escape</kbd> to exit the action menu.

Try to use _Skip Word_ again with <kbd>&#8997;</kbd><kbd>&#8594;</kbd>

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>&#8963;</kbd><kbd>&#8594;</kbd>), or skip based on CamelCasing (<kbd>&#8997;</kbd><kbd>&#8594;</kbd>).

<!-- tabs:end -->

## Jumping methods

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>alt</kbd><kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>alt</kbd><kbd>&#8593;</kbd> to go back the way you came.

### **Mac**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>&#8963;</kbd><kbd>Shift</kbd><kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>&#8963;</kbd><kbd>Shift</kbd><kbd>&#8593;</kbd> to go back the way you came.

<!-- tabs:end -->

## Jump to "error"

<!-- tabs:start -->

### **Windows**

Move to the top of the file with <kbd>ctrl</kbd><kbd>Home</kbd> and from there press <kbd>F2</kbd>. This should navigate your cursor to the class named `Chapter2` because IntelliJ marks it as being _unused_.

If you keep pressing <kbd>F2</kbd> it should keep cycling your cursor over the _unused_ warnings. In between the methods `jump()` and `camel()`, paste the following:

```java
privet String kakdilla() {
    "horocho";
}
```

Move to the top of the file again, and press <kbd>F2</kbd> once again.
Notice how the cursor now first jumps to the actual compilation error (_`privet` cannot be resolved_).

> [!NOTE]
> Cycling only happens over all actual _errors_, and the _unused warnings_ are not cycled over anymore.

### **Mac**

<!-- tabs:end -->

## Jump into

<!-- tabs:start -->

### **Windows**

__"Jump into"__, or __"drill down"__ as I like to call it, allows you to follow the path the code will execute at runtime.
It is a big timesaver when attempting to follow the logic of any given program. 

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to `Chapter2.jumpUsingStrategy()` and place your cursor on the `jump()` method call. Press <kbd>ctrl</kbd> <kbd>b</kbd>.
This should take you straight to the interfaces `jump()` method.

Now, let's go back to where we came from. Press <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>b</kbd>. IntelliJ knows you want to __"drill down"__ into the actual method implementation but doesn't know which one, so it will suggest some options. Select the `MehJumper` method by pressing <kbd>&#8595;</kbd> and then <kbd>enter</kbd> and see where it leads you.

You can now correct the typo in the method, and move on to the next exercise.

### **Mac**


<!-- tabs:end -->


## History and its importance

<!-- tabs:start -->

### **Windows**

In the previous exercise we drilled down into a method call and changed some things. But sometimes we want to go back in time (usually after messing something up). Let's repeat the previous exercise!
If you are following this tutorial in one go, and are currently at the end-position of the previous topic, you can continue onwards from there.

Press <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>&#8592;</kbd> to go return to your starting position. 
You should now be back at at the `Chapter2.java` class.

Now repeat the previous exercise, but pick the `EpicJumper` and also fix the typo. Then go back again using <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>&#8592;</kbd>.

Also try backtracking your backtrack by pressing <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>&#8594;</kbd>.

> [!NOTE]
> every time you use **Navigation shortcuts** that bring you to new classes, IntelliJ will remember this in a Navigation History of sorts.


### **Mac**


<!-- tabs:end -->

## Jump to last edit position

<!-- tabs:start -->

### **Windows**

From the end of previous exercise, make sure you're back in the `Chapter2.java` class and press <kbd>ctrl</kbd> <kbd>shift</kbd> <kbd>backspace</kbd> to return to where you were last editing. Try pressing the hotkey again and see what happens.


### **Mac**


<!-- tabs:end -->



## Show in Project Window

<!-- tabs:start -->

### **Windows**

Open `MehJumper.java` by pressing <kbd>ctrl</kbd> <kbd>n</kbd>, then use <kbd>alt</kbd> <kbd>F1</kbd> to open up the `Project` navigational sidebar with the `MehJumper.java` class selected.

You can now use <kbd>alt</kbd> <kbd>1</kbd> (**do not press F1, we mean the actual digit**) to minimize the sidebar and move your window focus back to your editor.
### **Mac**


<!-- tabs:end -->

## More navigational goodness: code hierarchy transversal

<!-- tabs:start -->

### **Windows**

Inspect the `mud` package. It's got your typical layered application where we pass around a `Ball` through all of it's layers.
In order to navigate more complex code hierarchies, play around with some of these hotkeys:

Pressing <kbd>alt</kbd> <kbd>F7</kbd> will show you how the selected element is used inside your codebase.
This shortcut works on virtually anything, be it a class, a method or a field in a separate __Tool Window__.
As an example: open `Ball.java` using <kbd>ctrl</kbd> <kbd>n</kbd>, and press your arrow keys to navigate to the`getId()` method inside this class.
Now press <kbd>alt</kbd> <kbd>F7</kbd> and look at the bottom of your screen.

<kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>h</kbd> will show you the call hierarchy leading up to the element you are currently inspecting.
Repeat the previous step, but instead of inspecting an element's usage, press <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>h</kbd>.
Navigate the element tree using the arrow keys, and select any element you wish to take a closer look at with <kbd>ctrl</kbd> <kbd>enter</kbd> (or <kbd>F4</kbd> if you want to navigate to the code without further ado).

> [!TIP]
> move this navigational __Tool Window__ to the bottom bar (next to `3: Find`), because you'll usually want to optimize your screens horizontal space rather than it's vertical space.

### **Mac**


<!-- tabs:end -->


### Pop-up windows (but not the annoying kind)

![Windows](icons/glyph-windows-32.png)`ctrl+b`

This will show the usage in a popup window (![Windows](icons/glyph-windows-20.png)`Escape`able).

Particularly handy to show read or write usage on a field.

Navigate to the `return id;` and put your cursor on `id`.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+b` once, this should navigate to the field itself.

Press ![Windows](icons/glyph-windows-20.png)`ctrl+b` again, now it should show a popup asking if you want to show accessors of the field. Let's go with _Yes_. :)

## Line-based navigation

Jump to line ![Windows](icons/glyph-windows-32.png)`ctrl+g` (example with paste from stacktrace)

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
