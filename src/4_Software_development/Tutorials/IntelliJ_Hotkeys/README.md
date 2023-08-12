In this tutorial series, you will learn:

* How to increase your productivity by using IntelliJ shortcuts.
* When and in what contexts shortcuts are useful.
* Some patterns for multi-cursor usage.

This tutorial walks you through different scenarios where the use of hotkeys is demonstrated in real-world situations.
Learning them this way will help you identify situations where the use of a hotkey can be beneficial during your day-to-day work.

If you are interested in a quick reference for the most commonly used hotkeys, take a look at [these JetBrains IDEA reference cards](https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf).
Looking for more personalized hotkey suggestions that will improve your development speed? Take a look at the plugin [Key Promoter X](https://plugins.jetbrains.com/plugin/9792-key-promoter-x).
It tracks your most commonly used actions, suggests hotkeys. It also shows you how many times you used a shortcut or took the long route.

Another useful IDEA plugin for using hotkeys is the [Presentation assistant](https://www.jetbrains.com/idea/guide/tutorials/presenting/presentation-assistant/).
This adds a hovering window which displays the key combination you just used. It is really helpful when sharing your screen with others (when
pairing, for example). It can also be used as additional feedback to simply remind yourself of what you just did.

## License

This tutorial series was originally published under the MIT License as [`ProductivityWithShortcuts`](https://github.com/Sch3lp/ProductivityWithShortcuts), by its creator: [Tim Schraepen](https://github.com/Sch3lp).

<details>
<summary>The MIT License (MIT) - Copyright (c) 2016 Tim Schraepen </summary>

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

</details>

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

### How you will learn

The only way to get shortcuts into muscle memory is by using them repeatedly. This tutorial series provides a structured approach to learn
productivity shortcuts by incrementally challenging exercises that will help you move forward at a consistent pace.

> [!TIP]
> To use a keyboard shortcut, press and hold one or more modifier keys and then press the last key of the shortcut.  
> If you are using a keyboard made for a Windows PC while working on a Mac, use the <kbd>Alt</kbd> key instead of <kbd>&#8997;</kbd>, and the
> Windows logo key ( <kbd>&#8862;</kbd>) instead of <kbd>&#8984;</kbd>.

### Good Luck, Have Fun!

If you find these exercises useful, share them with your friends and colleagues and drop a line to thank [Tim](https://github.com/Sch3lp) for making this tutorial publicly available.

## Code snippets

All code accompanying this tutorial series can be downloaded in bulk from [sch3lp/ProductivityWithShortcuts](https://github.com/Sch3lp/ProductivityWithShortcuts/tree/master/src)

### Package: be.swsb.productivity.common

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

