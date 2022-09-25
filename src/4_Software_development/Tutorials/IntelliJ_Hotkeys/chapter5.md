# Chapter 5 - Embedded Windows

IntelliJ has various _Tool Windows_, like the `1: Project` window, `9: Version Control` window, or `3: Find` window.
When one of these _embedded_ windows have focus, other shortcuts are available.
In this topic we'll talk about some of them.

## Opening/Closing (Toggling)

<!-- tabs:start -->

### **Windows**
All of these windows are accessible by holding down <kbd>alt</kbd> and pressing the associating number.
e.g. If you want to open or close the `1: Project` window, you press <kbd>alt</kbd> <kbd>1</kbd>.
You can also minimize the current active tool window using <kbd>shift</kbd> <kbd>escape</kbd>.

### **Mac**
All of these windows are accessible by holding down <kbd>&#8984;</kbd> and pressing the associating number.
e.g. If you want to open or close the `1: Project` window, you press <kbd>&#8984;</kbd> <kbd>1</kbd>.

<!-- tabs:end -->

## Switching tabs

<!-- tabs:start -->

### **Windows**

Some of these windows have multiple tabs in them, i.e. the `6: TODO` window. So let's open that with <kbd>alt</kbd> <kbd>6</kbd>.
You'll notice that it contains the _Project_, _Current File_, _Scope Based_ and _Default Changelist_ tabs.
You can switch between these tabs by pressing <kbd>alt</kbd> <kbd>&#8594;</kbd> and <kbd>alt</kbd> <kbd>&#8592;</kbd>.

Give it a try!

### **Mac**

Some of these windows have multiple tabs in them, i.e. the `6: TODO` window. So let's open that with <kbd>&#8984;</kbd> <kbd>6</kbd>.
You'll notice that it contains the _Project_, _Current File_, _Scope Based_ and _Default Changelist_ tabs.
You can switch between these tabs by pressing <kbd>&#8984;</kbd> <kbd>
shift</kbd> <kbd>[</kbd> and <kbd>&#8984;</kbd> <kbd>shift</kbd> <kbd>]</kbd>.

Give it a try!

<!-- tabs:end -->

## Navigation from Embedded Windows

<!-- tabs:start -->

### **Windows**

Some Tool Windows will display results, like `3: Find` and `8: Hierarchy`, which you can use to navigate to directly.

There's two ways of doing this:

* <kbd>ctrl</kbd> <kbd>enter</kbd>: allows you to navigate to your selected result, but focus remains on your Tool Window
* <kbd>F4</kbd>: navigates to your selected result AND focuses the editor window in one go.

Let's try 'em both out.

We want to follow the path the code takes at runtime until we get to `CoffeeBeans.scent()`, so let's trace back our steps from there by
opening `CoffeeBeans.java`, and <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>h</kbd> on the `scent()` method.

Use <kbd>ctrl</kbd> <kbd>enter</kbd> on `CoffeeSmeller.smell()`, see where it takes you, then <kbd>ctrl</kbd> <kbd>enter</kbd>
on `Chapter5.smellBeans()`.

We figured out we want to change something in `CoffeeSmeller`, so select `CoffeeSmeller` in the `8: Hierarchy` tool window and instead of
pressing <kbd>ctrl</kbd> <kbd>enter</kbd>, press <kbd>F4</kbd>.

Now we can change the implementation.

### **Mac**

Some Tool Windows will display results, like `3: Find` and `8: Hierarchy`, which you can use to navigate to directly.

There's two ways of doing this:

* <kbd>&#8997;</kbd> <kbd>enter</kbd>: allows you to navigate to your selected result, but focus remains on your Tool Window
* <kbd>&#8984;</kbd> <kbd>&#x2191;</kbd>: navigates to your selected result AND focuses the editor window in one go.

Let's try 'em both out.

<!-- tabs:end -->

## Why resizing is for dummies

<!-- tabs:start -->

### **Windows**
Stop resizing your _Tool Windows_, use them when you need them (see _Opening/Closing (Toggling)_).

If you don't need your _Tool Window_, you'll want to focus back on your editor window. You can do this from anywhere (meaning, from any
focussed _Tool Window_) by pressing <kbd>ctrl</kbd> <kbd>shift</kbd> <kbd>F12</kbd>.

So, let's first imagine we were looking at a hierarchy of `CoffeeBeans.scent()`, we looked at `CoffeeSmeller`'s use and we checked where in
the package structure `CoffeeSmeller` was situated by pressing <kbd>alt</kbd> <kbd>F1</kbd>.

Now we have both the `1: Project` and `8: Hierarchy` _Tool Windows_ open. But we want to continue tweaking the CoffeeSmellers code, so let's
press <kbd>ctrl</kbd> <kbd>shift</kbd> <kbd>F12</kbd> and get our focus back on where it belongs, without any distractions.

Happy editing!

### **Mac**

<!-- tabs:end -->


