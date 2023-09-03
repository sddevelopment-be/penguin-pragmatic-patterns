# Chapter 2.2 - Navigation (Continuation)

> [!NOTE] As this chapter is quite lengthy, we split it up into two parts.
> Make sure you have completed Chapter 2.1 before continuing.

## History and its importance

<!-- tabs:start -->

### **Windows**

In the previous exercise we drilled down into a method call and changed some things. But sometimes we want to go back in time (usually after
messing something up). Let's repeat the previous exercise!
If you are following this tutorial in one go, and are currently at the end-position of the previous topic, you can continue onwards from
there.

Press <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>&#8592;</kbd> to go return to your starting position.
You should now be back at the `Chapter2.java` class.

Now repeat the previous exercise, but pick the `EpicJumper` and also fix the typo. Then go back again using <kbd>ctrl</kbd> + <kbd>
alt</kbd> + <kbd>&#8592;</kbd>.

Also try backtracking your backtrack by pressing <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>&#8594;</kbd>.

> [!NOTE]
> every time you use **Navigation shortcuts** that bring you to new classes, IntelliJ will remember this in a Navigation History of sorts.

### **Mac**

In the previous exercise we drilled down into a method call and changed some things. But sometimes we want to go back in time (usually after
messing something up). Let's repeat the previous exercise!
If you are following this tutorial in one go, and are currently at the end-position of the previous topic, you can continue onwards from
there.

Press <kbd>&#8984;</kbd> + <kbd>&#8997;</kbd> + <kbd>&#8592;</kbd> to go return to your starting position.
You should now be back at the `Chapter2.java` class.

Now repeat the previous exercise, but pick the `EpicJumper` and also fix the typo. Then go back again using <kbd>&#8984;</kbd> + <kbd>
&#8997;</kbd> + <kbd>&#8592;</kbd>.

Also try backtracking your backtrack by pressing <kbd>&#8984;</kbd> + <kbd>&#8997;</kbd> + <kbd>&#8594;</kbd>.

> [!NOTE]
> every time you use **Navigation shortcuts** that bring you to new classes, IntelliJ will remember this in a Navigation History of sorts.

<!-- tabs:end -->

## Jump to last edit position

<!-- tabs:start -->

### **Windows**

From the end of previous exercise, make sure you're back in the `Chapter2.java` class and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>
backspace</kbd> to return to where you were last editing. Try pressing the hotkey again and see what happens.

### **Mac**

From the end of previous exercise, make sure you're back in the `Chapter2.java` class and press <kbd>&#8984;</kbd> + <kbd>shift</kbd> + <kbd>
backspace</kbd> to return to where you were last editing. Try pressing the hotkey again and see what happens.

<!-- tabs:end -->

## Show in Project Window

<!-- tabs:start -->

### **Windows**

Open `MehJumper.java` by pressing <kbd>ctrl</kbd> + <kbd>n</kbd>, then use <kbd>alt</kbd> + <kbd>F1</kbd> to open up the `Project` navigational
sidebar with the `MehJumper.java` class selected.

You can now use <kbd>alt</kbd> + <kbd>1</kbd> (**do not press F1, we mean the actual digit**) to minimize the sidebar and move your window
focus back to your editor.

### **Mac**

Open `MehJumper.java` by pressing <kbd>&#8984;</kbd> + <kbd>o</kbd>, then use <kbd>&#8997;</kbd> + <kbd>F1</kbd>, <kbd>enter</kbd> to open up
the `Project` navigational sidebar with the `MehJumper.java` class selected.

You can now use <kbd>&#8997;</kbd> + <kbd>1</kbd> (**do not press F1, we mean the actual digit**) to minimize the sidebar and move your window
focus back to your editor.

<!-- tabs:end -->

## More navigational goodness: code hierarchy transversal

<!-- tabs:start -->

### **Windows**

Inspect the `mud` package. It's got your typical layered application where we pass around a `Ball` through all of its layers.
In order to navigate more complex code hierarchies, play around with some of these hotkeys:

Pressing <kbd>alt</kbd> + <kbd>F7</kbd> will show you how the selected element is used inside your codebase.
This shortcut works on virtually anything, be it a class, a method or a field in a separate __Tool Window__.
As an example: open `Ball.java` using <kbd>ctrl</kbd> + <kbd>n</kbd>, and press your arrow keys to navigate to the`getId()` method inside this
class.
Now press <kbd>alt</kbd> + <kbd>F7</kbd> and look at the bottom of your screen.

<kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>h</kbd> will show you the call hierarchy leading up to the element you are currently inspecting.
Repeat the previous step, but instead of inspecting an element's usage, press <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>h</kbd>.
Navigate the element tree using the arrow keys, and select any element you wish to take a closer look at with <kbd>ctrl</kbd> + <kbd>
enter</kbd> (or <kbd>F4</kbd> if you want to navigate to the code without further ado).

> [!TIP]
> move this navigational __Tool Window__ to the bottom bar (next to `3: Find`), because you'll usually want to optimize your screen's
> horizontal space rather than its vertical space.

### **Mac**

Inspect the `mud` package. It's got your typical layered application where we pass around a `Ball` through all of its layers.
In order to navigate more complex code hierarchies, play around with some of these hotkeys:

Pressing <kbd>&#8997;</kbd> + <kbd>F7</kbd> will show you how the selected element is used inside your codebase.
This shortcut works on virtually anything, be it a class, a method or a field in a separate __Tool Window__.
As an example: open `Ball.java` using <kbd>&#8984;</kbd> + <kbd>o</kbd>, and press your arrow keys to navigate to the`getId()` method inside
this class.
Now press <kbd>&#8997;</kbd> + <kbd>F7</kbd> and look at the bottom of your screen.

<kbd>&#8963;</kbd> + <kbd>&#8997;</kbd> + <kbd>h</kbd> will show you the call hierarchy leading up to the element you are currently inspecting.
Repeat the previous step, but instead of inspecting an element's usage, press <kbd>&#8963;</kbd> + <kbd>&#8997;</kbd> + <kbd>h</kbd>.
Navigate the element tree using the arrow keys, and select any element you wish to take a closer look at with <kbd>ctrl</kbd> + <kbd>
enter</kbd> (or <kbd>F4</kbd> if you want to navigate to the code without further ado).

> [!TIP]
> move this navigational __Tool Window__ to the bottom bar (next to `3: Find`), because you'll usually want to optimize your screen's
> horizontal space rather than its vertical space.


<!-- tabs:end -->

### Jump to definition

<!-- tabs:start -->

### **Windows**

Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id`. Now press <kbd>ctrl</kbd> + <kbd>b</kbd>
This should navigate your code editor to the instantiation of the field itself.
Press <kbd>ctrl</kbd> + <kbd>b</kbd> again. This time it should show a popup asking if you want to show __accessors__ of the field. Let's go
with _`Yes`_.

### **Mac**

Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id`. Now press <kbd>&#8997;</kbd> + <kbd>b</kbd>
This should navigate your code editor to the instantiation of the field itself.
Press <kbd>&#8997;</kbd> + <kbd>b</kbd> again. This time it should show a popup asking if you want to show __accessors__ of the field. Let's
go with _`Yes`_.

<!-- tabs:end -->

### Pop-up windows (but not the annoying kind)

<!-- tabs:start -->

### **Windows**

Sometimes when you are working on code, you want to quickly reference how a certain class, field or method is defined without opening a new
workspace window.
In order to do so, you can make use of the <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>i</kbd> keyboard combination to do just so.

Other useful overlay pop-ups include: the __quick documentation__ and __quick parameter definition__ shortcuts.
Let's find out what they do! Move to any line of code, and press <kbd>ctrl</kbd> + <kbd>q</kbd>. The overlayed information pop-up will show
you relevant documentation of the selected code element.

Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id` again. Pressing <kbd>ctrl</kbd> + <kbd>p</kbd> will
show you the relevant documentation for this parameter.
As we have not written any documentation, this overlay window will be blank.

### **Mac**

Sometimes when you are working on code, you want to quickly reference how a certain class, field or method is defined without opening a new
workspace window.
In order to do so, you can make use of the <kbd>&#8997;</kbd> + <kbd>space</kbd> keyboard combination to do just so.

Other useful overlay pop-ups include: the __quick documentation__ and __quick parameter definition__ shortcuts.
Let's find out what they do! Move to any line of code, and press <kbd>&#8963;</kbd> + <kbd>j</kbd>. The overlayed information pop-up will show
you relevant documentation of the selected code element.

Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id` again. Pressing <kbd>&#8984;</kbd> + <kbd>p</kbd> will
show you the relevant documentation for this parameter.
As we have not written any documentation, this overlay window will be blank.

<!-- tabs:end -->

## More source code!

The next sections will refer to even more source code. For completeness, we will provide it here:

<!-- tabs:start -->

### **BallService.java**

```java
package be.swsb.productivity.chapter2.mud.service;

public interface BallService {
    BallTO findBall(String id);
}

```

### **BallServiceImpl.java**

