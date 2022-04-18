
## Tutorial Outline

> Code with exercises to learn shortcuts and their associated thinking patterns
> Based on the repository [ProductivityWithShortcuts](https://github.com/Sch3lp/ProductivityWithShortcuts) by [Tim Schraepen](https://github.com/Sch3lp).

Each chapter contains a thorough explanation and a set of exercises. 
Even though the progression in these chapters might seem to be increasing in difficulty, you don't need to think of them as thresholds.
The main reason this series is divided into chapters is to help your brain make new neural pathways even better by trying to categorize certain types of shortcuts. This way, we hope you'll think of Using them more frequently in real life.


### What you'll learn
* Increase your productivity by using IntelliJ shortcuts.
* Think along with your pair, who's already proficient in using shortcuts.
* In what situations/contexts shortcuts are helpful.
* Some patterns for multi-cursor usage.

### How you'll learn
By doing! The only way to get shortcuts into mussle memory is by using them. **All.** **The.** **Time.**
This tutorial series provides a structured aproach to learn productivity shortcuts Using incrementally challenging 
exercises that will help you move forward at a consistent pace.

### Good Luck, Have Fun!
If you like these exercises, share them with your friends and colleagues, and drop a line to thank the [original author](https://github.com/Sch3lp).

### Code snippets

#### Package: be.swsb.productivity.common
<!-- tabs:start -->
### **Class `AFugly`**
````java
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
````

### **Class `FuglyTestBuilder`**

````java
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

````

### **Class `Face`**
````java
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
````

### **Class `FaceTestBuilder`**
````java
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
````
<!-- tabs:end -->
---

