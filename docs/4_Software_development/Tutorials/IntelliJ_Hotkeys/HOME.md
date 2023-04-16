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

Each chapter contains a detailed explanation, and a set of exercises. Although the progression in these chapters may seem to increase in difficulty,
you do not need to think of them as thresholds. The primary reason this series is divided into chapters is to help your brain create new neural
pathways by attempting to grouping certain types of shortcuts into categories. This way, we hope you will use them more frequently in real life.

> ![TIP]
> To speed up your tutorial progression, we strongly advise you to copy the entire source code used in the tutorial to your local machine. You
> can either fetch this code from the [original author's GitHub page](https://github.com/Sch3lp/ProductivityWithShortcuts), or from
> our [copied version](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/tree/main/code/productivity_with_shortcuts).

### Quality of life improvements

In addition to a few visual upgrades over the original version of this series, this tutorial includes shortcuts for both Windows and Macintosh
operating systems. Since they differ significantly in some areas, different descriptions are provided for each OS. In the online version of this
text, you will find tabular panes like the one below.

<!-- tabs:start -->

#### **Windows**

Contains a description for the Windows operating system family.

#### **Mac**

Contains a description for the macOS operating system family.

<!-- tabs:end -->

### What you will learn

In this tutorial series, you will learn:

* How to increase your productivity by using IntelliJ shortcuts.
* When and in what contexts shortcuts are useful.
* Some patterns for multi-cursor usage.

### How you will learn

The only way to get shortcuts into muscle memory is by using them repeatedly. This tutorial series provides a structured approach to learn
productivity shortcuts by incrementally challenging exercises that will help you move forward at a consistent pace.

> [!TIP]
> To use a keyboard shortcut, press and hold one or more modifier keys and then press the last key of the shortcut.  
> If you are using a keyboard made for a Windows PC while working on a Mac, use the <kbd>Alt</kbd> key instead of <kbd>&#8997;</kbd>, and the
> Windows logo key ( <kbd>&#8862;</kbd>) instead of <kbd>&#8984;</kbd>.

### Good Luck, Have Fun!

If you find these exercises useful, share them with your friends and colleagues and drop a line to thank [Tim](https://github.com/Sch3lp) for making this tutorial publicly available.

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

    public static FuglyTestBuilder fugly() {
        return new FuglyTestBuilder();
    }

    private FuglyTestBuilder() {
    }

    public AFugly build() {
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

    public static FaceTestBuilder face() {
        return new FaceTestBuilder();
    }

    private FaceTestBuilder() {
    }

    public Face build() {
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



# Chapter 1: Basics

In this section, we will cover the basics of IntelliJ IDEA hotkeys, including general purpose commands such as copying and pasting, as well as using
built-in IDE helper functionalities. By mastering these fundamental shortcuts, you will be able to perform common tasks more efficiently, allowing
you to focus on your work and become more productive.

We recommend that you follow along with each exercise in this section to reinforce your understanding of the hotkeys and improve your muscle memory.
Whether you are a seasoned developer or just starting with IntelliJ IDEA, this tutorial series will help you become more proficient and productive.
So let's get started!

## Copy and Pasting

<!-- tabs:start -->

### **Windows**

To copy text, select the text you want to copy using your mouse or keyboard, then press <kbd>ctrl</kbd> + <kbd>C</kbd>. To paste the copied text,
move
your cursor to the desired location and press <kbd>ctrl</kbd> + <kbd>V</kbd>.

In this exercise, we will create a new constructor for Chapter1 without the number parameter, and initialize the number field to the default value
of 0. Copy the existing Chapter1 constructor by selecting the text using your mouse, then press <kbd>ctrl</kbd> + <kbd>C</kbd>. Move your cursor to
a
new line below the constructor, then press <kbd>ctrl</kbd> + <kbd>V</kbd> to paste the copied text. Remove the number parameter from the new
constructor, and initialize the number field to 0.

### **Mac**

To copy text on a Mac, select the text you want to copy using your mouse or keyboard, then press <kbd>&#8984;</kbd> + <kbd>C</kbd>. To paste the
copied
text, move your cursor to the desired location and press <kbd>&#8984;</kbd> + <kbd>V</kbd>.

In this exercise, we will create a new constructor for Chapter1 without the number parameter, and initialize the number field to the default value
of 0. Copy the existing Chapter1 constructor by selecting the text using your mouse, then press <kbd>&#8984;</kbd> + <kbd>C</kbd>. Move your cursor
to
a new line below the constructor, then press <kbd>&#8984;</kbd> + <kbd>V</kbd> to paste the copied text. Remove the number parameter from the new
constructor, and initialize the number field to 0.

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

Repeat the previous exercise, but instead of using <kbd>ctrl</kbd> + <kbd>C</kbd> / <kbd>ctrl</kbd> + <kbd>V</kbd>, use <kbd>ctrl</kbd> + <kbd>
shift</kbd> + <kbd>a</kbd> to open the "Find Action" dialog. Type in the name of the action you want to perform, and IntelliJ IDEA will show you the
shortcut associated with that action. Alternatively, you can double-tab the <kbd>shift</kbd> key to open the quick action menu and search for the
action you want to perform. Use this method to look up the `copy` and `paste` actions, so you get a feel for using the dialog.

### **Mac**

Repeat the previous exercise, but instead of using <kbd>&#8984;</kbd> + <kbd>C</kbd> / <kbd>&#8984;</kbd> + <kbd>V</kbd>, use <kbd>&#8984;</kbd>
+ <kbd>shift</kbd> + <kbd>a</kbd> to open the "Find Action" dialog. Type in the name of the action you want to perform, and IntelliJ IDEA will show you the
shortcut associated with that action. Alternatively, you can double-tab the <kbd>shift</kbd> key to open the quick action menu and search for the
action you want to perform. Use this method to look up the `copy` and `paste` actions, so you get a feel for using the dialog.

<!-- tabs:end -->

## IntelliJ's _Productivity Guide_

<!-- tabs:start -->

### **Windows**

Open IntelliJ's Productivity Guide using these key combinations:
First press <kbd>Alt</kbd> + <kbd>H</kbd> for (H)elp (in the taskbar), then press <kbd>P</kbd> to select (P)roductivity Guide.

Open IntelliJ's Productivity Guide using these key combinations:
First press <kbd>alt</kbd> + <kbd>h</kbd> for _(H)elp_ (in the taskbar), then press <kbd>P</kbd> to select _(P)roductivity Guide_.

**bonus:** Try opening the Productivity Guide using <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd>, then type in "Productivity Guide" in the
search
bar.

### **Mac**

Open IntelliJ's Productivity Guide using these key combinations:
First press <kbd>&#8963;</kbd> + <kbd>F2</kbd> to focus on the taskbar, then use the arrow keys to navigate to the Help menu, then press down to
expand
the menu itself, then press <kbd>enter</kbd> to select _My Productivity_.

**bonus:** Try opening the Productivity Guide using <kbd>&#8984;</kbd>+ <kbd>shift</kbd> + <kbd>a</kbd>, then type in "Productivity Guide" in the
search bar.

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

Open `Fugly.java`, use selection and indent the test builder patterns properly.
For this exercise, you can use <kbd>shift</kbd> and your arrow keys to select lines.
Use <kbd>Tab</kbd> to indent them manually, or use <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>l</kbd> to automatically format the selected lines.

Hint: When manually indenting, first use <kbd>shift</kbd> + <kbd>Tab</kbd> to unindent everything until the entire selection is against the left
side, then <kbd>Tab</kbd> the entire selection into its first indentation, decrease your selection and <kbd>Tab</kbd>  that into its second
indentation. Rinse and repeat.

### **Mac**

Open `Fugly.java`, use selection and indent the test builder patterns properly.
For this exercise, you can use <kbd>shift</kbd> and your arrow keys to select lines.
Use <kbd>&#8677;</kbd> to indent them manually, or use <kbd>&#8963;</kbd> + <kbd>&#8997;</kbd> + <kbd>l</kbd> to automatically format the selected
lines.

Hint: When manually indenting, first use <kbd>shift</kbd> + <kbd>&#8677;</kbd> to unindent everything until the entire selection is against the left
side, then <kbd>&#8677;</kbd> the entire selection into its first indentation, decrease your selection and <kbd>&#8677;</kbd> that into its second
indentation. Rinse and repeat.

<!-- tabs:end -->

## Undo, Redo

<!-- tabs:start -->

### **Windows**

In most editors, Redo is mapped to <kbd>ctrl</kbd> + <kbd>y</kbd>. Not so in IntelliJ.  
This can lead to hilarious (or super annoying) situations where you'll lose your _undo buffer_.

Let's try it out and see what happens so you'll remember it better.
Open `FuglyToo.java` once more.
Add a comment above the method that reads `// this method is fugly`.
Add a comment on a new line that reads `// such fugliness should never be allowed`.
Press <kbd>ctrl</kbd> + <kbd>z</kbd> (_Undo_) and see what happens.

Press it a couple times.

Now press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>z</kbd> (_Redo_) and see what happens.
Add these three comments to the file, each starting on a different line:

```
// herpty
// derpty
// derp
```

After you've typed the last line, press  <kbd>ctrl</kbd> + <kbd>z</kbd> until you only have `// herpty` left.

As most people will have the reflex to press <kbd>ctrl</kbd> + <kbd>y</kbd> to _Redo_ their work, let's see what happens when we do just that.
Use <kbd>ctrl</kbd> + <kbd>y</kbd>, then try <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>z</kbd> to attempt and redo the revert you wish to reapply.

Try <kbd>ctrl</kbd> + <kbd>z</kbd> and see what that does. Try <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>z</kbd> again now.

Keep this strange behavior in mind when you work in IntelliJ, or in another editor that doesn't have <kbd>ctrl</kbd> + <kbd>y</kbd> for _Redo_ :)

### **Mac**

The default undo and redo keyboard shortcuts on MacOS work the same over most applications. The weird behavior described in the windows section is
not relevant for Mac users. Use <kbd>&#8984;</kbd> + <kbd>z</kbd> to undo, and <kbd>&#8984;</kbd> + <kbd>shift</kbd> + <kbd>z</kbd> to redo.

<!-- tabs:end -->

Congratulations! You finished the first chapter of the tutorial. If you learned a few new tricks, feel free to take a break and let the information
sink in.
Otherwise, we look forward to seeing you in chapter 2.


# Chapter 2.1 - Navigation

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

    private String jumpUsingStrategy() {
        return JumperStrategyFactory.epicJumperStrategy().jump();
    }

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

    public void bounce() {
        System.out.println("bounce");
    }

    public void smash() {
        System.out.println("smash");
    }

    public void hit() {
        System.out.println("hit");
    }

    public void dribble() {
        System.out.println("dribble");
    }

    public void kick() {
        System.out.println("kick");
    }

    public void shoot() {
        System.out.println("shoot");
    }

    public void throwww() {
        System.out.println("throwww");
    }

    public void squeeze() {
        System.out.println("squeeze");
    }

    public void roll() {
        System.out.println("roll");
    }

    public void destroy() {
        System.out.println("destroy");
    }

    public void collect() {
        System.out.println("collect");
    }

    public void launch() {
        System.out.println("launch");
    }

    public void drizzle() {
        System.out.println("drizzle");
    }

    public void hoop() {
        System.out.println("hoop");
    }

    public void net() {
        System.out.println("net");
    }

    public void score() {
        System.out.println("score");
    }

    public void supersmash() {
        System.out.println("supersmash");
    }

    public void assemble() {
        System.out.println("assemble");
    }

    public void complete() {
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

### **RealBall.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class RealBall extends Ball {

    public RealBall(String id, int size) {
        super(id, size);
    }

    public void bounce() {
        System.out.println("bounce");
    }

    public void smash() {
        System.out.println("smash");
    }

    public void hit() {
        System.out.println("hit");
    }

    public void dribble() {
        System.out.println("dribble");
    }

    public void kick() {
        System.out.println("kick");
    }

    public void shoot() {
        System.out.println("shoot");
    }

    public void throwww() {
        System.out.println("throwww");
    }

    public void squeeze() {
        System.out.println("squeeze");
    }

    public void roll() {
        System.out.println("roll");
    }

    public void destroy() {
        System.out.println("destroy");
    }

    public void collect() {
        System.out.println("collect");
    }

    public void launch() {
        System.out.println("launch");
    }

    public void drizzle() {
        System.out.println("drizzle");
    }

    public void hoop() {
        System.out.println("hoop");
    }

    public void net() {
        System.out.println("net");
    }

    public void score() {
        System.out.println("score");
    }

    public void supersmash() {
        System.out.println("supersmash");
    }

    public void assemble() {
        System.out.println("assemble");
    }

    public void complete() {
        System.out.println("complete");
    }

}

```

<!-- tabs:end -->

## Word-skipping with the arrow keys

<!-- tabs:start -->

### **Windows**

Open `Chapter2.java`, and place your cursor in front of the word _"The"_ of the popular phrase, and tap <kbd>ctrl</kbd> + <kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

### **Mac**

Open `Chapter2.java`, and place your cursor in front of the _"The"_ of the popular phrase, and tap <kbd>&#8997</kbd> + <kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

<!-- tabs:end -->

## Jump to Start/End of Line

<!-- tabs:start -->

### **Windows**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>end</kbd>.
Press <kbd>home</kbd> once, look at your cursors position, then press <kbd>home</kbd> again and see what happens. Press <kbd>home</kbd> one more
time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd> + <kbd>
home</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

### **Mac**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>&#8984;</kbd> + <kbd>&#8594;</kbd>.
Press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> once, look at your cursors position, then press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> again and see what
happens. Press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> one more time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd> + <kbd>
&#8984;</kbd> + <kbd>&#8592;</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

<!-- tabs:end -->

## Jump to Begin/End of File

<!-- tabs:start -->

### **Windows**

Try out <kbd>ctrl</kbd> + <kbd>home</kbd> and <kbd>ctrl</kbd> + <kbd>end</kbd> in `Chapter2.java`.  
Alternatively, you can accomplish the same using <kbd>PgUp</kbd> and <kbd>PgDn</kbd>.

### **Mac**

Try out <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8592;</kbd> and <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8594;</kbd> in `Chapter2.java`.

<!-- tabs:end -->

## CamelHumps (+ how to toggle)

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>ctrl</kbd> + <kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>a</kbd>, then type `CamelHump`. There used to be a setting
named `Smart Keys: Use "CamelHumps" words` with a toggle indicator, but this disappeared since some new release around 2019.

Instead if you want to do something using the alternative CamelHumps mode, there **is** an action in the action menu for that.

These are called `Move Caret to Next Word with Selection in Different "CamelHumps" Mode` (or Previous Word, or without Selection).

They all appear when you type CamelHumps and IntelliJ remembers your last action command, so it's not all bad.

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>ctrl</kbd> + <kbd>&#8594;</kbd>), or skip based on
> CamelCasing (<kbd>alt</kbd> + <kbd>&#8594;</kbd>).

### **Mac**

> [!NOTE]
> These shortcuts might override with your OS shortcuts, so it's wise to disable these before you continue with the next exercises.

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>&#8997;</kbd> + <kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press<kbd>&#8984;</kbd> + <kbd>a</kbd>, then type `CamelHump`. There used to be a setting
named `Smart Keys: Use "CamelHumps" words` with a toggle indicator, but this disappeared since some new release around 2019.

Instead if you want to do something using the alternative CamelHumps mode, there **is** an action in the action menu for that.

These are called `Move Caret to Next Word with Selection in Different "CamelHumps" Mode` (or Previous Word, or without Selection).

They all appear when you type CamelHumps and IntelliJ remembers your last action command, so it's not all bad.

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>&#8963;</kbd> + <kbd>&#8594;</kbd>), or skip based on
> CamelCasing (<kbd>&#8997;</kbd> + <kbd>&#8594;</kbd>).

<!-- tabs:end -->

## Jumping methods

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>alt</kbd> + <kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>alt</kbd> + <kbd>&#8593;</kbd> to go back the way you came.

### **Mac**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>&#8963;</kbd> + <kbd>Shift</kbd> + <kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>&#8963;</kbd> + <kbd>Shift</kbd> + <kbd>&#8593;</kbd> to go back the way you came.

<!-- tabs:end -->

## Jump to "error"

<!-- tabs:start -->

### **Windows**

Move to the top of the file with <kbd>ctrl</kbd> + <kbd>Home</kbd> and from there press <kbd>F2</kbd>. This should navigate your cursor to the class
named `Chapter2` because IntelliJ marks it as being _unused_.

If you keep pressing <kbd>F2</kbd> it should keep cycling your cursor over the _unused_ warnings. In between the methods `jump()` and `camel()`,
paste the following:

```java
privet String kakdilla(){
        "horocho";
        }
```

Move to the top of the file again, and press <kbd>F2</kbd> once again.
Notice how the cursor now first jumps to the actual compilation error (_`privet` cannot be resolved_).

> [!NOTE]
> Cycling only happens over all actual _errors_, and the _unused warnings_ are not cycled over anymore.

### **Mac**

Move to the top of the file with <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8592;</kbd> and from there press <kbd>F2</kbd>. This should navigate your
cursor to the class named `Chapter2` because IntelliJ marks it as being _unused_.

If you keep pressing <kbd>F2</kbd> it should keep cycling your cursor over the _unused_ warnings. In between the methods `jump()` and `camel()`,
paste the following:

```java
privet String kakdilla(){
        "horocho";
        }
```

Move to the top of the file again, and press <kbd>F2</kbd> once again.
Notice how the cursor now first jumps to the actual compilation error (_`privet` cannot be resolved_).

> [!NOTE]
> Cycling only happens over all actual _errors_, and the _unused warnings_ are not cycled over anymore.


<!-- tabs:end -->

## Jump into

<!-- tabs:start -->

### **Windows**

__"Jump into"__, or __"drill down"__ as I like to call it, allows you to follow the path the code will execute at runtime.
It is a big timesaver when attempting to follow the logic of any given program.

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to `Chapter2.jumpUsingStrategy()` and place your cursor on the `jump()` method call. Press <kbd>ctrl</kbd> <kbd>b</kbd>.
This should take you straight to the interfaces `jump()` method.

Now, let's go back to where we came from. Press <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>b</kbd>. IntelliJ knows you want to __"drill down"__ into the
actual method implementation but doesn't know which one, so it will suggest some options. Select the `MehJumper` method by pressing <kbd>
&#8595;</kbd> and then <kbd>enter</kbd> and see where it leads you.

You can now correct the typo in the method, and move on to the next exercise.

### **Mac**

__"Jump into"__, or __"drill down"__ as I like to call it, allows you to follow the path the code will execute at runtime.
It is a big timesaver when attempting to follow the logic of any given program.

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to `Chapter2.jumpUsingStrategy()` and place your cursor on the `jump()` method call. Press <kbd>&#8984;</kbd> <kbd>b</kbd>.
This should take you straight to the interfaces `jump()` method.

Now, let's go back to where we came from. Press <kbd>&#8984;</kbd> <kbd>&#8997;</kbd> <kbd>b</kbd>. IntelliJ knows you want to __"drill down"__ into
the actual method implementation but doesn't know which one, so it will suggest some options. Select the `MehJumper` method by pressing <kbd>
&#8595;</kbd> and then <kbd>enter</kbd> and see where it leads you.

You can now correct the typo in the method, and move on to the next exercise.

<!-- tabs:end -->

> [!NOTE] As this chapter is quite lengthy, we split it up into two parts.
> Feel free to take a break now, or continue on to Chapter 2.2. 

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
Let's open `RealBall.jave`, and try to find out if this class has its own `equals` and `hashcode` implementations, or wether makes use of
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
Let's open `RealBall.jave`, and try to find out if this class has its own `equals` and `hashcode` implementations, or wether makes use of
its superclass implementations.

<!-- tabs:end -->


# Chapter 3 - Selection

## Source code: Chapter Three

<!-- tabs:start -->

### **Chapter2.java**

```java
package be.swsb.productivity.chapter3;

public class Chapter3 {

	public String selectStuff() {
		return "The quick brown fox " + "jumps over " + "the LazyDawg";
	}
}

```

<!-- tabs:end -->

## Move + Select

<!-- tabs:start -->

### **Windows**

Open `Chapter3.java`, then move your cursor to the beginning of the line containing `"jumps over"`, hold
down <kbd>ctrl</kbd>, <kbd>shift</kbd> and press the right arrow key <kbd>&#8594;</kbd> to select that sentence.
Now cut and paste it behind the first line.

### **Mac**

Open `Chapter3.java`, then move your cursor to the beginning of the line containing `"jumps over"`, hold
down <kbd>&#8984;</kbd>, <kbd>shift</kbd> and press the right arrow key <kbd>&#8594;</kbd> to select that sentence.
Now cut and paste it behind the first line.

<!-- tabs:end --> 

## Expand Selection

<!-- tabs:start -->

### **Windows**

Press <kbd>ctrl</kbd> + <kbd>n</kbd> and open `Fugly.java`.
Move your cursor to line `23`, column `28` by pressing <kbd>ctrl</kbd> + <kbd>g</kbd> and typing `23:28`.
From that position press <kbd>ctrl</kbd> + <kbd>w</kbd>, press this key combination again a few times, and see what happens.

Now try using <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>w</kbd> to incrementally reduce the size of your selection. Play around with both the
`Expand selection` and `Reduce selection` key combinations until you feel comfortable with them.

### **Mac**

Press <kbd>&#8984;</kbd> + <kbd>o</kbd> and open `Fugly.java`.
Move your cursor to line `23`, column `28` by pressing <kbd>&#8984;</kbd> + <kbd>l</kbd> and typing `23:28`.
From that position press <kbd>&#8997;</kbd> + <kbd>&#x2191;</kbd>, press this key combination again a few times, and see what happens.

Now try using  <kbd>&#8997;</kbd> + <kbd>shift</kbd> + <kbd>&#x2191;</kbd> to incrementally reduce the size of your selection. Play around with both the
`Expand selection` and `Reduce selection` key combinations until you feel comfortable with them.

<!-- tabs:end -->

## Using Selection to help Navigation (e.g. Fluent API)

<!-- tabs:start -->

### **Windows**

Because <kbd>ctrl</kbd> + <kbd>w</kbd> expands a selection, and because the arrow keys decide where our cursor is going to be:
<kbd>&#8592;</kbd> at the beginning or <kbd>&#8594;</kbd> at the end of the selection.

We can use a little trick to format our Fluent API.
Format the one-liner so that it looks like the method below. You can do this by pressing <kbd>ctrl</kbd> + <kbd>w</kbd> until you have a selection
containing a _"method call"_, e.g. `fugly()`, then press <kbd>&#8594;</kbd> to put your cursor at the end, and press <kbd>&#9166;</kbd>
(<kbd>enter</kbd>).
Rinse and repeat.

### **Mac**

Because <kbd>&#8997;</kbd> + <kbd>&#x2191;</kbd> expands a selection, and because the arrow keys decide where our cursor is going to be:
<kbd>&#8592;</kbd> at the beginning or <kbd>&#8594;</kbd> at the end of the selection.

We can use a little trick to format our Fluent API.
Format the one-liner so that it looks like the method below. You can do this by pressing <kbd>&#8997;</kbd> + <kbd>&#x2191;</kbd> until you have a selection
containing a _"method call"_, e.g. `fugly()`, then press <kbd>&#8594;</kbd> to put your cursor at the end, and press <kbd>&#9166;</kbd>
(<kbd>enter</kbd>).
Rinse and repeat.

<!-- tabs:end -->

## Wrapping (IntelliJ feature)

<!-- tabs:start -->

### **Windows**

IntelliJ has a neat feature that wraps your selection with braces, curly braces, single or double quotes, ...
You can enable this feature under `Settings` by pressing <kbd>&#8984;</kbd> + <kbd>>,</kbd>, then go to `Editor > General > 
Smart Keys`,
and enable `Surround selection on typing quote or brace`.

An alternative is by pressing <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>a</kbd>, and then type `Smart Keys Braces`.
Fix the `wrapStuff` method by selecting `"efffff"` with <kbd>ctrl</kbd> + <kbd>w</kbd>, and then type a `"`.
Then apply the same pattern to `yewwww` but instead of a `"`, type a `(`.Then apply the same pattern to the entire method body but type a `{`.

This feature really shines in combination with multi-cursor (which we'll see in a later chapter).

### **Mac**

IntelliJ has a neat feature that wraps your selection with braces, curly braces, single or double quotes, ...
You can enable this feature under `Settings` by pressing <kbd>&#8984;</kbd> + <kbd>,</kbd>, then go to `Editor > General >
Smart Keys`,
and enable `Surround selection on typing quote or brace`.

An alternative is by pressing <kbd>&#8984;</kbd> + <kbd>shift</kbd> + <kbd>a</kbd>, and then type `Smart Keys Braces`.
Fix the `wrapStuff` method by selecting `"efffff"` with <kbd>&#8997;</kbd> + <kbd>&#x2191;</kbd>s, and then type a `"`.
Then apply the same pattern to `yewwww` but instead of a `"`, type a `(`.Then apply the same pattern to the entire method body but type a `{`.

This feature really shines in combination with multi-cursor (which we'll see in a later chapter).

<!-- tabs:end -->



# Chapter 4 - Line Editing

> [!NOTE]
> Authors pro-tip: Listen to [this song](https://www.youtube.com/watch?v=DcU4_FuZIkI) while working through the exercises

## Source code: Chapter 4

```java
package be.swsb.productivity.chapter4;

public class Chapter4 {

	/*
	 * This is an unnecessary comment, so.... duplicate me :)
	 * Delete all of these lines using ctrl+y
	 */
	public Chapter4() {
	}

	private void _2_snarf() {
		System.out.println("Lion-O");
	}

	private void _1_lionO() {
		System.out.println("Snarf");
	}

	private void _3_cheetara() {
	}

	private String[] _4_thundercats() {
		return new String[]{ "lion-o", "jaga", "panthro", "tygra", "cheetara", "snarf", "wily kit", "wily kat" };
	}
}
```

## Duplicate line

<!-- tabs:start -->

### **Windows**

Open `Chapter4.java`, move your cursor to line 6 (try and use a shortcut for this), and press <kbd>ctrl</kbd> + <kbd>d</kbd>.

### **Mac**

Open `Chapter4.java`, move your cursor to line 6 (try and use a shortcut for this), and press <kbd>&#8984;</kbd> + <kbd>d</kbd>.

<!-- tabs:end -->

## Yank

<!-- tabs:start -->

### **Windows**

Press <kbd>ctrl</kbd> + <kbd>y</kbd> repeatedly to delete the lines.

### **Mac**

Press <kbd>&#8984;</kbd> + <kbd>backspace</kbd> repeatedly to delete the lines.

<!-- tabs:end -->

## Moving lines with and without constraints

<!-- tabs:start -->

### **Windows**

While in `Chapter4.java`, the `System.out.println` function calls are switched around.
Place your cursor on one of the `System.out.println` lines, hold down <kbd>alt</kbd> + <kbd>shift</kbd> and press <kbd>&#x2191;</kbd> or <kbd>&#x2193;
</kbd> to move that line.
Do the same for the other line.

You will see the methods aren't in the desired order yet, so place your cursor on `_2_snarf`'s method signature.
This time hold down <kbd>ctrl</kbd> + <kbd>shift</kbd> and press <kbd>&#x2191;</kbd> or <kbd>&#x2193;</kbd> to move the entire method.

### **Mac**

While in `Chapter4.java`, the `System.out.println` function calls are switched around.
Place your cursor on one of the `System.out.println` lines, hold down <kbd>&#8997;</kbd> + <kbd>shift</kbd> and press <kbd>&#x2191;</kbd> or 
<kbd>&#x2193;</kbd> to move that line.
Do the same for the other line.

You will see the methods aren't in the desired order yet, so place your cursor on `_2_snarf`'s method signature.
This time hold down  <kbd>shift</kbd> + <kbd>&#8984;</kbd> and press <kbd>&#x2191;</kbd> or <kbd>&#x2193;</kbd> to move the entire method.

<!-- tabs:end -->

## Start new line

<!-- tabs:start -->

### **Windows**

In `Chapter4.java`, jump to 20:20 (using <kbd>ctrl</kbd> + <kbd>g</kbd>). From this position we want to start implementing the body of the method.
Typically, one would do this by pressing <kbd>end</kbd>, and then <kbd>enter</kbd>. But you can do this in one go by
pressing <kbd>shift</kbd> + <kbd>enter</kbd>, so let's do just that.

This will come in handy later.

### **Mac**

In `Chapter4.java`, jump to 20:20 (using <kbd>&#8984;</kbd> + <kbd>l</kbd>). From this position we want to start implementing the body of the 
method.
Typically, one would do this by pressing <kbd>end</kbd>, and then <kbd>enter</kbd>. But you can do this in one go by
pressing <kbd>shift</kbd> + <kbd>enter</kbd>, so let's do just that.

<!-- tabs:end -->

## Join lines

<!-- tabs:start -->

### **Windows**

We want to write the return statement of `_4_thundercats()` on just one line.
Don't use a sequence of <kbd>end</kbd> + <kbd>delete</kbd> combinations.
Instead, first select all the thundercats' names (the strings), then press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> (for Join lines).

> [!NOTE]
> Hint: use <kbd>ctrl</kbd> + <kbd>w</kbd> right after the `{` character.

You might have to repeat the <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> combination, because IntelliJ's auto-formatting tends to kick in
sometimes.

### **Mac**

We want to write the return statement of `_4_thundercats()` on just one line.
Don't use a sequence of <kbd>&#8984;</kbd> + <kbd>&#8594;</kbd>, <kbd>delete</kbd> combinations.
Instead, first select all the thundercats' names (the strings), then press <kbd>&#8963;</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> (for Join lines).

> [!NOTE]
> Hint: use <kbd>&#8997;</kbd> + <kbd>&#x2191;</kbd> right after the `{` character.

You might have to repeat the <kbd>&#8963;</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> combination, because IntelliJ's auto-formatting tends to kick in
sometimes.

<!-- tabs:end -->



# Chapter 5 - Embedded Windows

IntelliJ has various _Tool Windows_, like the `1: Project` window, `9: Version Control` window, or `3: Find` window.
When one of these _embedded_ windows have focus, other shortcuts are available.
In this topic we'll talk about some of them.

## Opening/Closing (Toggling)

<!-- tabs:start -->

### **Windows**
All of these windows are accessible by holding down <kbd>alt</kbd> and pressing the associating number.
e.g. If you want to open or close the `1: Project` window, you press <kbd>alt</kbd> + <kbd>1</kbd>.
You can also minimize the current active tool window using <kbd>shift</kbd> + <kbd>escape</kbd>.

### **Mac**
All of these windows are accessible by holding down <kbd>&#8984;</kbd> and pressing the associating number.
e.g. If you want to open or close the `1: Project` window, you press <kbd>&#8984;</kbd> + <kbd>1</kbd>.

<!-- tabs:end -->

## Switching tabs

<!-- tabs:start -->

### **Windows**

Some of these windows have multiple tabs in them, i.e. the `6: TODO` window. So let's open that with <kbd>alt</kbd> + <kbd>6</kbd>.
You'll notice that it contains the _Project_, _Current File_, _Scope Based_ and _Default Changelist_ tabs.
You can switch between these tabs by pressing <kbd>alt</kbd> + <kbd>&#8594;</kbd> and <kbd>alt</kbd> + <kbd>&#8592;</kbd>.

Give it a try!

### **Mac**

Some of these windows have multiple tabs in them, i.e. the `6: TODO` window. So let's open that with <kbd>&#8984;</kbd> + <kbd>6</kbd>.
You'll notice that it contains the _Project_, _Current File_, _Scope Based_ and _Default Changelist_ tabs.
You can switch between these tabs by pressing <kbd>&#8984;</kbd> + <kbd>
shift</kbd> + <kbd>[</kbd> and <kbd>&#8984;</kbd> + <kbd>shift</kbd> + <kbd>]</kbd>.

Give it a try!

<!-- tabs:end -->

## Navigation from Embedded Windows

<!-- tabs:start -->

### **Windows**

Some Tool Windows will display results, like `3: Find` and `8: Hierarchy`, which you can use to navigate to directly.

There's two ways of doing this:

* <kbd>ctrl</kbd> + <kbd>enter</kbd>: allows you to navigate to your selected result, but focus remains on your Tool Window
* <kbd>F4</kbd>: navigates to your selected result AND focuses the editor window in one go.

Let's try 'em both out.

We want to follow the path the code takes at runtime until we get to `CoffeeBeans.scent()`, so let's trace back our steps from there by
opening `CoffeeBeans.java`, and <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>h</kbd> on the `scent()` method.

Use <kbd>ctrl</kbd> + <kbd>enter</kbd> on `CoffeeSmeller.smell()`, see where it takes you, then <kbd>ctrl</kbd> + <kbd>enter</kbd>
on `Chapter5.smellBeans()`.

We figured out we want to change something in `CoffeeSmeller`, so select `CoffeeSmeller` in the `8: Hierarchy` tool window and instead of
pressing <kbd>ctrl</kbd> + <kbd>enter</kbd>, press <kbd>F4</kbd>.

Now we can change the implementation.

### **Mac**

Some Tool Windows will display results, like `3: Find` and `8: Hierarchy`, which you can use to navigate to directly.

There's two ways of doing this:

* <kbd>&#8997;</kbd> + <kbd>enter</kbd>: allows you to navigate to your selected result, but focus remains on your Tool Window
* <kbd>&#8984;</kbd> + <kbd>&#x2191;</kbd>: navigates to your selected result AND focuses the editor window in one go.

Let's try 'em both out.

<!-- tabs:end -->

## Why resizing is for dummies

<!-- tabs:start -->

### **Windows**
Stop resizing your _Tool Windows_, use them when you need them (see _Opening/Closing (Toggling)_).

If you don't need your _Tool Window_, you'll want to focus back on your editor window. You can do this from anywhere (meaning, from any
focussed _Tool Window_) by pressing <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>F12</kbd>.

So, let's first imagine we were looking at a hierarchy of `CoffeeBeans.scent()`, we looked at `CoffeeSmeller`'s use and we checked where in
the package structure `CoffeeSmeller` was situated by pressing <kbd>alt</kbd> + <kbd>F1</kbd>.

Now we have both the `1: Project` and `8: Hierarchy` _Tool Windows_ open. But we want to continue tweaking the CoffeeSmellers code, so let's
press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>F12</kbd> and get our focus back on where it belongs, without any distractions.

Happy editing!

### **Mac**

Stop resizing your _Tool Windows_, use them when you need them (see _Opening/Closing (Toggling)_).

If you don't need your _Tool Window_, you'll want to focus back on your editor window. You can do this from anywhere (meaning, from any
focussed _Tool Window_) by pressing <kbd>shift</kbd> + <kbd>&#8984;</kbd> + <kbd>F12</kbd>.

So, let's first imagine we were looking at a hierarchy of `CoffeeBeans.scent()`, we looked at `CoffeeSmeller`'s use and we checked where in
the package structure `CoffeeSmeller` was situated by pressing <kbd>&#8997;</kbd> + <kbd>F1</kbd>.

Now we have both the `1: Project` and `8: Hierarchy` _Tool Windows_ open. But we want to continue tweaking the CoffeeSmellers code, so let's
press <kbd>shift</kbd> + <kbd>&#8984;</kbd> + <kbd>F12</kbd> and get our focus back on where it belongs, without any distractions.

Happy editing!

<!-- tabs:end -->




# Chapter 6 - IntelliJ's Suggestions

We are only human. That means we tend to mess up from time to time.
Knowing how to quickly fix mistakes you make is a tremendous boon to your programming productivity.
Luckily, our IDE can help us fixing some of the smaller mistakes we often make.

## Code snippets

```java
package be.swsb.productivity.chapter6;

public class Chapter6 {

    // ctrl+shift+enter after having pressed F2
    public String bar() {
        if (!snarf(barf(wharf() {
            return "No"
        }
    }

    private boolean snarf(boolean b) {
        return !b;
    }

    private boolean barf(boolean b) {
        return !b;
    }

    private boolean wharf() {
        return true;
    }

    // ctrl+shift+enter the line below
    public void foo(

}
```

## IntelliJ's Auto-correct

<!-- tabs:start -->

### **Windows**

Let’s open Chapter6.java (<kbd>ctrl</kbd> + <kbd>n</kbd>), a class with many mistakes (and (a hell of (a lot of)) brackets).

Now, let’s see what IntelliJ can do for us to fix the mistakes by pressing <kbd>F2</kbd> to navigate quickly to the first
error, and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>enter</kbd>.

Press <kbd>F2</kbd> again and let's see if IntelliJ can auto-fill the missing semicolon.

Press <kbd>F2</kbd> again and see if it can auto-correct an incomplete method.

Undo (<kbd>ctrl</kbd> + <kbd>z</kbd>) your last auto-correct and type out public void poo( above the comment line.

It's basically the same thing we tried to auto-correct just a few seconds ago. The only difference is that there are now two "incomplete" error
statements.

Try pressing <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>enter</kbd> anyways and see what happens.

### **Mac**

Let's open Chapter6.java (<kbd>&#8984;</kbd> + <kbd>o</kbd>) , a class with many mistakes (and (a hell of (a lot of)) brackets).

Let's see what IntelliJ can do for us to fix the mistakes by pressing <kbd>F2</kbd> to navigate quickly to the first
error, and press <kbd>&#8963;</kbd> + <kbd>&uArr;</kbd> + <kbd>&crarr;︎</kbd>.

Press <kbd>F2</kbd> again and let's see if IntelliJ can auto-fill the missing semicolon.

Press <kbd>F2</kbd> again and see if it can auto-correct an incomplete method.

Undo (<kbd>&#8984;</kbd> + <kbd>z</kbd>) your last auto-correct and type out public void poo( above the comment line.

It's basically the same thing we tried to auto-correct just a few seconds ago. The only difference is that there are now two "incomplete" error
statements.

Try pressing <kbd>&#8963;</kbd> + <kbd>    &uArr;</kbd> + <kbd>&crarr;︎</kbd> anyways and see what happens.

<!-- tabs:end -->

## More code samples

```java
package be.swsb.productivity.chapter6;

import be.swsb.productivity.chapter6.transformers.Autobot;
import be.swsb.productivity.chapter6.transformers.Decepticon;

public class Transformers {

    public void disguise() {
        Autobot optimus = new Autobot();
        Decepticon megatron = new Decepticon();

        optimus.catchPhrase("Autobots!");

        // Decepticon.StarScream();
    }
}
```

<!-- tabs:start -->

### **Autobot.java**

```java
package be.swsb.productivity.chapter6.transformers;

/**
 * Transformers... <br/>
 * Robots in disguise.<br/>
 * <br/>
 * Transformers... <br/>
 * More than meets the eye.<br/>
 */
public class Autobot {

    private AutobotEnum type;

    public Autobot(AutobotEnum type) {
        this.type = type;
    }

    public static AutobotEnum optimusEnum() {
        return AutobotEnum.CAR;
    }

    public String catchPhrase(String prefix) {
        return String.format("%s Rollout!", prefix);
    }
}
```

### **AutobotEnum.java**

```java
package be.swsb.productivity.chapter6.transformers;

public enum AutobotEnum {
    CAR,
    DINOBOT,
    OMNIBOT,

}
```

### **Decepticon.java**

```java
package be.swsb.productivity.chapter6.transformers;

public class Decepticon {
    private DecepticonEnum type;

    public Decepticon(DecepticonEnum type) {
        this.type = type;
    }

    public static DecepticonEnum megatronEnum() {
        return DecepticonEnum.GUN;
    }

    public static Decepticon StarScream(String name, String evilTrait, int numberOfLegs, int numberOfArms, double pctEvil, DecepticonEnum type) {
        return new StarScream(name, evilTrait, numberOfLegs, numberOfLegs, pctEvil, type);
    }

    public static Decepticon StarScream(String name, DecepticonEnum type) {
        return new StarScream(name, "backstabber", 2, 2, 99.99, type);
    }

    private static class StarScream extends Decepticon {
        private String name;
        private String evilTrait;
        private int numberOfLegs;
        private int numberOfArms;
        private double pctEvil;
        private int numberOfLegs1;

        private StarScream(String name, String evilTrait, int numberOfLegs, int numberOfArms, double pctEvil, DecepticonEnum type) {
            super(type);
            this.name = name;
            this.evilTrait = evilTrait;
            this.numberOfLegs = numberOfLegs;
            this.numberOfArms = numberOfArms;
            this.pctEvil = pctEvil;
        }

    }
}
```

### **DecepticonEnum.java**

```java
package be.swsb.productivity.chapter6.transformers;

public enum DecepticonEnum {
    JET,
    INSECTICON,
    GUN,
    DUOCON
}
```

<!-- tabs:end -->

## Autocomplete

<!-- tabs:start -->

### **Windows**

Open Transformers.java, a class with a lot of action in it. To quickly navigate to the missing constructor argument, use <kbd>F2</kbd>.

To have IntelliJ suggest an autocomplete option, press <kbd>Control</kbd> + <kbd>Space</kbd>. Note that even though the constructor expects an
AutobotEnum, IntelliJ may suggest other options like new, null, equals(), etc.

To have IntelliJ provide more helpful context-specific code completion actions, try using the alternative hotkey combination <kbd>
Control</kbd> + <kbd>Shift</kbd> + <kbd>Space</kbd>.

Before selecting one of the AutobotEnum suggestions, try pressing <kbd>Control</kbd> + <kbd>Shift</kbd> + <kbd>Space</kbd> again. This hotkey will
show you that there is a static method Autobot.optimusEnum() that also returns an AutobotEnum. IntelliJ knows about this method as well.

Try it out again to construct Optimus' nemesis, Megatron.

### **Mac**

<!-- tabs:end -->

### Autocomplete selection confirmation

<!-- tabs:start -->

### **Windows**

After using <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Space</kbd> or <kbd>Ctrl</kbd> + <kbd>Space</kbd> to bring up suggestions, there are multiple
ways to confirm your selection:

* Pressing <kbd>Enter</kbd> completes the code.
* Pressing <kbd>Tab</kbd> replaces code that was there before.
* Pressing <kbd>.</kbd> completes the code and adds a . so you can continue typing.
* Pressing <kbd>Space</kbd> does the same but adds a space instead of a . (this is different from regular suggestions after typing a .!)

Currently, Optimus has a method called .catchphrase that takes a prefix and returns \<prefix\> Rollout!. We can rename that method to rollout.

To navigate to the .catchphrase method, use <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>B</kbd>. Then delete catchphrase and replace it with rollout (
don't use <kbd>Shift</kbd> + <kbd>F6</kbd>).

Next, go back to the Transformers class with <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Left</kbd> and use autocomplete to replace the previous
non-compiling catchPhrase method with the new rollout method. Try using <kbd>Enter</kbd> as your confirmation selection first, and then undo
with <kbd>Ctrl</kbd> + <kbd>Z</kbd> and retry the autocompletion using <kbd>Tab</kbd> as your selection confirmation.

Repeat the process with the other confirmation methods listed above.

### **Mac**

<!-- tabs:end -->

## _QuickFix_ (:bulb:)

<!-- tabs:start -->

### **Windows**

IntelliJ's QuickFix is a powerful tool that can save you a lot of time and effort.
In fact, it is so powerful that it might as well be magic.
Whether you're creating a new constructor, generating getters and setters for newly created fields, or extracting a method or variable, QuickFix has
got you covered. And if your code isn't compiling, QuickFix can help you fix the problem in no time.

To use QuickFix, simply press <kbd>Alt</kbd> + <kbd>Enter</kbd>. This shortcut will bring up a menu of possible actions you can take to fix the
issue at hand. Use cases include, but are not limited to:

* Creating a new constructor? Use <kbd>Alt</kbd> + <kbd>Enter</kbd>.
* Generating getters and setters for newly created fields? Why not try <kbd>Alt</kbd> + <kbd>Enter</kbd>?
* Extracting a method out of selected code? Make a selection, and press <kbd>Alt</kbd> + <kbd>Enter</kbd>.
* Extracting a variable? Press <kbd>Alt</kbd> + <kbd>Enter</kbd>.
* Code not compiling? Press <kbd>Alt</kbd> + <kbd>Enter</kbd>.
* Need to defeat agent Smith and save the matrix? Press <kbd>Alt</kbd> + <kbd>Enter</kbd>.

QuickFix is so useful that it's probably the only IntelliJ shortcut you really need to remember.

### **Mac**

<!-- tabs:end -->

## Creating _stuff_

<!-- tabs:start -->

### **Windows**

The "Generate" action in IntelliJ is a powerful feature that allows you to quickly create code constructs such as constructors, methods, and
getters/setters. It saves you a lot of time and effort by automatically generating boilerplate code for you, based on the parameters you provide.
You can access the Generate action by pressing <kbd>Alt</kbd> + <kbd>Insert</kbd> in the editor window. This action is particularly useful when you
need to create a large amount of repetitive code, or when you need to add functionality to your code quickly.

Try out these actions using the <kbd>alt</kbd> + <kbd>insert</kbd> hotkey:

* Create a new package from the `1: Project` _Tool Window_ to create a new class in the next step.
* Create a new class from the `1: Project` _Tool Window_.
* Create a new constructor in that class from the editor.

### **Mac**

<!-- tabs:end -->

## Deleting _stuff_

<!-- tabs:start -->

### **Windows**

Programming is not only about creating new concepts and abstractions but also about cleaning up and getting rid of old or unnecessary code.
Fortunately, IntelliJ makes deleting code just as easy as creating it.

To delete code, you can simply select the lines you want to remove and press <kbd>Shift</kbd> + <kbd>Delete</kbd>. You can use it to delete any
code fragment in your project.

Your turn! Use this shortcut to:

* Delete the constructor you just created
* Delete the class you just created (the package will probably be deleted automatically because it was the only class in there)

> [!TIP]
> For more advanced scenarios, IntelliJ provides refactoring actions to help you delete code more safely and efficiently. For example, you can use
> the "inline and remove" refactoring action (<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>N</kbd>) to remove a method and all its invocations at
> once without breaking your syntactical correctness.
>
> First you empty the body of the method, next you inline it (<kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>n</kbd>).
>
> This is sometimes called the "nuke it" option, and it can be very handy when you want to get rid of a method that is used in multiple places.
> However, be sure to use this option with caution, as it can have unintended consequences if you're not careful.

### **Mac**

<!-- tabs:end -->

## View JavaDoc

<!-- tabs:start -->

### **Windows**

Open `Transformers.java`, and move your cursor to `Autobot`.

Press <kbd>Ctrl</kbd> + <kbd>Q</kbd> to view the JavaDoc for the Autobot class. Press <kbd>Esc</kbd> to exit the window.

Press <kbd>Ctrl</kbd> + <kbd>Q</kbd> twice to open a larger and separate window. Note that you cannot exit this window by pressing <kbd>Esc</kbd>,
but you can close it by pressing <kbd>Ctrl</kbd> + <kbd>Q</kbd> again and then pressing <kbd>Esc</kbd>.

You can also use <kbd>Ctrl</kbd> + <kbd>Q</kbd> from inside the autocompletion suggestion box. Try calling .toString() after your new Autobot()
statement using autocompletion (either by typing . or by pressing <kbd>Ctrl</kbd> + <kbd>Space</kbd>).

While still in the autocompletion suggestion box, navigate to the .toString() option and press <kbd>Ctrl</kbd> + <kbd>Q</kbd> to read its JavaDoc.

### **Mac**

<!-- tabs:end -->

## View parameters

<!-- tabs:start -->

### **Windows**

If you are ever unsure which parameters to provide to a method you're trying to use, press <kbd>ctrl</kbd> + <kbd>p</kbd>
while your cursor is inside the brackets of a method invocation statement. IntelliJ will tell you what parameterization is needed, and even
offer a list of alternative invocation options.

In the `Transformers.java` class, let's try to create the Decepticon, known as __"StarScream"__.

First uncomment the `// Decepticon.StarScream()` line.

Then put your cursor in between the brackets and type <kbd>ctrl</kbd> + <kbd>p</kbd>.

Notice how IntelliJ signals which parameter you are required to fill in by **emboldening** the parameter name.

### **Mac**

<!-- tabs:end -->
