# Chapter 8 - Multiple Cursors

And now, introducing the feature you have all been waiting for, the one and only:__Multiple Cursors__!

This is probably the most powerful, and useful, feature any text editor can have. Sadly enough, it might also be one of the most underused
features. Let's take a moment to compose ourselves, make sure we're wide awake for this chapter, and dive into the wonderful world of multi-line
editing.

## Source code

The code files you will need for this session are:
`Chapter8.java`, `listasserts:Status.java`, and `testbuilders:PersonTO.java`.

<!-- tabs:start -->

### Chapter8.java

```java
package be.swsb.productivity.chapter8;

public class Chapter8 {

    public Chapter8() {
        String output =
                "This sure is"
        "one hell of a"
        "long list of"
        "string concatenations"
        "that don't seem to"
        "have any purpose"
        "other than to"
        "prove the point"
        "of column mode"
        ;
    }

    public void multi-

    cursors() {
        String output = new StringBuilder()
                . "Multiple cursors"
                . "really are"
                . "an insanely powerful"
                .toString();
    }

    public void areTheBest() {
        String output = new StringBuilder()
                . "feature that"
                . "is greatly"
                . "underused and"
                . "also greatly"
                . "underestimated"
                .toString();
    }

    public void ignoreThisOne() {
        String output = new StringBuilder()
                .append("press alt+shift+j")
                .append("if you've gone too far")
                .append("when adding")
                .append(".")
                .toString();
    }
}
```

### listasserts:Status.java

```java
package be.swsb.productivity.chapter8.listasserts;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static be.swsb.productivity.chapter8.listasserts.Status.SubStatus.*;

enum Status {

    READY(NOT_REALLY),
    DONE(YA_REALLY),
    WAITING(O_REALLY),
    SOMEWHAT_READY(NOT_REALLY),
    DUNNO(YA_REALLY),
    NOT_READY(NOT_REALLY),
    WHATEVER(YA_REALLY),
    NOT_READY_AT_ALL(NOT_REALLY),
    ;

    private SubStatus subStatus;

    Status(SubStatus subStatus) {
        this.subStatus = subStatus;
    }

    public static List<Status> oReallyStatuses() {
        return Stream.of(values()).filter(Status::isOReally).collect(Collectors.toList());
    }

    public static List<Status> yaReallyStatuses() {
        return Stream.of(values()).filter(Status::isYaReally).collect(Collectors.toList());
    }

    public static List<Status> notReallyStatuses() {
        return Stream.of(values()).filter(Status::isNotReally).collect(Collectors.toList());
    }

    public SubStatus getSubStatus() {
        return subStatus;
    }

    private boolean isOReally() {
        return SubStatus.O_REALLY.equals(getSubStatus());
    }

    private boolean isYaReally() {
        return SubStatus.YA_REALLY.equals(getSubStatus());
    }

    private boolean isNotReally() {
        return SubStatus.NOT_REALLY.equals(getSubStatus());
    }

    enum SubStatus {
        NOT_REALLY,
        O_REALLY,
        YA_REALLY
    }
}
```

### testbuilders:PersonTO.java

```java
package be.swsb.productivity.chapter8.testbuilders;

import java.util.Date;

public class PersonTO {

    private String firstName;
    private String lastName;

    private Date birthDate;

    private String street;
    private String zipCode;
    private String country;
    private String phone;

    private int points;

    public PersonTO(String firstName, String lastName, Date birthDate, String street, String zipCode, String country, String phone, int points) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.street = street;
        this.zipCode = zipCode;
        this.country = country;
        this.phone = phone;
        this.points = points;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public String getStreet() {
        return street;
    }

    public String getZipCode() {
        return zipCode;
    }

    public String getCountry() {
        return country;
    }

    public String getPhone() {
        return phone;
    }

    public int getPoints() {
        return points;
    }
}
```

<!-- tabs:end -->

## Toggle Column Mode: part one

<!-- tabs:start -->

### **Windows**

For starters, let's introduce you to _Column Mode_.
Let's open `Chapter8`. The `output` variable contains a long string concatenation, but there are a few problems with it:

* the `+` is missing to actually DO the concatenation
* and there's a space missing at the end of every string

