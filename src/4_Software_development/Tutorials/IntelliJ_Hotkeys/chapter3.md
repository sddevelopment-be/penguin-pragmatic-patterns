# Chapter 3 - Selection

## Source code: Chapter Three

<!-- tabs:start -->

### **Chapter2.java**

```java
package be.swsb.productivity.chapter3;

public class Chapter3 {

    public String selectStuff() {
	    return "The quick brown fox " +
	            "jumps over " +
	            "the LazyDawg";
    }
}

```
<!-- tabs:end -->

## Move + Select 

<!-- tabs:start -->

### **Windows**
Open `Chapter3.java`, then move your cursor to the beginning of the line containing `"jumps over"`, hold
down <kbd>ctrl</kkbd>, <kbd>shift</kbd> and press the right arrow key <kbd> 	
&#8594;</kbd> to select that sentence. Now cut and paste it behind the first line.

### **Mac**

<!-- tabs:end --> 

## Expand Selection 

<!-- tabs:start -->

### **Windows**
Press <kbd>ctrl<kbd> <kbd>n</kbd> and open `Fugly.java`. 
Move your cursor to line `23`, column `28` by pressing <kbd>ctrl</kbd> <kbd>g</kbd> and typing `23:28`.
From that position press <kbd>ctrl</kbd> <kbd>w</kbd>, press this key combination again a few times, and see what happens.

Now try using <kbd>ctrl</kbd> <kbd>shift</kbd> <kbd>w</kbd> to incrementally reduce the size of your selection. Play around with both the 
`Expand selection` and `Reduce selection` key combinations until you feel comfortable with them.

### **Mac**

<!-- tabs:end -->

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
