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

Open `Chapter4.java`, move your cursor to line 6 (try and use a shortcut for this), and press <kbd>ctrl</kbd> <kbd>d</kbd>.

### **Mac**

Open `Chapter4.java`, move your cursor to line 6 (try and use a shortcut for this), and press <kbd>&#8984;</kbd> <kbd>d</kbd>.

<!-- tabs:end -->

## Yank

<!-- tabs:start -->

### **Windows**

Press <kbd>ctrl</kbd> <kbd>y</kbd> repeatedly to delete the lines.

### **Mac**

Press <kbd>&#8984;</kbd> <kbd>backspace</kbd> repeatedly to delete the lines.

<!-- tabs:end -->

## Moving lines with and without constraints

<!-- tabs:start -->

### **Windows**

While in `Chapter4.java`, the `System.out.println` function calls are switched around.
Place your cursor on one of the `System.out.println` lines, hold down <kbd>alt</kbd> <kbd>shift</kbd> and press <kbd>&#x2191;</kbd> or <kbd>&#x2193;
</kbd> to move that line.
Do the same for the other line.

You will see the methods aren't in the desired order yet, so place your cursor on `_2_snarf`'s method signature.
This time hold down <kbd>ctrl</kbd> <kbd>shift</kbd> and press <kbd>&#x2191;</kbd> or <kbd>&#x2193;</kbd> to move the entire method.

### **Mac**

<!-- tabs:end -->

## Start new line ![Windows](icons/glyph-windows-32.png)`shift+enter`
In `Chapter4.java`, go to 20:20. From this position we want to start implementing the methods body.

Typically, one would do this by pressing `end`, and then `enter`. But you can do this in one go by
pressing ![Windows](icons/glyph-windows-20.png)`shift+enter`, so let's do just that.

It'll come in handy later.

## Join lines ![Windows](icons/glyph-windows-32.png)`ctrl+shift+j`
We want to write the return statement of `_4_thundercats()` on just one line.

Don't do `end`, `delete`, `end`, `delete`, ...

Instead, first select all of the thundercats names (the strings), then press ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j` (for Join lines).
Hint: ![Windows](icons/glyph-windows-20.png)`ctrl+w` right after the `{`.

You might have to repeat the ![Windows](icons/glyph-windows-20.png)`ctrl+shift+j` combination, because IntelliJ's auto-formatting kicks in
sometimes.