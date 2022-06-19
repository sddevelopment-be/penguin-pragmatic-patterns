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
