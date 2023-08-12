# Chapter 2.1 - Navigation

## Source code: Chapter Two

<!-- tabs:start -->

### **Chapter2.java**

```java
package be.swsb.productivity.chapter2;

public class Chapter2 {

    public Chapter2() {
        String phrase = theQuickBrownFoxJumpedOverTheLazyCamel();
    }

    private String theQuickBrownFoxJumpedOverTheLazyCamel() {
        return "The quick brown fox jumped over the lazy camel";
    }

    private String fox() {
        return "The quick brown fox ";
    }

    private String jumpUsingStrategy() {
        return JumperStrategyFactory.epicJumperStrategy().jump();
    }

    private String camel() {
        return "the lazy camel";
    }
}
```

### **EpicJumper.java**

```java
package be.swsb.productivity.chapter2;

public class EpicJumper implements Jumper {

    @Override
    public String jump() {
        return "pump epically ";
    }
}

```

### **Jumper.java**

```java
package be.swsb.productivity.chapter2;

public interface Jumper {

    String jump();
}

```

### **JumperStrategyFactory.java**

```java
package be.swsb.productivity.chapter2;

public class JumperStrategyFactory {

    public static Jumper epicJumperStrategy() {
        return new EpicJumper();
    }

    public static Jumper mehJumperStrategy() {
        return new MehJumper();
    }
}

```

### **MehJumper.java**

```java
package be.swsb.productivity.chapter2;

public class MehJumper implements Jumper {
    @Override
    public String jump() {
        return "pump ";
    }
}

```

<!-- tabs:end -->

## Source code: Chapter Two/mud

<!-- tabs:start -->

### **BallRepository.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class BallRepository {

    public Ball lookupById(String id) {
//        return new Ball(id, 10);
        return null;
    }
}
```

### **Ball.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class Ball {
    private final String id;
    private final int size;

    public Ball(String id, int size) {
        this.id = id;
        this.size = size;
    }

    public String getId() {
        return id;
    }

    public int getSize() {
        return size;
    }

    public void bounce() {
        System.out.println("bounce");
    }

    public void smash() {
        System.out.println("smash");
    }

    public void hit() {
        System.out.println("hit");
    }

    public void dribble() {
        System.out.println("dribble");
    }

    public void kick() {
        System.out.println("kick");
    }

    public void shoot() {
        System.out.println("shoot");
    }

    public void throwww() {
        System.out.println("throwww");
    }

    public void squeeze() {
        System.out.println("squeeze");
    }

    public void roll() {
        System.out.println("roll");
    }

    public void destroy() {
        System.out.println("destroy");
    }

    public void collect() {
        System.out.println("collect");
    }

    public void launch() {
        System.out.println("launch");
    }

    public void drizzle() {
        System.out.println("drizzle");
    }

    public void hoop() {
        System.out.println("hoop");
    }

    public void net() {
        System.out.println("net");
    }

    public void score() {
        System.out.println("score");
    }

    public void supersmash() {
        System.out.println("supersmash");
    }

    public void assemble() {
        System.out.println("assemble");
    }

    public void complete() {
        System.out.println("complete");
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ball ball = (Ball) o;

        if (size != ball.size) return false;
        return id != null ? id.equals(ball.id) : ball.id == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + size;
        return result;
    }
}

```

### **RealBall.java**

```java
package be.swsb.productivity.chapter2.mud.domain;

public class RealBall extends Ball {

    public RealBall(String id, int size) {
        super(id, size);
    }

    public void bounce() {
        System.out.println("bounce");
    }

    public void smash() {
        System.out.println("smash");
    }

    public void hit() {
        System.out.println("hit");
    }

    public void dribble() {
        System.out.println("dribble");
    }

    public void kick() {
        System.out.println("kick");
    }

    public void shoot() {
        System.out.println("shoot");
    }

    public void throwww() {
        System.out.println("throwww");
    }

    public void squeeze() {
        System.out.println("squeeze");
    }

    public void roll() {
        System.out.println("roll");
    }

    public void destroy() {
        System.out.println("destroy");
    }

    public void collect() {
        System.out.println("collect");
    }

    public void launch() {
        System.out.println("launch");
    }

    public void drizzle() {
        System.out.println("drizzle");
    }

    public void hoop() {
        System.out.println("hoop");
    }

    public void net() {
        System.out.println("net");
    }

    public void score() {
        System.out.println("score");
    }

    public void supersmash() {
        System.out.println("supersmash");
    }

    public void assemble() {
        System.out.println("assemble");
    }

    public void complete() {
        System.out.println("complete");
    }

}

```

