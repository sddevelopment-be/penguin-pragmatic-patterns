# IntelliJ_Hotkeys

This tutorial series was originally published under the MIT License as [`ProductivityWithShortcuts`](https://github.com/Sch3lp/ProductivityWithShortcuts), by its creator: [Tim Schraepen](https://github.com/Sch3lp).

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


## Tutorial structure

Each chapter contains a thorough explanation and a set of exercises. 
Even though the progression in these chapters might seem to be increasing in difficulty, you don't need to think of them as thresholds.
The main reason this series is divided into chapters is to help your brain make new neural pathways even better by trying to categorize certain types of shortcuts. This way, we hope you'll think of Using them more frequently in real life.

> ![TIP]
> To speed up your tutorial progression, it is strongly advised to copy the entire source code we ure in the tutorial to your local machine.
> You can either fetch this code from the [original authors github page](https://github.com/Sch3lp/ProductivityWithShortcuts), or from our [copied version](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/tree/main/code/productivity_with_shortcuts).

### Quality of life improvements
In addition to a few visual upgrades over the original version of this series, this tutorial includes shortcuts for both the Windows and Macintosh operating systems. As they differ significantly in some places, different descriptions are given for each OS.
In the online version of this text, you will find tabular panes like the one below.

<!-- tabs:start -->
#### **Windows**
description for the Windows operating system family

#### **Mac**
description for the MacOS operating system family

<!-- tabs:end -->


### What you'll learn
* Increase your productivity by using IntelliJ shortcuts.
* Think along with your pair, who's already proficient in using shortcuts.
* In what situations/contexts shortcuts are helpful.
* Some patterns for multi-cursor usage.

### How you'll learn
By doing! The only way to get shortcuts into muscle memory is by using them. **All.** **Of.** **The.** **Darn.** **Time.**
This tutorial series provides a structured approach to learn productivity shortcuts Using incrementally challenging 
exercises that will help you move forward at a consistent pace.

> [!TIP]
> To use a keyboard shortcut, press and hold one or more modifier keys and then press the last key of the shortcut.  
> If you are using a keyboard made for a windows PC while working on a Mac, use the <kbd>Alt</kbd> key instead of <kbd>&#8997;</kbd>, and the Windows logo key ( <kbd>&#8862;</kbd>) instead of <kbd>&#8984;</kbd>.

### Good Luck, Have Fun!
If you like these exercises, share them with your friends and colleagues, and drop a line to thank [Tim](https://github.com/Sch3lp) for making this tutorial publicly available.

### Code snippets

#### Package: be.swsb.productivity.common
<!-- tabs:start -->
### **Class `AFugly`**
```java
package be.swsb.productivity.common;

public class AFugly {
    private String eff;
    private String yew;
    private String gee;
    private String el;
    private String why;
    private Face face;

    AFugly(String eff, String yew, String gee, String el, String why, Face face) {
        this.eff = eff;
        this.yew = yew;
        this.gee = gee;
        this.el = el;
        this.why = why;
        this.face = face;
    }

    public String getEff() {
        return eff;
    }

    public String getYew() {
        return yew;
    }

    public String getGee() {
        return gee;
    }

    public String getEl() {
        return el;
    }

    public String getWhy() {
        return why;
    }

    public Face getFace() {
        return face;
    }
}
```

### **Class `FuglyTestBuilder`**

```java
package be.swsb.productivity.common;

public class FuglyTestBuilder {

    private String eff;
    private String yew;
    private String gee;
    private String el;
    private String why;
    private Face face;

    public static FuglyTestBuilder fugly(){
        return new FuglyTestBuilder();
    }

    private FuglyTestBuilder(){}

    public AFugly build(){
        return new AFugly(eff, yew, gee, el, why, face);
    }

    public FuglyTestBuilder withEff(String eff) {
        this.eff = eff;
        return this;
    }

    public FuglyTestBuilder withYew(String yew) {
        this.yew = yew;
        return this;
    }

    public FuglyTestBuilder withGee(String gee) {
        this.gee = gee;
        return this;
    }

    public FuglyTestBuilder withEll(String el) {
        this.el = el;
        return this;
    }

    public FuglyTestBuilder withWhy(String why) {
        this.why = why;
        return this;
    }

    public FuglyTestBuilder withFace(Face face) {
        this.face = face;
        return this;
    }
}
```

### **Class `Face`**
```java
package be.swsb.productivity.common;

public class Face {
    private int eyes;
    private String color;
    private int nosewidth;

    public Face(int eyes, String color, int nosewidth) {
        this.eyes = eyes;
        this.color = color;
        this.nosewidth = nosewidth;
    }

    public int getEyes() {
        return eyes;
    }

    public String getColor() {
        return color;
    }

    public int getNosewidth() {
        return nosewidth;
    }
}
```

### **Class `FaceTestBuilder`**
```java
package be.swsb.productivity.common;

public class FaceTestBuilder {
    private int eyes;
    private String color;
    private int nosewidth;

    public static FaceTestBuilder face(){
        return new FaceTestBuilder();
    }

    private FaceTestBuilder(){}

    public Face build(){
        return new Face(eyes, color, nosewidth);
    }

    public FaceTestBuilder withEyes(int eyes) {
        this.eyes = eyes;
        return this;
    }

    public FaceTestBuilder withColor(String color) {
        this.color = color;
        return this;
    }

    public FaceTestBuilder withNosewidth(int nosewidth) {
        this.nosewidth = nosewidth;
        return this;
    }
}
```
<!-- tabs:end -->

---



# Chapter 1 - Basics

## Copy and Pasting

<!-- tabs:start -->

### **Windows**

Using <kbd>ctrl</kbd><kbd>C</kbd> and <kbd>ctrl</kbd><kbd>V</kbd>, copy the Chapter1 constructor to create a new one without the number parameter, initialize the `number` field to the default value of `0`.  
Use your mouse to select text, then press <kbd>ctrl</kbd><kbd>C</kbd> to copy the selected text. Move your cursor to a blank line, then press <kbd>ctrl</kbd><kbd>V</kbd> to paste the selected text.

### **Mac**

Using <kbd>&#8984;</kbd><kbd>C</kbd> and <kbd>&#8984;</kbd><kbd>V</kbd>, copy the Chapter1 constructor to create a new one without the number parameter, initialize the `number` field to the default value of `0`.  
Use your mouse to select text, then press <kbd>&#8984;</kbd><kbd>C</kbd> to copy the selected text. Move your cursor to a blank line, then press, then press <kbd>&#8984;</kbd><kbd>V</kbd> to paste the selected text.

<!-- tabs:end -->

```java
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
```

> [!ATTENTION]
> Repeat the exercise, this time using **ONLY** your keyboard to select text.
> Turn your mouse upside-down if you have to!

## How to look up any actions' shortcut

<!-- tabs:start -->

### **Windows**

Repeat the previous exercise, but instead of using <kbd>ctrl</kbd><kbd>C</kbd> / <kbd>ctrl</kbd><kbd>V</kbd>, use <kbd>ctrl</kbd><kbd>shift</kbd><kbd>a</kbd> to look up the copy and paste actions in the quick help menu. Alternatively, you can double-tab the <kbd>shift</kbd> key do open the quick action menu.

### **Mac**

Repeat the previous exercise, but instead of using <kbd>&#8984;</kbd><kbd>C</kbd> / <kbd>&#8984;</kbd><kbd>V</kbd>, use <kbd>&#8984;</kbd><kbd>a</kbd> to look up the copy and paste actions in the quick help menu. Alternatively, you can double-tab the <kbd>shift</kbd> key do open the quick action menu.

<!-- tabs:end -->

## IntelliJ's _Productivity Guide_

<!-- tabs:start -->

### **Windows**

Open IntelliJ's Productivity Guide using these key combinations:
First press <kbd>alt</kbd><kbd>h</kbd> for _(H)elp_ (in the taskbar), then press <kbd>P</kbd> to select _(P)roductivity Guide_.

**bonus:** Try opening the Productivity Guide using <kbd>ctrl</kbd><kbd>shift</kbd><kbd>a</kbd>.

### **Mac**

Open IntelliJ's Productivity Guide using these key combinations:
First press <kbd>&#8997;</kbd><kbd>h</kbd> for _(H)elp_ (in the taskbar), then press <kbd>P</kbd> to select _(P)roductivity Guide_.

**bonus:** Try opening the Productivity Guide using <kbd>shift</kbd><kbd>&#8984;</kbd><kbd>a</kbd>.

<!-- tabs:end -->

## Indenting code

<!-- tabs:start -->

### **Class `Fugly.java`**

```java
package be.swsb.productivity.chapter1.indentation;

import static be.swsb.productivity.common.FaceTestBuilder.face;
import static be.swsb.productivity.common.FuglyTestBuilder.fugly;

public class Fugly {

    public static void indentMeProperlyPlease() {
        System.out.println(fugly().withEff("f").withYew("u").withGee("g").withEll("l").withYew("y").withFace(face().withEyes(1).withColor("poop-brown").withNosewidth(500).build()).build().toString());
    }

    public static void indentedItShouldLookLikeThis() {
        System.out.println(fugly()
                .withEff("f")
                .withYew("u")
                .withGee("g")
                .withEll("l")
                .withYew("y")
                .withFace(face()
                        .withEyes(1)
                        .withColor("poop-brown")
                        .withNosewidth(500)
                        .build())
                .build()
                .toString());
    }

}
```

### **Class `FuglyToo.java`**

```java
package be.swsb.productivity.chapter1.indentation;

import static be.swsb.productivity.common.FaceTestBuilder.face;
import static be.swsb.productivity.common.FuglyTestBuilder.fugly;

public class FuglyToo {

  public static void indentMeProperlyPlease() {
          System.out.println(fugly()
                  .withEff("f")
                                              .withYew("u")
      .withGee("g")
                      .withEll("l")
                                                      .withYew("y")
              .withFace(face()
                                     .withEyes(1)
                         .withColor("poop-brown")
         .withNosewidth(500)
.build())
                                .build()
                                                                   .toString());
    }
}
```

<!-- tabs:end -->

<!-- tabs:start -->

### **Windows**

Open Fugly.java, use selection and indent the test builder patterns properly.
For this exercise, you can use <kbd>shift</kbd> and your arrow keys to select lines.
Use <kbd>Tab</kbd> to indent them manually, or use <kbd>ctrl</kbd><kbd>alt</kbd><kbd>l</kbd> to automatically format the selected lines.

Hint: When manually indenting, first use <kbd>shift</kbd><kbd>Tab</kbd> to unindent everything until the entire selection is against the left side, then <kbd>Tab</kbd> the entire selection into its first indentation, decrease your selection and <kbd>Tab</kbd>  that into its second indentation. Rinse and repeat.

### **Mac**

Open Fugly.java, use selection and indent the test builder patterns properly.
For this exercise, you can use <kbd>shift</kbd> and your arrow keys to select lines.
Use <kbd>&#8677;</kbd> to indent them manually, or use <kbd>&#8963;</kbd><kbd>&#8997;</kbd><kbd>l</kbd> to automatically format the selected lines.

Hint: When manually indenting, first use <kbd>shift</kbd><kbd>&#8677;</kbd> to unindent everything until the entire selection is against the left side, then <kbd>&#8677;</kbd> the entire selection into its first indentation, decrease your selection and <kbd>&#8677;</kbd> that into its second indentation. Rinse and repeat.

<!-- tabs:end -->

## Undo, Redo

<!-- tabs:start -->

### **Windows**

In most editors, Redo is mapped to <kbd>ctrl</kbd><kbd>y</kbd>. Not so in IntelliJ.  
This can lead to hilarious (or super annoying) situations where you'll lose your _undo buffer_.

Let's try it out and see what happens so you'll remember it better.
Open `FuglyToo.java` once more.
Add a comment above the method that reads `// this method is fugly`.
Add a comment on a new line that reads `// such fugliness should never be allowed`.
Press <kbd>ctrl</kbd><kbd>z</kbd> (_Undo_) and see what happens.

Press it a couple times.

Now press <kbd>ctrl</kbd><kbd>shift</kbd><kbd>z</kbd> (_Redo_) and see what happens.
Add these three comments to the file, each starting on a different line:

```
// herpty
// derpty
// derp
```

After you've typed the last line, press  <kbd>ctrl</kbd><kbd>z</kbd> until you only have `// herpty` left.

As most people will have the reflex to press <kbd>ctrl</kbd><kbd>y</kbd> to _Redo_ their work, let's see what happens when we do just that.
Use <kbd>ctrl</kbd><kbd>y</kbd>, then try <kbd>ctrl</kbd><kbd>shift</kbd><kbd>z</kbd> to attempt and redo the revert you wish to reapply.

Try <kbd>ctrl</kbd><kbd>z</kbd> and see what that does. Try <kbd>ctrl</kbd><kbd>shift</kbd><kbd>z</kbd> again now.

Keep this strange behavior in mind when you work in IntelliJ, or in another editor that doesn't have <kbd>ctrl</kbd><kbd>y</kbd> for _Redo_ :)

### **Mac**

The default undo and redo keyboard shortcuts on MacOSC work the same over most applications. The weird behavior described in the windows section is not relevant for Mac users. Use <kbd>&#8984;</kbd><kbd>z</kbd> to undo, and <kbd>&#8984;</kbd><kbd>shift</kbd><kbd>z</kbd> to redo.

<!-- tabs:end -->

Congratulations! You finished the first chapter of the tutorial. If you learned a few new tricks, feel free to take a break and let the information sink in.
Otherwise, we look forward to seeing you in chapter 2.


# Chapter 2 - Navigation

## Source code: Chapter Two

<!-- tabs:start -->

### **Chapter2.java**

```java
package be.swsb.productivity.chapter2;

public class Chapter2 {

    public Chapter2() {
        String phrase = theQuickBrownFoxJumpedOverTheLazyCamel();
    }

    private String theQuickBrownFoxJumpedOverTheLazyCamel() {
        return "The quick brown fox jumped over the lazy camel";
    }

    private String fox() {
        return "The quick brown fox ";
    }

    private String jumpUsingStrategy() { return JumperStrategyFactory.epicJumperStrategy().jump(); }

    private String camel() {
        return "the lazy camel";
    }
}
```

### **EpicJumper.java**
```java
package be.swsb.productivity.chapter2;

public class EpicJumper implements Jumper {

    @Override
    public String jump() {
        return "pump epically ";
    }
}

```

### **Jumper.java**

```java
package be.swsb.productivity.chapter2;

public interface Jumper {

    String jump();
}

```

### **JumperStrategyFactory.java**

```java
package be.swsb.productivity.chapter2;

public class JumperStrategyFactory {

    public static Jumper epicJumperStrategy() {
        return new EpicJumper();
    }

    public static Jumper mehJumperStrategy() {
        return new MehJumper();
    }
}

```

### **MehJumper.java**

```java
package be.swsb.productivity.chapter2;

public class MehJumper implements Jumper {
    @Override
    public String jump() {
        return "pump ";
    }
}

```
<!-- tabs:end -->

## Source code: Chapter Two/mud

<!-- tabs:start -->

### **Ball.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class Ball {
    private final String id;
    private final int size;

    public Ball(String id, int size) {
        this.id = id;
        this.size = size;
    }

    public String getId() {
        return id;
    }

    public int getSize() {
        return size;
    }

    public void bounce(){
        System.out.println("bounce");
    }

    public void smash(){
        System.out.println("smash");
    }

    public void hit(){
        System.out.println("hit");
    }

    public void dribble(){
        System.out.println("dribble");
    }

    public void kick(){
        System.out.println("kick");
    }

    public void shoot(){
        System.out.println("shoot");
    }

    public void throwww(){
        System.out.println("throwww");
    }

    public void squeeze(){
        System.out.println("squeeze");
    }

    public void roll(){
        System.out.println("roll");
    }

    public void destroy(){
        System.out.println("destroy");
    }

    public void collect(){
        System.out.println("collect");
    }

    public void launch(){
        System.out.println("launch");
    }

    public void drizzle(){
        System.out.println("drizzle");
    }

    public void hoop(){
        System.out.println("hoop");
    }

    public void net(){
        System.out.println("net");
    }

    public void score(){
        System.out.println("score");
    }

    public void supersmash(){
        System.out.println("supersmash");
    }

    public void assemble(){
        System.out.println("assemble");
    }

    public void complete(){
        System.out.println("complete");
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ball ball = (Ball) o;

        if (size != ball.size) return false;
        return id != null ? id.equals(ball.id) : ball.id == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + size;
        return result;
    }
}

```

### **BallRepository.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class BallRepository {

    public Ball lookupById(String id) {
//        return new Ball(id, 10);
        return null;
    }
}
```

### **RealBall.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class RealBall extends Ball {

    public RealBall(String id, int size) {
        super(id, size);
    }

    public void bounce(){
        System.out.println("bounce");
    }

    public void smash(){
        System.out.println("smash");
    }

    public void hit(){
        System.out.println("hit");
    }

    public void dribble(){
        System.out.println("dribble");
    }

    public void kick(){
        System.out.println("kick");
    }

    public void shoot(){
        System.out.println("shoot");
    }

    public void throwww(){
        System.out.println("throwww");
    }

    public void squeeze(){
        System.out.println("squeeze");
    }

    public void roll(){
        System.out.println("roll");
    }

    public void destroy(){
        System.out.println("destroy");
    }

    public void collect(){
        System.out.println("collect");
    }

    public void launch(){
        System.out.println("launch");
    }

    public void drizzle(){
        System.out.println("drizzle");
    }

    public void hoop(){
        System.out.println("hoop");
    }

    public void net(){
        System.out.println("net");
    }

    public void score(){
        System.out.println("score");
    }

    public void supersmash(){
        System.out.println("supersmash");
    }

    public void assemble(){
        System.out.println("assemble");
    }

    public void complete(){
        System.out.println("complete");
    }

}

```

<!-- tabs:end -->


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
> move this navigational __Tool Window__ to the bottom bar (next to `3: Find`), because you'll  usually want to optimize your screens horizontal space rather than it's vertical space.

### **Mac**


<!-- tabs:end -->


### Jump to definition

<!-- tabs:start -->

### **Windows**
Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id`. Now press <kbd>ctrl</kbd> <kbd>b</kbd>
This should navigate your code editor to the instantiation of the field itself.
Press <kbd>ctrl</kbd> <kbd>b</kbd> again. This time it should show a popup asking if you want to show __accessors__ of the field. Let's go with _`Yes`_.

### **Mac**


<!-- tabs:end -->

### Pop-up windows (but not the annoying kind)

<!-- tabs:start -->

### **Windows**
Sometimes when you are working on code, you want to quickly reference how a certain class, field or method is defined without opening a new workspace window.
In order to do so, you can make use of the <kbd>ctrl</kbd> <kbd>shift</kbd> <kbd>i</kbd> keyboard combination to do just so.

Other useful overlay pop-ups include: the __quick documentation__ and __quick parameter definition__ shortcuts.
Let's find out what they do! Move to any line of code, and press <kbd>ctrl</kbd> <kbd>q</kbd>. The overlayed information pop-up will show you relevant documentation of the selected code element.

Navigate to the `return id;` line in the `Ball.java` class and put your cursor on `id` again. Pressing <kbd>ctrl</kbd> <kbd>p</kbd> will show you the relevant documentation for this parameter.
As we have not written any documentation, this overlay window will be blank.

### **Mac**


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
Let's see where the NullPointer is occurring. Open `BallServiceImpl`, using <kbd>ctrl</kbd> <kbd>n</kbd>.
Now use <kbd>ctrl</kbd> <kbd>n</kbd> and enter the desired line number (this is line nr. `18`), as the stacktrace above states the error is occurs on this line:
`at be.swsb.productivity.chapter2.mud.service.BallServiceImpl.findBall(BallServiceImpl.java:18)`


### **Mac**

<!-- tabs:end -->


## Navigate to method

<!-- tabs:start -->

### **Windows**

Another way of navigating to the location of the code causing our NullPointer exception, albeit less precise, is to first copy the method name from the stacktrace, in this case `findBall`.
Next, open `BallServiceImpl.java`, using <kbd>ctrl</kbd> <kbd>n</kbd>. Now press <kbd>ctrl</kbd> <kbd>F12</kbd>. This lists all methods of a class.
To navigate to the suspicious method: paste the name we copied from the stacktrace into the method list popup window.
You can then press <kbd>Enter</kbd> to navigate to that method.

Let's imagine we want to write a comparator for some object, or want to use it in a Set. You'll want to take a look at that objects `equals()` implementation. In case the object is filled to the brim with other methods, it might be easier to tap <kbd>ctrl</kbd> <kbd>F12</kbd> to check for an `equals` method. If you can't find it on your first try, tap <kbd>ctrl</kbd> <kbd>F12</kbd> again to browse the methods of the superclass as well.
Let's open `RealBall.jave`, and try to find out if this class has its own `equals` and `hashcode` implementations, or wether makes use of its superclass implementations.

### **Mac**


<!-- tabs:end -->
