## A

### API

Application Program Interface. Specifies a set of software functions that are made available to an application
programmer. The API typically includes function names, the parameters that can be passed into each functions, and a
description of the return values one can expect.

### Asymetric clustering

Also known as a failover configuration.
One machine is in hot-standby mode and does nothing by monitor the other. In case of failure, the hot-standby takes
over.

### Asymmetric multiprocessing

Each processor is assigned to a single task. One processor is called the _master (or main) processor_, and controls the
system.

### Asynchronous cancellation

Cancellation of a target thread that immediatly terminates it.  
(e.g. Unix' `kill -9 $PID` command )

## B

### Blade servers

A single chassis with multiple processor boards, I/O boards, and networking boards. Each processor board boots
independently and runs its own operating system.

### Bootstrap program

An initial program, usually stored on ROM or EEPROM memory, to initiallize all aspects of the system.

### Bounded buffer

A type of buffer uses with shared memory IPC. Bounded buffers can only use a fixed amount of memory space.

### Boyscout rule

The base premise of the Boyscout rule is that if everyone leaves their environment a little bit better than it was when they found it, eventually it
wil flourish.
The term originates from the handbook of the Boyscouts of America, where it was phrased slightly differently to apply mostly to campsites.
In software development, the phrase is commonly used to entice programmers to clean up their own messes and the messes that were left behind by
their predecessors. This relates strongly to the broken window theory.

### Broken window theory

A theory [originating from the domain of criminology](https://en.wikipedia.org/wiki/Broken_windows_theory). The idea being that if an environment is
already decayed, people have less ethical problems with making it worse.
In the original criminological experiment from the 1990s, researchers measured how long it took for a building to be completely vandalized after
breaking a single window. Psychologist believe that outward signs of neglect make us feel that no one cares about the object in question, hence we
are not likely to care for it either.

## C

### Caching

The storing of information on a faster, smaller storage system than the main memory bank where the data originates from.
Cache management is highly important due to the limited size of of the faster storage medium. There are different levels
of cache-memory, indicating the memory's proximity to the CPU (lower == closer).
As the distance to the CPU increases, so does the available memory space of the cache.

### Cascading termination

Some systems terminate all of the child processes when they terminate the parent process. This is called __'cascading termination'__.

### CLI

Command Line Interface. A textual user interface, allowing for system interaction soley through text-based instructions
and feedback.

### Clustered systems

Two or more individual systems coupled together, with shared storage and closely linked via a LAN or faster
interconnect.

### Communications

These programs provide the mechanism for creating virtual connections among processes, users, and computer systems. They
allow users to send messages to anothers screens, to browse web pages, to send electronic-mail messages, to log in
remotely or to transfer files from one machine to another.

### Control card

a batch system concept. This is a command to manage the execution of a process (start, stop, interrupts, ...) . It can
be used to distinct between different error levels, and severity of instructions.

### Control program

A control program manages the execution of user programs to prevent errors and improper use of the computer.

### Context

- The circumstances in which an event occurs; a setting.
- The part of a text or statement that surrounds a particular word or passage and determines its meaning.

### Context switching

* in computer science: A state save of the current process and the state restore of a different process, when a swap occurs.

### CPU registers

Registers are special purpose physical memory used during runtime execution of instruction sets. These registers are usually optimized for their
dedicated task.
These registers vary in number and type, depending on the computer architecture. They include `accumulators`, `index registers`, `stack pointers`,
and general-purpose registers,
plus any condition-code information (e.g. status codes). Along with the program counter, the content of these registers must be saved when an
interrupt occurs, to allow the process to be continued correctly afterward.

### CPU scheduling information

Information related to task-scheduling on the processor. Usually includes `process priority`, `pointers to scheduling queues`, as well as
architecture specific information.

### CSV

Short for __"comma-separated value"__. A commonly used file format to represent tabular data.
These files usually start with a line denoting the names of the columns. Each subsequent line is considered to be a data row.

An example:

```csv
name, age, location
Leeroy Jenkins, ?, some dungeon
Smaug, >200 years, on top of your dwarven gold
Bob The Builder, ?, construction site
```

## D

### DDD

Short for Domain Driven Design. (from [GlossaryTech](https://glossarytech.com/search/results?phrase=DDD.html))
Domain-Driven Design is a set of principles and schemes aimed at creating optimal systems of objects. Reduced to the
creation of software abstractions, which are called models of subject areas. These models include business logic that
establishes a link between the real conditions of the products application area and the code.

### Debugger

A program to help the user find an correct defects in their program.
The term _"bug"_ originates from one of the original calculation machines at the IBM labs. Notoriously, one of their
calculations misbehaved and the researches were unable to find a logical error in their work.
It had turned out an insect wandered into the machinery and disrupted its proper execution.
To fix their calculation, one of the research had to physically rid the machine of pesky "bugs",
hence coining the phrase _"debugging the system"_.

### Defered cancellation

Thread cancellation style, in which the target thread is gracefully shut down. The tarhet thread periodically checks whether it should/cam
terminate, allowing it an opportunity to terminate itself in an orderly fashion. By doing this, it can release any held system resources, and
cascade the shutdown command to it's children.

### Deprecated methods

Methods that are still implemented in the current API, but are marked for removal in the future.
Reliance on these methods is generally discouraged.

### Desiderata

(singular: Desideratum) Latin for "the things we want". Occasionally used in software development and program management to make a clear
distinction between a "requirement" and a "desired result". Whereas requirements define the minimum acceptable qualities of a result,
approximating our desiderata is often sufficient to call our efforts a success.

### Direct communication

A type of message-passing system, where each process that wishes to communicate with another must explicitly name the recipient or sender of the
communication.

### Dispatch latency

The time it takes to stop one process and start another one.

### DLM

Distrubuted lock manager. A function which ensures that no conflicting operations occur in clustered systems.

### DMA

**D**irect **M**emory **A**ccess. A specific way of organizing memory on a computer system. After setting up buffers,
pointers, and counters for the I/O device, the device controller transfers an entire block of data directly to or from
its on-buffer storage to memory, with no intervention by the CPU. Only one interrupt is generated per block to tell the
device driver that the operation has completed, rather than the one interrupt per byte generated by low-speed devices.
While the device controller is performing those operations, the CPU is available to accomplish other work.

### DSL

**D**omain **S**pecific **L**anguage. A specialized programming language intended to be used in a specific business context.
Usually a bespoke language, developed to fit the business context. These languages are created to serve as shorthand for common operations withina
business environment (e.g. configuration, creation of new CRUD endpoints, etc.). As a higher-order language, DSLs are generally built on top of
existing powerful language stacks, such as Kotlin, Java, Rust, Typescript, ... .
You might see them as specialist programming interfaces, written in such a way that most of the boilerplate and ceremony canbe avoided.

## E

### Engineering

Engineering is the application of an emperical, scientific approach to finding efficient, economic solutions to practical problems.  
(from: [Modern software engineering](https://www.oreilly.com/library/view/modern-software-engineering/9780137314942/), D. Farley.

## F

### Fault-tolerant systems

Systems that can suffer a failure but continue to work nonetheless.

### FCFS

First come, first served. A scheduling algorithm: the first process that requests a system resource will get priority over the others.

### File management

Programs that create, delete, copy, rename, print, dump, list, and generally manupulate files and directories.

### File modification

Several text editors may be available to create and modify the content of files stored on disk or other storage devices.
There may also be special commands to search contents of files or perform transformations of the text.

### Fluent API

In software engineering, a fluent interface is an object-oriented API whose design relies extensively on method chaining. Its goal is to increase
code legibility by creating a domain-specific language. The term was coined in 2005 by Eric Evans and Martin Fowler.

## G

### Garbage collection

The practice of reclaiming memory of objects that are no longer used. Control over the memory is returned to the system,
rather than being allocated to a specific program/process.

### Graceful degradation

The ability to continue providing service proportional to the level of surviving hardware in the event of a systems
failure.

### GUI

Graphical User Interface. A user interface that enables human-to-machine interaction using visual iconography that is
more complex than its purely textual CLI alternative.

## H

### Heap

Block of memory that is dynamically allocated during process run time. The heap is usually linked to a specific
execution environment or process.
In certain programming language, this memory is also referred to as "the stack".

## I

### IDE

Short for Integrated Development Environment.
An application that helps you to develop software, by combining useful features and libraries into one single
application. These IDEs usually allow you to run your tests and code without needing to leave the comfort of your
development environment.

### Indirect communication

A message passing system, in which processes send messages to mailboxes, or ports, rather than to a directly addressed recipient.  
(as opposed to direct communication)

### Interrupt Vector

An array which contains the adresses of the interrupt service routines.

### IPC

Short for: **Inter-process communication**. A mechanism for passing information and data between cooperating processes. There are two fundamental
models:

* **shared memory**: a region of memory is established for the processes to use
* **message passing**: the communication takes place through passing messages between the processes.

## J

### Jargon

_"The specialized language of a trade, profession, or similar group, especially when viewed as difficult to understand
by outsiders."_. Its goal is to make the exchange of information more efficient by giving specific names to things that
are relevant to the in-group. It is said that the Inuit have over thirty words to differentiate between different types
of snow. Other professions, such as software developers, strongly rely on metaphors to refer to technical concepts.

### JIT compiler

Just In Time compiler. A compiler that turns the architecture-neutral byte code into native machine language for the
host computer, only when it is needed for execution. An example can be found in the Java programming language, which
uses a virtual machine to translate its source code into machine executable instructions.

## K

### Kernel mode

One of two modes of operation of a computer system. Opposed to User Mode.
When in kernel mode, priviliged instructions can be executed. A mode bit, added to the hardware, indicated the current
mode.

### KPI

Short for Key Performance Indicator.
The critical (key) indicators of progress toward an intended result. KPIs provide a focus for strategic and operational
improvement, create an analytical basis for decision-making and help focus attention on what matters most.

## L

### Layered approach

A method to make the operating system more modular. The OS is broken up into several layers (as in _"layers of a
cake"_), each of which performing a specific function.
The bottom-most layer is said to be the hardware, the top-most layer the user interface. Intermediary layers can be
added as needed. Within a layered approach, any layer consumes services from the layer _below_ it and offers services to
the one above. Effectively stacking functionality on top of each other.

## M

### Mailbox

__in operating system design:__ An object into which messages can be placed by processes, and from which processes can be allowed or disallowed
access.

### Mailbox set

A collection of mailboxes, as declared by the task, which can be grouped together and treated as one mailbox for the purpose of the task at hand.

### Memory-management information

Depending on the memory system used by the computer's operating system, this information may include such elements as the value of the `base`
and `limit` registers, `page tables` or `segment tables`.

### Meta learning

_"Meta learning"_ as originally described by Donald B. Maudsley (1979), is a process by which learners become aware of and
increasingly in control of habits of perception, inquiry, learning, and growth.

### Method chaining

An (objective) programing technique where methods performed on an object can be called directly after each other.
To acomplish this, the chainable methods end by returning the object on which the action was performed, as opposed to a `void` return type.

```java
greeter.hello("world").foo(bar).onConnect(()->allYourBase());
```

### Micro Kernel

A kernel in which all of the non-essential components are removed, and implemented as user-level programs.

### Monitoring call

If software needs to use external devises, or trigger an event, it must execute a _"monitoring call"_. This is called "
triggering an interrupt", as it effectively interrupts the execution of the active program.
The hardware can trigger an interrupt at any time.

### Multi-processor systems

aka. _parallel systems_ or _tightly coupled systems_ (not to be confused with tightly coupled code).
Systems that have multiple processing units enbemdded within them. They offer three main advantages:

- Increased throughput
- Economy of scale
- Increased reliability (through inherrent redundancy)

### Mutation testing

A type of testing that aims to verify the quality of an existing test-suite. It operates by making minor changes in the application code,
breaking the business logic by doing so. It then evaluates if any of the (automated) tests catch the error.
If it does, we know the part of the code that was changed is being tested accurately. If no tests fail, this is an indication that the test
suite is lacking.

## N

### Network OS

An operating system that provides services for different computers on a network.

## P

### Paradigm

A _"paradigm"_ is a fancy word for "point of view". It is the belief system that you hold and use to make sense
of what is happening around you. You can look at it as walking around in an unknown city,
armed with a town map. If the map is not sufficiently detailed, you will find yourself ending up in the wrong place.
You might even end up driving into a lake if the map is inaccurate, digital, and talks to you.

### Parent and child process

A process which creates another process is called the parent process. The created process is the child process.

### Pattern language

[from wikipedia](https://en.wikipedia.org/wiki/Pattern_language): A pattern language is an organized and coherent set of
patterns, each describing a problem, and the core of a solution that can be used in many ways within a specific field of
expertise.

### PCB

short for: Process Control Block.
The Process Control Block contains meta-information about a certain process, such as its state, size, ... .

### Post-mortem

Latin for "after death". Used commonly by doctors (syn. "autopsy)" to describe the examination of a corpse.
When used in business contexts, it is a synonym for a retrospective focussed on examining the reasons for a perceived process failure and how to
avoid them in the future.

### Practices

Practices are a set of actionable recipes, that can help you achieve certain goals. As with all advice, these are not
guaranteed to give results.
There exists no such thing as a sure-fire approach that works in any situation. To make these patterns as helpful as
possible, they include a short
description of the circumstances in which they usually work well.

### Pragmatic

The word _'Pragmatic'_ originally means "skilled in business". You can interpret this as thinking about the added
benefit (return on investment) of an action before deciding to do it.
A pragmatist will take pieces from various toolsets and methodologies, and apply them to the problem at hand only if it
makes sense to use them. This means that even if a new software architecture is hip and trendy,
you would look at the issue you are trying to solve first and see if the new approach is worth doing.

### Preemtive scheduling

Scheduling that takes place regardless of process state switching (`running` <-> `waiting`), or termination.

### Problem domain

The logical domain of the challenge (or problem) we are trying to solve using software.
Usually, this is the world as seen by our business stakeholders. It contains the concepts and processes that enable added value for our customers.

### Process

* __computer science:__ A computer program in execution. Processes are sometimes called “threads”, “tasks”, or “jobs”,
  often with slight nuances in meaning.
* __generic:__ A natural phenomenon marked by gradual changes that lead toward a particular result. A series of actions
  or operations conducing to an end.

### Programming language support

Compilers, assemblers, debuggers, and interpreters for comon programming languages (such as C, C++, C#, Java, Visual
Basic, .NET, PERL, ...) are often provided to the user by the Operating System.

### Program loading and execution

Once a program is assembled or compiled, it must be loaded into memory to be executed. The system may provide absolute
loaders, relocatable loaders, linkage editors, and overlay loaders. Debugging systems for either higher-lever languages
or machine languages are needed as well.

### PThread

Refers to the POSIX standard (IEEE 1003.1c) defining an API for thread creation and synchronization.

## R

### Response time

The time it takes from the submission of a request, up untill the first result is produced.  
(see also: TTI in UX design)

### Responsive design

An user interface programming approach aiming to make sure interfaces render well on a variety of devices and display resolutions.
This is usually achieved by separating content from display logic, and altering the latter depending on the viewport being used.

### Retrospective

A retrospective, generally, is a look back at events that took place, or works that were produced, in the past.

### ROI

ROI or "Return on investment" is a very useful metric for strategic planning, originating from the financial sector. The
idea is to maximize for value over time.
This helps you to stay focused on the activities or task that bring the most value to your
organization/project/customer, or even your own life.
Described on [this page](/2_Productivity/Concepts/HOME?id=return-on-investment).

## S

### SCSI controller

**S**mall **C**omputer-**S**ystems **I**nterface. A controller to which devices are connected (cfr. motherboards in
personal computers, or extendable circuit boards such as the raspberry pi).

### Service Oriented Architecture

Commonly abbreviated as: `SOA`  
An architectural approach in which applications make use of services available in the network. In this architecture, services are provided to
form applications, through a network call (over the internet). It uses common communication standards to speed up and streamline the service
integrations in applications. Each service in SOA is a complete business function in itself

### Shells

User interfaces are known as "shells" on systems with mulltiple command interpreters.

### Signal

* __in operating system concepts:__ A signal is used in UNIX systems to notify a process that a particular event has occured.
* __in instant messaging:__ A P2P encrypted, privacy-centric instant messaging application available for mobile phones and desktops.

### SMART

An acronym, commonly used in productivity circles. Refers to the qualities that make goals more likely to be achieved. The acronym stands for:

* **S**pecific : be as concrete as possible (What/Why/Who/Where/Which) in defining the goal. Avoid as much opaqueness as possible.
* **M**easurable : think of ways you can verify whether you are on track or not. You can use the KPI system if you want. The idea is to be able to
  evaluate and track your progress numerically.
* **A**chievable : the goal needs to be realistic, but sufficiently ambitious. Meaning you should not set a goal you will achieve regardless of
  effort, while also making sure it is within your stretching capabilities to reach it.
* **R**elevant : ensure your goal matters to you, or your immediate surroundings. Also ask yourself if you are the right person to reach this
  goal. (It is for example quite unrealistic to expect to cure all illnesses if you have no knowledge of biology, chemistry, or medicine).
* **T**ime bound : set a deadline by which you want to achieve your goal.

When using SMART, you can create clear, attainable and meaningful goals, and develop the motivation, action plan, and support needed to achieve
them.

see: [editorial on SMART goals](https://www.mindtools.com/a4wo118/smart-goals), mindtools.com content team, self-published, retrieved on 07/05/2023.

### SMP

Symmetric multiprocessing. each processirs performs all tasks within the operating system. SMP means that all processors
are peers. No controller-worker relationship exists between them.

### SOA

see: Service Oriented Architecture.

### Socket

An endpoint of inter-process communication.

### Status information

Some of these programs will simply expose system characteristics such as the date, time, amount of availalble memory /
disk space, number of users, etc. Other status programs are more complex, providing detailed information on performance,
logging, and system errors.

### Swapping

Moving processes from memory, thus reducing the level of multi-execution. Later on, the process can be put back into
memory,
and continued from the point where it stopped executing.
When the process is removed from memory, a state save occurs. This means saving information about the process' current
execution status. When the process is restored, this state is restored.
On Unix systems, a dedicated `swap` partition can be created on persistent storage drives to load/unload processes from
main memory. Ideally, this partition is sized to be minimally
equal to half of the available main memory.

### Synthesis

A term that is used to describe the act of combining (often diverse) conceptions and observations into a coherent whole.

### System call

provides an interface to services made available by the operating system, such as access to hardware.

## T

### Tenet

A principle, belief, or doctrine generally held to be true. The term is often used to express a common belief held by
members of an organization, movement, or profession.
In Latin, tenet is the third person singular of the verb tenēre ("to hold") and means "he/she/it holds." It is believed
to have been borrowed into English around 1600 from Latin writings in which it often introduced the opinions held by a
particular church or sect.

### Thread cancellation

The task of terminating a thread before it has completed. This may lead to a graceful or ungraceful shutdown, depending on the specifics of the
issued cancellation command.  
see also: asynchronous cancellation, and deferred cancellation.

### Thread library

A library which provides the programmer with an API for creating and managing threads.   
(e.g. Java's `future`-library, javascript's `async` and `rxJs`, Python's `theading.py`)

### Thread pool

A number of threads created at process startup, and placed in a shared pool. When a server receives a request, it awakens a thread from this
execution pool.

### Thread-specific data

Data of which each thread needs to hold its own copy.

### Throughput

The number of processes that are completed per time unit.

### Timer

A tool to help the Operating System keep control over the CPU. The timer is set to interrupt the computer after a
specified amount of time.
Commonly used for blocked-process detection, task scheduling, and multi-threading.

### Turnaround time

The interval of time from the moment of submission of a process, to the time of its completion.

## U

### Unbounded buffer

A type of buffer uses with shared memory IPC. Unbounded buffers have no practical limits on their size.

## V

### Virtual System

A concept in which the hardware of a single machine is abstracted into several different execution environments. Thus
creating the illusion that each separate execution envionments is running on it's own private computer.

## W

### Waiting time

The sum of periods spend waiting in the ready queue.

### WIP

Work In Progress. The amount of tasks a person or team are currently working on. These are all tasks that have started
and are not yet complete. The WIP can be seen as "Intellectual inventory", meaning you pay a cost to keep it around.
Some productivity techniques advise to keep the amount of work in progress as low as possible (_e.g._ Kanban, Lean).

### X

### XML

Short for __"eXtensible Markup Language"__. A commonly used file format to represent structured data.
Originally designed to meet the challenges of large-scale electronic publishing, XML is now also playing an important role in the
exchange of a wide variety of data on the Web and elsewhere.     
see: [w3.org/XML](https://www.w3.org/XML/)

example:

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
</Persons>
```