<!-- tabs:end -->

## Word-skipping with the arrow keys

<!-- tabs:start -->

### **Windows**

Open `Chapter2.java`, and place your cursor in front of the word _"The"_ of the popular phrase, and tap <kbd>ctrl</kbd> + <kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

### **Mac**

Open `Chapter2.java`, and place your cursor in front of the _"The"_ of the popular phrase, and tap <kbd>&#8997</kbd> + <kbd>&#8594</kbd> 8 times.
You should now have your cursor at the beginning of the word _"camel"_.

<!-- tabs:end -->

## Jump to Start/End of Line

<!-- tabs:start -->

### **Windows**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>end</kbd>.
Press <kbd>home</kbd> once, look at your cursors position, then press <kbd>home</kbd> again and see what happens. Press <kbd>home</kbd> one more
time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd> + <kbd>
home</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

### **Mac**

Still in `Chapter2.java`, place your cursor at the start of the popular phrase, and press <kbd>&#8984;</kbd> + <kbd>&#8594;</kbd>.
Press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> once, look at your cursors position, then press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> again and see what
happens. Press <kbd>&#8984;</kbd> + <kbd>&#8592;</kbd> one more time.

If you would like to see a stroboscopic effect, put your cursor at the beginning of the word _"return"_, and hold down <kbd>shift</kbd> + <kbd>
&#8984;</kbd> + <kbd>&#8592;</kbd>.  
Enjoy annoying anyone that might be watching over your shoulder.

<!-- tabs:end -->

## Jump to Begin/End of File

<!-- tabs:start -->

### **Windows**

Try out <kbd>ctrl</kbd> + <kbd>home</kbd> and <kbd>ctrl</kbd> + <kbd>end</kbd> in `Chapter2.java`.  
Alternatively, you can accomplish the same using <kbd>PgUp</kbd> and <kbd>PgDn</kbd>.

### **Mac**

Try out <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8592;</kbd> and <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8594;</kbd> in `Chapter2.java`.

<!-- tabs:end -->

## CamelHumps (+ how to toggle)

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>ctrl</kbd> + <kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>a</kbd>, then type `CamelHump`. There used to be a setting
named `Smart Keys: Use "CamelHumps" words` with a toggle indicator, but this disappeared since some new release around 2019.

Instead if you want to do something using the alternative CamelHumps mode, there **is** an action in the action menu for that.

These are called `Move Caret to Next Word with Selection in Different "CamelHumps" Mode` (or Previous Word, or without Selection).

