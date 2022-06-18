# Articles

# Avoid Cargo Cult database design

> Originally published on 2019-08-28, by Stijn Dejongh as `Beware of hibernate killing your design`

## Shooting yourself in the foot because of Hibernate "Best practices"

A few years ago, one of my colleagues had some rather shocking things to say about the use of hibernate in 
big software projects.

> "We should leave hibernate and database modelling to senior developers. 
> A lot of projects I have worked on have been ruined by inexperienced people writing Database interaction code."

At that time we were working on enhancing the performance of an application that was pestered
with [N+1](https://secure.phabricator.com/book/phabcontrib/article/n\_plus\_one/) problems due to 
lackluster modeling and database design.

We are now a few years later, and a recent interaction with a fellow developer made me realize that
performance problems due to how easy hibernate makes it to links database tables is only part of the 
issue.

To understand what I mean with this, I will start with a simple modeling example,
in which we do not think about database interaction at all.

## A simple object modeling example

We start with a large monolithic system that contains multiple simple existing domains. Amongst others, the system 
has parts that are responsible for managing a corporate fleet. The system also has a separate part that is used
to manage shoe stores. The example is a bit extreme, as these sub domain are clearly miles apart, but bear with me.
It is abundantly clear that the Car system has little to do with the ShoeStore system.
We have followed a layered approach during our coding, and since we don't want to expose too much of our internal workings, 
the Cars system is controller through the "CarApplicationService" that contains some access control logic.
Likewise, the ShoeStore domain follows the same pattern. 

![Initial model](./_images/undesired-pathways.png)

All is fine and dandy, and desired pathways to our objects are clearly defined. If a class of the Car
domain needs to access anything in the ShoeStore domain, it is required to go through the ShoeStoreApplicationService
in order to manipulate any Shoe. And even though our system is a large monolith, our structure is quite clean.

In comes the following requirement
> We wish to be able to get a list of all the names and surnames of the drivers
> of the cars in our fleet.

If we were to naively do this, and just add a "Person" field to the Car class, we would end up with this:

![Adding a driver](./_images/add_person_link.png)
 
Now we have added a pathway that enables us to write code such as:
```java
//Stuff
car.getDriver().getShoes().getShoeStore().getName();
//More stuff
```

In this example it is apparant that this is not the way to go, that there is too much coupling, 
and that we need to rethink our model.
We might come up with a different solution for referencing person names.

## In comes hibernate

There are a lot of cool ORM frameworks out there that allow you to be more productive, and not
worry to much about database stuff. **Hibernate** for instance, enables you to annotate fields with 
code such as this:
````java
@Column(name = "PERSON_SURNAME")
private String surName;
````
This enables us to not worry to much about the specific database queries that will be executed,
 or even which specific database technology we use. And it is very easy to just add these annotation to
 our domain classes and know that hibernate has our backs and handles all the messy database interaction magic.
 One of such easy features, is that it allows us to hide join opperations on the database by modeling
 database links with foreign keys as if they were internal objects. Again, allowing us to code without worrying
 about the database stuff too much. We tend to write code like this without thinking much of it:
 
 ````java
@ManyToOne
@JoinColumn(name ="FK_PERSON_ID")
private Person person;
````
This helps ensure us that the data sent to (or retrieved from) the database will always be valid, as otherwise
we will run into exceptions and stacktraces.
Because of the ease of use hibernate gives us, most developers consider it good practise to encode database relationships in their code in this way. 


## So what's the fuzz?

Everyone knows of the design practices of separating your database entities from your domain code.
But in practice, this usually results in developers having to make a lot of changes, in a lot of different
classes when a new attribute is added to a class.
Most programmers in the business agree that while writing DAOs and domain classes separately is a nice
idea, the gain does not weigh up to the effort for most projects.
Since I value efficiency and pragmatism, I tend to somewhat share this idea.

The combination of previous sections is what makes hibernate a somewhat dangerous tool, if you are not
paying full attention to the object model you are creating without fully realizing it.

In the java code, there is a huge difference between modeling your database table that contains a foreign key to
a person as either a reference field (a `Long`, as per the database field content) or the refered object.

With hibernate magic:
 ````java
@ManyToOne
@JoinColumn(name ="FK_PERSON_ID")
private Person person;
````

Without hibernate magic:
 ````java
@Column(name ="FK_PERSON_ID")
private Long personId;
````

The second way of writing the java code does not allow you to access the Person class, while the first one does.
So my advise is as follows:

> "Do not let notions of hibernate "best practices" make you forget that you could be unintentionally
> coupling (domain) classes in your code."

and:

> "If you put in a path to another class, expect other people to use it.
> They might be the ones deviating from the original intentions, but you are the one that made it easy to do."