```java
package be.swsb.productivity.chapter2.mud.service;

import be.swsb.productivity.chapter2.mud.domain.Ball;
import be.swsb.productivity.chapter2.mud.domain.BallRepository;

public class BallServiceImpl implements BallService {

    private BallRepository ballRepository;
    private BallTOAssembler ballTOAssembler;

    public BallServiceImpl(BallRepository ballRepository) {
        this.ballRepository = ballRepository;
    }

    @Override
    public BallTO findBall(String id) {
        Ball ball = ballRepository.lookupById(id);
        return ballTOAssembler.assembleTOFrom(ball);
    }
}

```

### **BallTO.java**

```java
package be.swsb.productivity.chapter2.mud.service;

public class BallTO {
    private String id;
    private int size;

    public BallTO() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
```

### **BallTOAssembler.java**

```java
package be.swsb.productivity.chapter2.mud.service;

import be.swsb.productivity.chapter2.mud.domain.Ball;

public class BallTOAssembler {
    public BallTO assembleTOFrom(Ball ball) {
        BallTO ballTO = new BallTO();
        ballTO.setId(ball.getId());
        ballTO.setSize(ball.getSize());

        return ballTO;
    }
}

```

<!-- tabs:end -->

## Line-based navigation

Here is a part of a very long stacktrace.

```bash
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
```

<!-- tabs:start -->

### **Windows**

Let's see where the NullPointer is occurring. Open `BallServiceImpl`, using <kbd>ctrl</kbd> + <kbd>g</kbd>.
Now use <kbd>ctrl</kbd> + <kbd>g</kbd> and enter the desired line number (this is line nr. `18`), as the stacktrace above states the error
occurs on this line: `at be.swsb.productivity.chapter2.mud.service.BallServiceImpl.findBall(BallServiceImpl.java:18)`

### **Mac**

Let's see where the NullPointer is occurring. Open `BallServiceImpl`, using <kbd>&#8984;</kbd> + <kbd>l</kbd>.
Now use <kbd>&#8984;</kbd> + <kbd>l</kbd> and enter the desired line number (this is line nr. `18`), as the stacktrace above states the
error occurs on this line: `at be.swsb.productivity.chapter2.mud.service.BallServiceImpl.findBall(BallServiceImpl.java:18)`

<!-- tabs:end -->

## Navigate to method

<!-- tabs:start -->

### **Windows**

Another way of navigating to the location of the code causing our NullPointer exception, albeit less precise, is to first copy the method
name from the stacktrace, in this case `findBall`.
Next, open `BallServiceImpl.java`, using <kbd>ctrl</kbd> + <kbd>n</kbd>. Now press <kbd>ctrl</kbd> + <kbd>F12</kbd>. This lists all methods of a
class.
To navigate to the suspicious method: paste the name we copied from the stacktrace into the method list popup window.
You can then press <kbd>Enter</kbd> to navigate to that method.

Let's imagine we want to write a comparator for some object, or want to use it in a Set. You'll want to take a look at that
objects `equals()` implementation. In case the object is filled to the brim with other methods, it might be easier to tap <kbd>
ctrl</kbd> + <kbd>F12</kbd> to check for an `equals` method. If you can't find it on your first try, tap <kbd>ctrl</kbd> + <kbd>F12</kbd> again
to browse the methods of the superclass as well.
Let's open `RealBall.java`, and try to find out if this class has its own `equals` and `hashcode` implementations, or wether makes use of
its superclass implementations.

### **Mac**

Another way of navigating to the location of the code causing our NullPointer exception, albeit less precise, is to first copy the method
name from the stacktrace, in this case `findBall`.
Next, open `BallServiceImpl.java`, using <kbd>&#8984;</kbd> + <kbd>o</kbd> . Now press <kbd>ctrl</kbd> + <kbd>F12</kbd>. This lists all methods
of a class.
To navigate to the suspicious method: paste the name we copied from the stacktrace into the method list popup window.
You can then press <kbd>Enter</kbd> to navigate to that method.

Let's imagine we want to write a comparator for some object, or want to use it in a Set. You'll want to take a look at that
objects `equals()` implementation. In case the object is filled to the brim with other methods, it might be easier to tap <kbd>
&#8984;</kbd> + <kbd>F12</kbd> to check for an `equals` method. If you can't find it on your first try, tap <kbd>&#8984;</kbd> + <kbd>F12</kbd>
again to browse the methods of the superclass as well.
Let's open `RealBall.java`, and try to find out if this class has its own `equals` and `hashcode` implementations, or wether makes use of
its superclass implementations.

<!-- tabs:end -->

---