They all appear when you type CamelHumps and IntelliJ remembers your last action command, so it's not all bad.

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>ctrl</kbd> + <kbd>&#8594;</kbd>), or skip based on
> CamelCasing (<kbd>alt</kbd> + <kbd>&#8594;</kbd>).

### **Mac**

> [!NOTE]
> These shortcuts might override with your OS shortcuts, so it's wise to disable these before you continue with the next exercises.

In `Chapter2.java`, put your cursor at the beginning of the method `theQuickBrownFoxJumpedOverTheLazyCamel`.

Try to use _Skip Word_ with <kbd>&#8997;</kbd> + <kbd>&#8594;</kbd> on that method.

Depending on your CamelHumps setting, your cursor either ended up on the _"Q"_ or it skipped the entire method name and ended up on the _"("_.

Return to the beginning of the method name and press <kbd>&#8984;</kbd> + <kbd>a</kbd>, then type `CamelHump`. There used to be a setting
named `Smart Keys: Use "CamelHumps" words` with a toggle indicator, but this disappeared since some new release around 2019.

Instead if you want to do something using the alternative CamelHumps mode, there **is** an action in the action menu for that.

These are called `Move Caret to Next Word with Selection in Different "CamelHumps" Mode` (or Previous Word, or without Selection).

They all appear when you type CamelHumps and IntelliJ remembers your last action command, so it's not all bad.

> [!TIP]
> Other tools, like SublimeText, have different key combinations to skip the entire word (<kbd>&#8963;</kbd> + <kbd>&#8594;</kbd>), or skip based on
> CamelCasing (<kbd>&#8997;</kbd> + <kbd>&#8594;</kbd>).

<!-- tabs:end -->

## Jumping methods

<!-- tabs:start -->

### **Windows**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>alt</kbd> + <kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>alt</kbd> + <kbd>&#8593;</kbd> to go back the way you came.

### **Mac**

In `Chapter2.java`, place your cursor at the `theQuickBrownFoxJumpedOverTheLazyCamel` method.  
Press <kbd>&#8963;</kbd> + <kbd>Shift</kbd> + <kbd>&#8595;</kbd> a few times and see what happens.  
Now use <kbd>&#8963;</kbd> + <kbd>Shift</kbd> + <kbd>&#8593;</kbd> to go back the way you came.

<!-- tabs:end -->

## Jump to "error"

<!-- tabs:start -->

### **Windows**

Move to the top of the file with <kbd>ctrl</kbd> + <kbd>Home</kbd> and from there press <kbd>F2</kbd>. This should navigate your cursor to the class
named `Chapter2` because IntelliJ marks it as being _unused_.

If you keep pressing <kbd>F2</kbd> it should keep cycling your cursor over the _unused_ warnings. In between the methods `jump()` and `camel()`,
paste the following:

```java
privet String kakdilla(){
        "horocho";
        }
```

Move to the top of the file again, and press <kbd>F2</kbd> once again.
Notice how the cursor now first jumps to the actual compilation error (_`privet` cannot be resolved_).

> [!NOTE]
> Cycling only happens over all actual _errors_, and the _unused warnings_ are not cycled over anymore.

### **Mac**

Move to the top of the file with <kbd>Fn</kbd> + <kbd>&#8984</kbd> + <kbd>&#8592;</kbd> and from there press <kbd>F2</kbd>. This should navigate your
cursor to the class named `Chapter2` because IntelliJ marks it as being _unused_.

If you keep pressing <kbd>F2</kbd> it should keep cycling your cursor over the _unused_ warnings. In between the methods `jump()` and `camel()`,
paste the following:

```java
privet String kakdilla(){
        "horocho";
        }
```

Move to the top of the file again, and press <kbd>F2</kbd> once again.
Notice how the cursor now first jumps to the actual compilation error (_`privet` cannot be resolved_).

> [!NOTE]
> Cycling only happens over all actual _errors_, and the _unused warnings_ are not cycled over anymore.


<!-- tabs:end -->

## Jump into

<!-- tabs:start -->

### **Windows**

__"Jump into"__, or __"drill down"__ as I like to call it, allows you to follow the path the code will execute at runtime.
It is a big timesaver when attempting to follow the logic of any given program.

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to `Chapter2.jumpUsingStrategy()` and place your cursor on the `jump()` method call. Press <kbd>ctrl</kbd> <kbd>b</kbd>.
This should take you straight to the interfaces `jump()` method.

Now, let's go back to where we came from. Press <kbd>ctrl</kbd> <kbd>alt</kbd> <kbd>b</kbd>. IntelliJ knows you want to __"drill down"__ into the
actual method implementation but doesn't know which one, so it will suggest some options. Select the `MehJumper` method by pressing <kbd>
&#8595;</kbd> and then <kbd>enter</kbd> and see where it leads you.

You can now correct the typo in the method, and move on to the next exercise.

### **Mac**

__"Jump into"__, or __"drill down"__ as I like to call it, allows you to follow the path the code will execute at runtime.
It is a big timesaver when attempting to follow the logic of any given program.

Right now, there's a typo in both the `EpicJumper.java` and `MehJumper.java` classes. Let's fix that.

Go to `Chapter2.jumpUsingStrategy()` and place your cursor on the `jump()` method call. Press <kbd>&#8984;</kbd> <kbd>b</kbd>.
This should take you straight to the interfaces `jump()` method.

Now, let's go back to where we came from. Press <kbd>&#8984;</kbd> <kbd>&#8997;</kbd> <kbd>b</kbd>. IntelliJ knows you want to __"drill down"__ into
the actual method implementation but doesn't know which one, so it will suggest some options. Select the `MehJumper` method by pressing <kbd>
&#8595;</kbd> and then <kbd>enter</kbd> and see where it leads you.

You can now correct the typo in the method, and move on to the next exercise.

<!-- tabs:end -->

> [!NOTE] As this chapter is quite lengthy, we split it up into two parts.
> Feel free to take a break now, or continue on to Chapter 2.2. 

---