# Chapter 1 - Basics

## Copy and Pasting

<!-- tabs:start -->
### **Windows**
Using `ctrl`+`C`, `ctrl`+`V`, copy the Chapter1 constructor to create a new one without a number, initialize the `number` field to the default value of `0`.    
Use your mouse to select text, then press `ctrl`+`C` to copy the selected text.  
Use your mouse to move your cursor to somewhere else, then press `ctrl`+`V` to paste the selected text.  

### **Mac**
Using `⌘ (cmd)`+`C`, `⌘ (cmd)`+`V`, copy the Chapter1 constructor to create a new one without a number, initialize the `number` field to the default value of `0`.    
Use your mouse to select text, then press `⌘ (cmd)`+`C` to copy the selected text.  
Use your mouse to move your cursor to somewhere else, then press `⌘ (cmd)`+`V` to paste the selected text.  

<!-- tabs:end -->

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

## Excercise 2: Keep your hands on your keyboard
Do the same exercise, but **ONLY** use your keyboard to select text.

## Excercise 3: How to look up any actions' shortcut

<!-- tabs:start -->
### **Windows**
Repeat Exercise 1, but instead of using `ctrl`+`C` and `ctrl`+`V`, use `ctrl`+`⇧(shift)`+`A` to look up your copy and paste actions in the quick help menu.  
Alternatively, you can double-tab the `⇧(shift)` key do open the quick action menu.

### **Mac**

Repeat Exercise 1, but instead of using `⌘ (cmd)`+`C` and `⌘(cmd)`+`V` use `⇧(shift)`+`⌘ (cmd)`+`A` to look up your copy and paste actions in the quick help menu.  
Alternatively, you can double-tab the `⇧(shift)` key do open the quick action menu.
<!-- tabs:end -->

## IntelliJ's _Productivity Guide_

<!-- tabs:start -->
### **Windows**
Open IntelliJ's Productivity Guide using these key combinations:
First press `alt`+`H` for _(H)elp_ (in the taskbar), then press `P` to select _(P)roductivity Guide_.

As a bonus:
Try opening the Productivity Guide using `ctrl`+`⇧(shift)`+` A`.

### **Mac**
Open IntelliJ's Productivity Guide using these key combinations:
First press `⌥ (opt)`+`H` for _(H)elp_ (in the taskbar), then press `P` to select _(P)roductivity Guide_.

As a bonus:
Try opening the Productivity Guide using `⇧(shift)`+`⌘ (cmd)`+` A`.
<!-- tabs:end -->

## Indenting code

<!-- tabs:start -->
### **Class `Fugly.java`**
````java
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
````

### **Class `FuglyToo.java`**
````java
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
````
<!-- tabs:end -->


<!-- tabs:start -->
### **Windows**
Open Fugly.java, use selection and indent the test builder patterns properly.
For this exercise, you can use `⇧` and your arrow keys to select lines.
Use `Tab` to indent them manually, or use `ctrl`+`alt`+`L` to autoformat the selected lines.


Hint: When manually indenting, first use `⇧`+`tab` to unindent everything until the entire selection is against the left side, then `tab` the entire selection into its first indentation, decrease your selection and `tab` that into its second indentation. Rinse and repeat.

### **Mac**
Open Fugly.java, use selection and indent the test builder patterns properly.
For this exercise, you can use `⇧` and your arrow keys to select lines.
Use `⇥ ` to indent them manually, or use `⌃`+`⌥ `+`L` to autoformat the selected lines.

Hint: When manually indenting, first use `⇧`+`⇥` to unindent everything until the entire selection is against the left side, then `⇥` the entire selection into its first indentation, decrease your selection and `⇥` that into its second indentation. Rinse and repeat.
<!-- tabs:end -->


## Undo, Redo 
<!-- tabs:start -->
### **Windows**
In most editors, Redo is mapped to `ctrl`+`y`. Not so in IntelliJ.  
This can lead to hilarious (or super annoying) situations where you'll lose your _undo buffer_.

Let's try it out and see what happens so you'll remember it better.

Open `FuglyToo.java` once more.

Add a comment above the method that reads `// this method is fugly`.

Add a comment on a new line that reads `// such fugliness should never be allowed`.

Press `ctrl`+`z` (_Undo_) and see what happens.

Press it a couple times.

Now press `ctrl`+`shift`+`z` (_Redo_) and see what happens.

Add these three comments to the file, each starting on a different line:
```
// herpty
// derpty
// derp
```
After you've typed the last line, press `ctrl`+`z` until you only have `// herpty` left.

As most people will have the reflex to press `ctrl`+`y` to _Redo_ their work, let's see what happens when we do just that.
Use `ctrl`+`y`, then try `ctrl`+`shift`+`z` to attempt and redo the revert you wish to reapply.

Try `ctrl`+`z` and see what that does. `ctrl`+`shift`+`z` again now.

Keep this strange behaviour in mind when you work in IntelliJ, or in another editor that doesn't have `ctrl`+`y` for _Redo_ :)

### **Mac**


<!-- tabs:end -->


> Congratz! You finished the first chapter of the tutorial.
> If you learned a few new tricks, feel free to take a break and let the information sink in.
> Otherwise, we look forward to seeying you in chapter 2. 