You could put your cursor at the beginning of the second line, type a `+`, and then press <kbd>down</kbd> and <kbd>home</kbd>,
and type a `+` again. Now you could repeat that process for every line, but there's an easier way.

Since all the strings are lined up perfectly, wouldn't it be easier if we could first put a bunch of cursors in front of every line, and then just
type `+`? Let's try to do just that.

First position your cursor at the **beginning** of the second string (`"one hell of a"`).
While watching the bottom right of your screen press <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>insert</kbd> once.
You should see the word `Column` appear next to `UTF-8`. This means you have just toggled on `Column Mode`.

Now, hold down <kbd>shift</kbd> and press <kbd>down</kbd> until you've reached the last string (`"of column mode"`). There
should be a cursor blinking at the beginning of every line. It might look like one giant cursor, but it is in fact a bunch of them.

Now simply type a `+` and be amazed.

Exit out of your multi-cursors by pressing <kbd>Escape</kbd>. Exit out of _Column Mode_ by pressing <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>
insert</kbd> again. The word `Column` should no longer appear in the bottom right, indicating you have indeed exited `column select mode`.

### **Mac**

<!-- tabs:end -->

## Toggle Column Mode: part two

This still leaves the issue of all of the strings not having a space at the end though.

<!-- tabs:start -->

### **Windows**

Let's undo our changes by pressing <kbd>ctrl</kbd> + <kbd>Z</kbd> and let's take a different approach. Notice
how using <kbd>ctrl</kbd> + <kbd>Z</kbd> once puts the multiple cursors back.

Now, what we really want is a `+` at the **end** of every string, and to add a space inside all the strings. Here's how you could do that.

Instead of putting your cursor at the beginning of the second line, put it at the beginning of the **first** line (`"This sure is"`).

Toggle _Column Mode_ again with <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>insert</kbd>, and select all the lines again by repeatedly
pressing <kbd>down</kbd> until you've reached the second last string.

Now press <kbd>End</kbd>. Notice how the cursors are all at different ending positions.

First let's add the spaces so our strings aren't pressed together as much. Move your cursor inside of the string by pressing <kbd>left</kbd>
once. Then type a <kbd>space</kbd>.

Then press <kbd>End</kbd> again and type a <kbd>+</kbd>. <kbd>Escape</kbd> out of the multicursor and disable _Column Mode_ by
pressing <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>insert</kbd>.

### **Mac**

<!-- tabs:end -->

This is a great feature for when all the lines you want to edit are right underneath each other, but that won't always be the case.
Let's see how we can solve that issue as well.

## Select occurrences

In `Chapter8` there are two methods that need some fixing. They both tried to use a `StringBuilder` but seemed to have forgotten to use
the `append()` method. We can't use _Column Mode_ because the same mistake is repeated in a different method and there are lines in between that we
don't want to put a cursor at.

<!-- tabs:start -->

### **Windows**

We can, however, use <kbd>alt</kbd> + <kbd>j</kbd> to add a cursor to a _Find buffer_ (<kbd>F3</kbd>
and <kbd>ctrl</kbd> + <kbd>F3</kbd>).

Take a moment to think about what selection you would want to _Find_ in that class.

Let's first try to see what would be included by pressing <kbd>ctrl</kbd> + <kbd>F3</kbd> on the following selections: `"`, `.`, `."`.

> [!TIP]
> Spoiler:
> - `"` won't be good, because then we'd also end up with a cursor at the end of the string.
> - `.` won't be good either, because we don't want to include the `.toString()`.
> - `."` however is a near perfect fit.

So let's select the first `."` at `21:17` and press <kbd>alt</kbd> + <kbd>j</kbd> once and see what happens.
Now repeat <kbd>alt</kbd> + <kbd>j</kbd> until you've selected all of the occurrences.
You'll notice that the last occurrence is working code, and we don't want to change that last one. So
press <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> to undo that last `add to cursor` selection.

Then let's fix the code by typing `append` after the `.`. Don't exit out of your multi-cursor just yet.

Remember how in [Chapter 3](./chapter3.md) we learned about IntelliJ's _Wrapping_ feature?
Maybe you also recall how we said that it was gonna shine in this chapter?

If you haven't already, enable Wrapping with <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>a</kbd>, `smart braces`, `enter`.

