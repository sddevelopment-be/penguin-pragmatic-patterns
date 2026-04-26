+++
title = "Behaviour-Driven Development Primer"
subtitle = "From shared examples to executable specifications and living documentation."
aliases = ["bdd-primer", "behaviour-driven-development", "toolchain-and-automation/bdd"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2026-04-26T12:00:00+00:00"
tags = ["bdd", "testing", "cucumber", "gherkin", "selenium", "serenity", "automation", "primer", "reference"]
summary = """
Behaviour-Driven Development is a collaboration practice that turns shared examples into
executable specifications. Teams express desired behaviour in plain language (Gherkin), then
automate those descriptions as tests that double as living documentation. The toolchain spans
specification languages (Gherkin), runner frameworks (Cucumber, SpecFlow, Behave), browser
automation (Selenium WebDriver, Playwright), and reporting layers (Serenity BDD). For deeply
domain-specific test suites, teams sometimes replace generic Gherkin with a custom internal DSL
that speaks the language of their problem domain directly.
"""
further_exploration = [
    { type = "raw", author = "Cucumber Team", year = "2024", title = "BDD with Cucumber", site = "cucumber.io", link = "https://cucumber.io/docs/bdd/" },
    { type = "raw", author = "Cucumber Team", year = "2024", title = "Gherkin Reference", site = "cucumber.io", link = "https://cucumber.io/docs/gherkin/reference/" },
    { type = "raw", author = "Serenity BDD Team", year = "2024", title = "Serenity BDD Documentation", site = "serenity-bdd.github.io", link = "https://serenity-bdd.github.io/docs/tutorials/first_test" },
    { type = "raw", author = "Selenium Project", year = "2024", title = "Selenium WebDriver Documentation", site = "selenium.dev", link = "https://www.selenium.dev/documentation/webdriver/" },
    { type = "raw", author = "SpecFlow Team", year = "2024", title = "SpecFlow Documentation", site = "specflow.org", link = "https://docs.specflow.org/" },
    { type = "raw", author = "North, Dan", year = "2006", title = "Introducing BDD", site = "dannorth.net", link = "https://dannorth.net/introducing-bdd/" },
    { type = "raw", author = "Smart, John Ferguson", year = "2014", title = "BDD in Action", site = "Manning Publications", link = "https://www.manning.com/books/bdd-in-action" }
]
+++

## 1. Philosophy and Context

> "The hardest single part of building a software system is deciding precisely what to build." — *Fred Brooks, The Mythical Man-Month*

Behaviour-Driven Development (BDD) is a collaboration practice, not a testing methodology. Dan North coined the term in 2003 to describe a way of resolving the communication gap between business stakeholders, testers, and developers — the gap that causes teams to build the wrong thing correctly.

BDD operates through three cyclical phases:

**Discovery** — Structured conversations (often called Example Mapping or Three Amigos sessions) where business analysts, developers, and testers explore concrete examples of how a feature should behave. No code is written here. The goal is shared understanding, not documentation.

**Formulation** — Concrete examples are expressed as human-readable specifications in Gherkin syntax (`Given/When/Then`). These become the single source of truth for what the system must do.

**Automation** — The formulated specifications are connected to test code. The same specification that a product owner can read is executed against the system as a regression test. This produces **living documentation**: specs that are always current because they fail when the code diverges.

**The Three Amigos** are the minimum set of perspectives required in a BDD conversation: someone who represents the business need (product owner, analyst), someone who will build it (developer), and someone who will verify it (tester). Each brings blind spots the others can resolve.

**BDD vs TDD vs traditional testing:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Dimension | Traditional testing | TDD | BDD |
|---|---|---|---|
| **Primary audience** | QA teams | Developers | Business + development + QA together |
| **Language** | Technical (assertions, test IDs) | Technical (unit tests) | Ubiquitous business language |
| **Specification source** | Requirements documents | Developer intent | Shared examples from discovery sessions |
| **Documentation** | Separate, often stale | Code comments | Executable specs that are always current |
| **Granularity** | Feature or system level | Unit / function level | Feature / integration level |
{{< /bootstrap-table >}}

BDD does not replace unit testing — it sits above it. The test pyramid still applies: many unit tests, fewer integration tests, fewer BDD scenarios. BDD scenarios are expensive to write and maintain; reserve them for behaviours that have business value and are worth the conversation.

**Authoritative References:**

- [Introducing BDD — Dan North](https://dannorth.net/introducing-bdd/) — the original 2006 article coining the term
- [BDD with Cucumber](https://cucumber.io/docs/bdd/) — Cucumber's guide to the Discovery → Formulation → Automation cycle
- [BDD in Action — John Ferguson Smart](https://www.manning.com/books/bdd-in-action) — comprehensive book covering the full BDD workflow

---

## 2. Core Mechanisms

### Gherkin — The Specification Language

Gherkin is the plain-text language used to write BDD specifications. A Gherkin file (`.feature`) contains a **Feature** with one or more **Scenarios**. Each scenario follows the **Given / When / Then** structure:

```gherkin
Feature: Task management
  As a busy professional
  I want to track my tasks
  So that I don't forget important work

  Background:
    Given I am logged in as "alice@example.com"

  Scenario: Mark a task as complete
    Given I have an open task "Write the quarterly report"
    When I mark the task as complete
    Then the task should appear in my completed list
    And the task should no longer appear in my open list

  Scenario Outline: Overdue tasks are highlighted
    Given I have a task "<task>" due on "<due_date>"
    When today is "<today>"
    Then the task should be highlighted as overdue

    Examples:
      | task               | due_date   | today      |
      | Submit timesheet   | 2026-04-20 | 2026-04-26 |
      | Review PR          | 2026-04-01 | 2026-04-26 |
```

**Keyword reference:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Keyword | Purpose |
|---|---|
| `Feature:` | Names and describes the capability under test. One per file. |
| `Background:` | Steps run before every scenario in the feature. Replaces repeated `Given` lines. |
| `Scenario:` / `Example:` | A single concrete example. |
| `Scenario Outline:` / `Scenario Template:` | A parameterised template; requires an `Examples:` table. |
| `Examples:` | Data table supplying values to a `Scenario Outline`. Each row is one test run. |
| `Given` | Establishes the system state before the action. |
| `When` | Describes the action the actor takes. |
| `Then` | States the expected observable outcome. |
| `And` / `But` | Continuation of the previous keyword type, for readability. |
| `*` | Bullet-point style step — use when a list of context items reads more naturally. |
| `@tag` | Metadata. Used to select subsets of scenarios (`@smoke`, `@regression`, `@wip`). |
| `#` | Comment line. |
{{< /bootstrap-table >}}

**Data tables** pass structured input to a step without the verbosity of Scenario Outlines:

```gherkin
  Scenario: Create multiple tasks at once
    Given I create the following tasks:
      | title                    | priority |
      | Write the quarterly report | high   |
      | Book team retrospective    | medium |
      | Update project README      | low    |
    Then I should have 3 open tasks
```

**Doc strings** pass multi-line text (markdown, JSON, XML) to a step:

```gherkin
  Scenario: Import tasks from JSON
    When I import tasks from:
      """json
      [
        { "title": "Review budget", "priority": "high" },
        { "title": "Send invoices", "priority": "medium" }
      ]
      """
    Then I should have 2 new tasks
```

### Step Definitions — Connecting Gherkin to Code

Each Gherkin step maps to a **step definition** — a function in the test code that implements the step's behaviour. The mapping is done via regular expressions or Cucumber Expressions:

**Java (Cucumber-JVM):**

```java
// TaskStepDefinitions.java
import io.cucumber.java.en.*;
import static org.assertj.core.api.Assertions.assertThat;

public class TaskStepDefinitions {

    private TaskPage taskPage;

    @Given("I have an open task {string}")
    public void iHaveAnOpenTask(String taskTitle) {
        taskPage.createTask(taskTitle);
    }

    @When("I mark the task as complete")
    public void iMarkTheTaskAsComplete() {
        taskPage.markFirstTaskComplete();
    }

    @Then("the task should appear in my completed list")
    public void theTaskShouldAppearInMyCompletedList() {
        assertThat(taskPage.completedTasks()).contains("Write the quarterly report");
    }
}
```

**Python (Behave):**

```python
# steps/task_steps.py
from behave import given, when, then

@given('I have an open task "{title}"')
def step_have_open_task(context, title):
    context.task_page.create_task(title)

@when('I mark the task as complete')
def step_mark_complete(context):
    context.task_page.mark_first_task_complete()

@then('the task should appear in my completed list')
def step_task_in_completed(context):
    assert "Write the quarterly report" in context.task_page.completed_tasks()
```

**TypeScript (Cucumber-JS):**

```ts
// steps/task.steps.ts
import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';

Given('I have an open task {string}', async function (title: string) {
  await this.taskPage.createTask(title);
});

When('I mark the task as complete', async function () {
  await this.taskPage.markFirstTaskComplete();
});

Then('the task should appear in my completed list', async function () {
  expect(await this.taskPage.completedTasks()).toContain('Write the quarterly report');
});
```

### Living Documentation

When Cucumber runs, it produces a test report that mirrors the Gherkin specification. Because the spec *is* the test, passing scenarios are evidence that the system behaves as described. The report becomes documentation that cannot fall out of date — if the behaviour changes and the spec is not updated, the test fails.

Teams publish Cucumber reports to their CI pipeline or documentation sites. Tools like Serenity BDD (covered below) enrich this further with narrative reports, screenshots, and step-level detail.

---

## 3. Tooling Ecosystem

### Cucumber Family

Cucumber is the reference BDD framework. It executes `.feature` files and maps steps to code in the target language:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool | Language | Notes |
|---|---|---|
| [Cucumber-JVM](https://github.com/cucumber/cucumber-jvm) | Java / Kotlin / Groovy | Integrates with JUnit 5 and TestNG |
| [Cucumber.js](https://github.com/cucumber/cucumber-js) | JavaScript / TypeScript | Works with Playwright, WebdriverIO, or any async test runner |
| [Cucumber-Ruby](https://github.com/cucumber/cucumber-ruby) | Ruby | Original implementation; also the basis for RSpec's `--format documentation` |
| [SpecFlow](https://docs.specflow.org/) | C# / .NET | Microsoft ecosystem equivalent; deep Visual Studio integration |
| [Behave](https://behave.readthedocs.io/) | Python | Pythonic implementation; integrates with Selenium and Playwright |
| [Godog](https://github.com/cucumber/godog) | Go | Official Cucumber port for Go |
{{< /bootstrap-table >}}

**SpecFlow** is the .NET equivalent of Cucumber. It is particularly well-supported in the Microsoft ecosystem: step definitions are plain C# methods, and it integrates with MSTest, NUnit, and xUnit. SpecFlow+ (commercial tier) adds living documentation and analytics.

### Selenium WebDriver — Browser Automation

[Selenium WebDriver](https://www.selenium.dev/documentation/webdriver/) is the W3C-standard API for controlling web browsers programmatically. It drives real browsers (Chrome, Firefox, Edge, Safari) via browser-native protocols — the same way a user would interact, not via JavaScript injection.

Selenium is the most widely integrated browser automation tool in the BDD ecosystem because it pre-dates and is better supported than alternatives in Java and .NET stacks.

**Key API patterns:**

```java
// Java — Selenium WebDriver with Page Object Model
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.*;

public class TaskPage {
    private final WebDriver driver;
    private final WebDriverWait wait;

    // Locators — one place to maintain selectors
    private final By taskInput   = By.cssSelector("[data-testid='task-input']");
    private final By addButton   = By.cssSelector("[data-testid='add-task']");
    private final By completedList = By.cssSelector(".task-list--completed .task-item");

    public TaskPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(5));
    }

    public void createTask(String title) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(taskInput)).sendKeys(title);
        driver.findElement(addButton).click();
    }

    public List<String> completedTasks() {
        return driver.findElements(completedList)
                     .stream()
                     .map(WebElement::getText)
                     .collect(Collectors.toList());
    }
}
```

**Selenium vs Playwright:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| | Selenium WebDriver | Playwright |
|---|---|---|
| **Protocol** | W3C WebDriver (HTTP) | CDP + Playwright protocol (faster, more reliable) |
| **Language support** | Java, Python, JS/TS, C#, Ruby, Go | JS/TS, Python, Java, C# |
| **Auto-waits** | Manual (`WebDriverWait`) | Built-in — most interactions wait automatically |
| **Browser support** | Chrome, Firefox, Edge, Safari | Chromium, Firefox, WebKit |
| **Remote grids** | Selenium Grid, BrowserStack, Sauce Labs | Playwright's own grid or BrowserStack |
| **BDD integration** | Mature — deep Cucumber/Serenity integration | Growing — Cucumber-JS works well |
| **Ecosystem age** | 2004 (mature, stable) | 2020 (modern, rapidly evolving) |
| **Best for** | Java/.NET BDD stacks; existing Selenium suites | New projects in JS/TS or Python |
{{< /bootstrap-table >}}

### Serenity BDD — Living Documentation and the Screenplay Pattern

[Serenity BDD](https://serenity-bdd.github.io/) is a Java/JVM framework that wraps Cucumber-JVM (or JUnit 5) and adds two significant capabilities: rich HTML narrative reports and the Screenplay pattern.

**Living documentation reports:** Serenity generates interactive HTML reports that read like user stories. Each scenario is shown with its step details, screenshots (for browser tests), pass/fail status, and timing — readable by non-technical stakeholders as documentation of what the system does.

**The Screenplay Pattern** is Serenity's architectural model for test code. It replaces the Page Object Model with a more expressive, actor-centric design:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Concept | Role | Example |
|---|---|---|
| **Actor** | A persona who uses the system | `Actor alice = Actor.named("Alice")` |
| **Ability** | What the actor can do | `BrowseTheWeb.with(driver)` |
| **Task** | A business-level activity (composed of interactions) | `AddTask.called("Write report")` |
| **Interaction** | A low-level UI action | `Click.on(ADD_BUTTON)` |
| **Question** | A query about system state | `TaskList.completed()` |
{{< /bootstrap-table >}}

```java
// Screenplay-style step definition
@Given("I have an open task {string}")
public void iHaveAnOpenTask(String title) {
    alice.attemptsTo(
        AddTask.called(title)       // a Task — business language, not UI language
    );
}

@Then("the task should appear in my completed list")
public void theTaskShouldBeInCompletedList() {
    assertThat(alice.asksFor(TaskList.completed()))
        .contains("Write the quarterly report");
}

// The Task implementation — composes Interactions
public class AddTask implements Task {
    private final String title;

    public static AddTask called(String title) { return new AddTask(title); }

    @Override
    @Step("Add a task called '#title'")
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
            Enter.theValue(title).into(TaskForm.TITLE_FIELD),
            Click.on(TaskForm.SUBMIT_BUTTON)
        );
    }
}
```

The Screenplay pattern's primary advantage over Page Objects is that test code reads at the **business level** even in the step implementation. When a step says `actor.attemptsTo(AddTask.called("Write report"))`, a product owner can read and verify that step code directly.

**Setup (Maven):**

```xml
<dependency>
    <groupId>net.serenity-bdd</groupId>
    <artifactId>serenity-core</artifactId>
    <version>4.2.0</version>
    <scope>test</scope>
</dependency>
<dependency>
    <groupId>net.serenity-bdd</groupId>
    <artifactId>serenity-cucumber</artifactId>
    <version>4.2.0</version>
    <scope>test</scope>
</dependency>
```

```java
// Test runner
@ExtendWith(SerenityJUnit5Extension.class)
@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("features")
@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "com.example.steps")
public class AcceptanceTestSuite {}
```

### Custom DSLs for Test Cases

When a domain is sufficiently specialised, the Gherkin vocabulary can feel too generic. Teams sometimes build an **internal Domain-Specific Language** (DSL) for test cases — a fluent API in their language of choice that speaks the exact terminology of their problem domain.

**When a custom DSL makes sense:**

- The domain has deep, consistent vocabulary that Gherkin abstracts poorly (financial instruments, medical devices, game logic)
- Scenarios require complex data setup that becomes unwieldy in Gherkin tables
- The team runs tests programmatically (no non-technical audience for plain-text specs)
- A small, stable test suite where the overhead of a Gherkin layer is not justified

**Example — Kotlin fluent DSL for task management tests:**

```kotlin
// Internal DSL — no Gherkin, just expressive Kotlin
class TaskManagementDslTest {

    @Test
    fun `overdue tasks are highlighted`() {
        val system = TaskSystem()
            .withUser("alice@example.com")
            .withTask("Write quarterly report") {
                dueOn(LocalDate.of(2026, 4, 20))
                priority(Priority.HIGH)
            }

        system.advanceTimeTo(LocalDate.of(2026, 4, 26))

        system.tasks().overdue() shouldContain "Write quarterly report"
        system.tasks().overdue().forEach { it.isHighlighted shouldBe true }
    }
}
```

**Example — Java builder DSL for API-level BDD:**

```java
// No browser, no Gherkin — pure domain language
GivenAUser.named("alice").withRole(ADMIN)
    .andATask("Submit report").dueYesterday()
    .whenTheSystemRunsOverdueDetection()
    .thenTheTask("Submit report").shouldBeMarkedAs(OVERDUE)
    .andAlice().shouldReceiveAnEmailNotification();
```

**Trade-offs of a custom DSL vs Gherkin:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| | Gherkin + Cucumber | Custom DSL |
|---|---|---|
| **Non-technical readability** | High — product owners can read and write scenarios | Low — requires programming knowledge |
| **Living documentation** | Built-in via Cucumber/Serenity reports | Must be built manually |
| **Vocabulary flexibility** | Fixed keywords (Given/When/Then) | Unlimited — matches domain exactly |
| **Setup overhead** | Low — Cucumber handles the runner | Medium — DSL must be designed and built |
| **Maintenance** | Step definition layer adds indirection | Direct — test code is the DSL |
| **Best for** | Cross-functional teams with non-technical authors | Technical teams with rich, stable domain vocabulary |
{{< /bootstrap-table >}}

---

## 4. Practical Example

A complete working BDD scenario from feature file to step definition to automation:

**Feature file (`features/tasks/task_completion.feature`):**

```gherkin
@regression
Feature: Task completion
  Completing a task removes it from the active list and records a completion timestamp.

  Background:
    Given I am signed in as "alice@example.com"

  @smoke
  Scenario: Complete an active task
    Given I have an active task "Write the quarterly report"
    When I mark "Write the quarterly report" as complete
    Then "Write the quarterly report" should appear in my completed tasks
    And "Write the quarterly report" should not appear in my active tasks
    And the completion timestamp should be recorded

  Scenario Outline: Cannot complete a task in a terminal state
    Given I have a task "Old task" with status "<status>"
    When I attempt to mark "Old task" as complete
    Then I should see the message "<message>"

    Examples:
      | status    | message                              |
      | completed | This task is already complete        |
      | archived  | Archived tasks cannot be modified    |
```

**Step definitions (TypeScript + Playwright + Cucumber-JS):**

```ts
// features/steps/task.steps.ts
import { Given, When, Then, Before } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { TaskPage } from '../pages/task.page';

Before(async function () {
  this.taskPage = new TaskPage(this.page);
});

Given('I am signed in as {string}', async function (email: string) {
  await this.page.goto('/login');
  await this.page.getByLabel('Email').fill(email);
  await this.page.getByLabel('Password').fill(process.env.TEST_PASSWORD!);
  await this.page.getByRole('button', { name: 'Sign in' }).click();
  await this.page.waitForURL('/dashboard');
});

Given('I have an active task {string}', async function (title: string) {
  await this.taskPage.createTask(title);
});

When('I mark {string} as complete', async function (title: string) {
  await this.taskPage.markComplete(title);
});

Then('{string} should appear in my completed tasks', async function (title: string) {
  await expect(this.taskPage.completedList.getByText(title)).toBeVisible();
});

Then('{string} should not appear in my active tasks', async function (title: string) {
  await expect(this.taskPage.activeList.getByText(title)).not.toBeVisible();
});

Then('the completion timestamp should be recorded', async function () {
  const timestamp = await this.taskPage.lastCompletedTimestamp();
  expect(timestamp).not.toBeNull();
  expect(new Date(timestamp!).getTime()).toBeCloseTo(Date.now(), -3);
});
```

**Page Object (`features/pages/task.page.ts`):**

```ts
import { Locator, Page } from '@playwright/test';

export class TaskPage {
  readonly activeList:    Locator;
  readonly completedList: Locator;

  constructor(private page: Page) {
    this.activeList    = page.locator('[data-testid="active-tasks"]');
    this.completedList = page.locator('[data-testid="completed-tasks"]');
  }

  async createTask(title: string): Promise<void> {
    await this.page.getByRole('textbox', { name: 'New task' }).fill(title);
    await this.page.getByRole('button', { name: 'Add task' }).click();
    await this.activeList.getByText(title).waitFor();
  }

  async markComplete(title: string): Promise<void> {
    await this.activeList
      .getByRole('listitem')
      .filter({ hasText: title })
      .getByRole('button', { name: 'Complete' })
      .click();
  }

  async lastCompletedTimestamp(): Promise<string | null> {
    return this.completedList
      .getByRole('listitem').first()
      .getAttribute('data-completed-at');
  }
}
```

**Running the suite:**

```bash
# Cucumber-JS
npx cucumber-js --tags "@regression"

# Run only smoke tests
npx cucumber-js --tags "@smoke"

# Java + Maven + Serenity
mvn verify -Dcucumber.filter.tags="@regression"

# Generate Serenity report
mvn serenity:aggregate
# → Opens target/site/serenity/index.html
```

---

## 5. Trade-offs and Limitations

**When BDD adds value:**

- Features with non-trivial business rules that stakeholders and developers interpret differently
- Regression suites for user-facing workflows where a readable test doubles as documentation
- Projects with active cross-functional teams where the Three Amigos conversations happen
- Regulatory contexts where traceable, human-readable test evidence is required

**When BDD overcomplicates:**

- Pure technical features (infrastructure, internal APIs) with no non-technical audience
- Small, short-lived projects where the ceremony of Gherkin outweighs its communication benefit
- Scenarios that require so much setup that the Gherkin becomes longer and harder to read than equivalent code
- Teams where the product owner never reads the feature files — if only developers read them, Gherkin's plain-text advantage disappears

**Common anti-patterns:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Anti-pattern | Symptom | Fix |
|---|---|---|
| Feature files as rubber stamps | Scenarios written after code, not driving it | Start with Discovery — write scenarios before writing a line of implementation |
| Imperative Gherkin | Steps describe UI clicks, not business intent (`Click the "Complete" button`) | Write declarative steps (`Mark the task as complete`) that hide UI detail in step definitions |
| One scenario per UI test | Hundreds of scenarios for trivial UI interactions | Reserve BDD scenarios for business rules; use unit tests for UI behaviour |
| Shared mutable state between scenarios | Scenario B breaks when run without Scenario A | Every scenario must be independent; use `Background` for setup, not `Scenario` chaining |
| Orphaned step definitions | Step definitions with no matching `.feature` step | Run `cucumber --dry-run` regularly; remove unused steps |
| Overly broad scenarios | `Scenario: Everything works correctly` | One scenario = one behaviour; split compound scenarios |
{{< /bootstrap-table >}}

**Maintenance overhead:** BDD scenarios are living documentation, but they require maintenance. A large suite of Gherkin scenarios that no one reads is worse than no BDD — it is expensive to maintain and provides no communication value. Audit feature files regularly; delete scenarios that describe trivially obvious behaviour or duplicate unit test coverage.

---

## 6. Cross-links

**Related primers:**

- [TypeScript & Angular Primer]({{< ref "primers/programming-languages/typescript-angular" >}}) — Playwright end-to-end testing and `TestBed` unit testing in Angular
- [Python Primer]({{< ref "primers/programming-languages/python" >}}) — `pytest-bdd` is a lighter alternative to Behave for Python BDD
- [CSS & SCSS Primer]({{< ref "primers/markup-and-diagramming/css-sass" >}}) — Playwright multi-device and accessibility testing referenced in section 8

**Related patterns and concepts:**

- [Testing Pyramid]({{< ref "concepts/testing_pyramid" >}}) — BDD scenarios sit at the top of the pyramid; understanding the full pyramid contextualises where BDD fits
- [Ports and Adapters]({{< ref "primers/architectural/ports-and-adapters" >}}) — BDD step definitions benefit from hexagonal architecture: step code calls application ports, not UI or DB directly, keeping scenarios fast and stable
