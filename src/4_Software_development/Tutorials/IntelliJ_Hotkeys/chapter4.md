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