From the multi-cursors positioned after the `append` you just typed, press <kbd>shift</kbd> + <kbd>end</kbd> to select all the
strings, and then press `(`.

As an alternative to repeatedly pressing <kbd>alt</kbd> + <kbd>j</kbd>, and if you're 100% sure that you won't include too much, you
can also press <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> and add **all** occurrences to your cursors in one go.

Undo <kbd>ctrl</kbd> + <kbd>z</kbd> your corrections and try it out.

Notice how <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> still deselects the last occurrence. This is
because <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> is merely a repeated <kbd>alt</kbd> + <kbd>j</kbd>.

> [!NOTE]
> Using this key combination often is also a great way to train your manual dexterity.

### **Mac**

<!-- tabs:end -->

## Various use cases

Now that we've seen the basics of creating and using multiple cursors, let's try to apply it to some everyday tasks.
We will see how using multiple selections can make your developer life so much easier.

### Creating a TestBuilder

Pretend we've got a _Transfer Object_ `PersonTO` that represents a person in our problem domain.
We would like to to create a TestBuilder for this class so we can easily create and configure objects for our Unit Tests.

TestBuilders also typically reside in the same package as the class you want to build,
but in the _test_ folder structure rather than in the `main` package.

<!-- tabs:start -->

### **Windows**

In IntelliJ, you can create a Unit Test for a class by pressing <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>t</kbd> from the class you're
currently editing.

We will now use this to our advantage while creating a TestBuilder. Open `PersonTO` with <kbd>ctrl</kbd> + <kbd>n</kbd>, and
press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>t</kbd>.

Overwrite the class name from `PersonTOTest` to `PersonTOTestBuilder` and press <kbd>Enter</kbd>.

You might want to get rid of unnecessary `org.junit.Assert.*` imports by pressing <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>o</kbd> to _Organize
Imports_.

Go back <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>left</kbd> to the `PersonTO`, and copy all private fields over to the `PersonTOTestBuilder`.

Create an empty constructor for the TestBuilder with <kbd>alt</kbd> + <kbd>insert</kbd>.
Press <kbd>up</kbd> and <kbd>ctrl</kbd> + <kbd>enter</kbd> to choose an empty constructor from the generation menu.

Create a `build()` method that returns a `PersonTO`.

Now, while still inside the `PersonTOTestBuilder`, generate setters for all the private fields we just copied from `PersonTO`:
Press <kbd>alt</kbd> + <kbd>insert</kbd>, select `Setters`, then press <kbd>shift</kbd> + <kbd>end</kbd> to select all
the fields, and press <kbd>ctrl</kbd> + <kbd>Enter</kbd>.

Using <kbd>Enter</kbd> would also work, but it's advisable to use <kbd>ctrl</kbd> + <kbd>Enter</kbd> when in a separate window, to
press the highlighted button, and perform the _Default action_.

> [!INFO]
> Commit this sequence to muscle memory, you will get good mileage from it.

Now we've got a bunch of setters in our builder... That's great, but we also want the methods to be chainable.

Select the "`void set`" part of the first setter, and press <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd>.
Type `PersonTOTestBuilder` (because we want a _Fluent API_, using chainable interfaces).

Now we've got some options with our method names. We either want all of our configurable methods to have the `with` keyword, or you want them
lowercased.

We can lowercase all of our methods by selecting the first letter: from your multi-cursors position
press <kbd>shift</kbd> + <kbd>right</kbd>. Then press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>u</kbd> to toggle lower or upper
case.

Now the only thing we need to do is to change the return statement to: `return this;`.
Let's press <kbd>down</kbd>, then press <kbd>shift</kbd> + <kbd>enter</kbd>, and type `return this;`

There you go, we created a TestBuilder in less than a minute of work.
Time to be pleased with ourselves and fetch a hot beverage.

### **Mac**

<!-- tabs:end -->

### Testing Enum Lists

We've got a made up `Status` enum containing a bunch of statuses that contain another made up `SubStatus`.
In the correspodning Unit Test, aptly named `StatusTest`, we want to test that the static methods return the correct `Statuses` based on their
`SubStatus`. The implementation is already there, we just need a good list summation in our `.containsOnly` of the `NOT_REALLY` test.

