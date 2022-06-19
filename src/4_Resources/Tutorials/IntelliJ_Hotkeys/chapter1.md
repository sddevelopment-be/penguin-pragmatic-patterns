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
