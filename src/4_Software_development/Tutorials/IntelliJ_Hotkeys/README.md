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
If you like these exercises, share them with your friends and colleagues, and drop a line to thank [Tim](https://github.com/Sch3lp)for making this tutorial publicly available.

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