In this excercise, we will be using multi-cursors to get a list of elements we can use for our test.

<!-- tabs:start -->

### **Windows**

Open `Status.java`, and use <kbd>alt</kbd> + <kbd>j</kbd> on `NOT_REALLY` until you've got cursors on all the enums with that
status. Now try to select the Statuses themselves.

> [!TIP]
> You might have to disable `CamelHumps` with <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>a</kbd> to help with the selection.

Copy (<kbd>ctrl</kbd> + <kbd>c</kbd>) these.
Now navigate back to `StatusTest.java`. Before you paste, enable _Column Mode_, make sure there's a bunch of empty lines, and paste your
buffered lines to their destination.
By using _Column Mode_, we ensure our multiple cursors remain active and usable after pasting.

With our multi-cursors still there, put a `,` behind every copied enum value,
and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> to join all the lines.

Now: complete the `yaReallyStatuses_ContainOnlyDoneAndDunno` test on your own.

> [!TIP]
> <kbd>alt</kbd> + <kbd>insert</kbd> is context sensitive, meaning IntelliJ will know what you want because you're in a Unit Test.

### **Mac**

<!-- tabs:end -->

### Making CSV lists from XML

Here's an excerpt of an `xml` file containing a bunch of people from DC's Batman universe.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Persons>
    <Person>
        <FirstName>Bruce</FirstName>
        <LastName>Wayne</LastName>
        <Age>24</Age>
        <SecretIdentity>Batman</SecretIdentity>
    </Person>
    <Person>
        <FirstName>Pamela Lillian</FirstName>
        <LastName>Isley</LastName>
        <Age>26</Age>
        <SecretIdentity>Poison Ivy</SecretIdentity>
    </Person>
    <Person>
        <FirstName>Edward</FirstName>
        <LastName>Nigma</LastName>
        <Age>41</Age>
        <SecretIdentity>The Riddler</SecretIdentity>
    </Person>
</Persons>
```

We'll try and create a csv list from this xml.

<!-- tabs:start -->

### **Windows**

So let's open (<kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>n</kbd>) `Batman.xml`, and navigate to the directory where it's at
with <kbd>ctrl</kbd> + <kbd>F1</kbd>.

Create a new file with <kbd>alt</kbd> + <kbd>insert</kbd> and call it `persons.csv`.

Copy the contents of `Batman.xml` into `persons.csv`. We can already delete the first line with <kbd>ctrl</kbd> + <kbd>y</kbd>.

We know that every `</` denotes the end of one field, but if we were to use <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> on
that, we would also include the `</Person>` tags.

These tags though, denote the end of one line, so let's first get rid of those and replace them with simple `new lines`.
This means we can simply get rid of the start tag `<Person>` with <kbd>ctrl</kbd> + <kbd>y</kbd>.

Your file should now only contain items like this one:

```xml

<FirstName>Bruce</FirstName>
<LastName>Wayne</LastName>
<Age>24</Age>
<SecretIdentity>Batman</SecretIdentity>
```

Select all the closing tags by selecting `</` and <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd>, and replace them by a `,`.

Your file should now only contain items that look like this:

```xml

<FirstName>Bruce,
    <LastName>Wayne,
        <Age>24,
            <SecretIdentity>Batman,
```

We will now get rid of the opening tags, so we end up with a CSV-formatted file.
If you want to retain the tag names as a CSV header line you can <kbd>alt</kbd> + <kbd>j</kbd> on the opening angular brackets
and <kbd>ctrl</kbd> + <kbd>w</kbd> to select all tag names.

Paste them at the top (`home`) while in _Column Mode_ to retain the multi-cursors, at the <kbd>end</kbd> of the line put
a `,` and press <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd>. The `j` indicating we wish to join lines together.

Then select all the opening tags by selecting `<` and pressing <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>j</kbd>.

Expand selection with <kbd>ctrl</kbd> + <kbd>w</kbd>, delete the tags, <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> (joining lines).
and remove the last `,` at the <kbd>end</kbd> of the line. You can then still get rid of excess new lines by
pressing `up` and either <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>j</kbd> or <kbd>ctrl</kbd> + <kbd>y</kbd> delete
line.

And that's it.

### **Mac**

<!-- tabs:end -->
