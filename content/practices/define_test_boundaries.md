+++
title = "Defining Test Boundaries"
author = "Stijn Dejongh"
problem = """
Badly defined test boundaries can lead to tests that are too broad, too narrow, or too fragile. This results in tests that are 
difficult to maintain, provide little value, or break easily.
"""
description = """
Define the scope of a `unit under test` based on the responsibility and functionality it provides rather than strictly adhering 
to structural boundaries.
"""
categories = [
    "software development",
]
tags = [
    "testing", "trade-off", "tracability", "maintainability"
]
uuid="04c6129d-11f7-4aa0-a809-1b972a0d7ef9"
aliases=["04c6129d-11f7-4aa0-a809-1b972a0d7ef9"]
#ammerse = [
#    {name = "agile", delta = "0", rationale = ""},
#    {name = "minimal", delta = "0", rationale = ""},
#    {name = "maintainable", delta = "0", rationale = ""},
#    {name = "environmental", delta = "0", rationale = ""},
#    {name = "reachable", delta = "0", rationale = ""},
#    {name = "solvable", delta = "0", rationale = ""},
#    {name = "extensible", delta = "0", rationale = ""},
#]
image = "practices/test_boundary_cover.webp"
related_concepts = ["6169f9c0-dfe0-49b1-b459-acf01ac69c40", "2eb8fcea-8f12-44d8-97c5-5a48013ae515", "49a014f5-e40b-4c80-ba64-a31626b955ca"]
related_practices = ["336b0448-e78b-4428-83a5-d4d473afda63", "1848f4a6-3acb-4dc8-aa49-e57a1b87cf3b"]
+++

### Problem Statement

Badly defined test boundaries can lead to tests that are too broad, too narrow, or too fragile. This can result in tests that are difficult to maintain, provide little value, or break easily.
Determining the appropriate scope and size of a "unit" in unit testing can be challenging, as it significantly impacts the effectiveness and
maintainability of tests. 

## Intent

* Reduce the risk of brittle tests that break with minor changes to the system.
* Provide a clear and practical method for defining the boundaries of a unit in unit testing.
* Ensure the test suite is meaningful, maintainable, and effective in validating the intended functionality.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* Modular, structured, system architecture.
* Clear understanding of the system's functionality.
* The need for precise validation of individual components.
* Clear understanding of the system's responsibility boundaries.
* Sufficient internal logic/functionality that needs to be validated. 
* Availability of tools for stubbing and mocking external dependencies.

### Deterrents
The following factors prevent effective application of the practice:

- Complex system dependencies.
- Unstructured or monolithic system architecture.
- High reliance on external services or components, with limited internal functionality.
- Conventions that prioritize structural boundaries over functional responsibilities.
  - (e.g. "Each layer should be tested in isolation.", "Each function should have its own test.")
- Unfamiliarity with stubbing and mocking tools and techniques.
- Lack of clarity regarding the system's functionality.

## Solution

Define the scope of a "unit under test" based on the responsibility and functionality it provides rather than strictly adhering to structural
boundaries such as layers or modules. Adjust the size of the unit according to the specific functionality being tested, ensuring that tests focus on
relevant components while minimizing dependencies on external elements.  
In short: **Based on the functionality you are looking to validate, adjust your test boundary to contain only the components that are 
responsible for supplying said functionality.**

### Steps to Implement

1. **Identify the functionality to be tested:** Determine the specific feature or functionality that needs validation.
2. **Define responsibility boundaries:** Outline the components directly responsible for the functionality.
3. **Minimize external dependencies:** Stub or mock components that are not directly responsible for the functionality.
    - Stub or mock external services, data access layers, or other components that are not directly related to the functionality being tested.
    - Do not stub or mock components that are part of the system module being tested.
4. **Create focused tests:** Develop tests that validate the core logic within the defined boundaries.
    - Write tests that focus on the core functionality of the unit.
    - Avoid testing unrelated functionality or components that can reasonably be expected to work (externals, such as other services, the file
      system, ...) .

## Rationale

In general, the goal of testing is to validate the system's functionality and ensure that it behaves as expected. By defining test boundaries 
based on functional slices, we ensure the functionality offered to outside components is tested thoroughly.

Testing components based on their responsibility ensures that tests are meaningful and directly aligned with the system's functional requirements.
Most of the time, the system's functionality is not strictly aligned with structural boundaries such as layers or modules. By defining the
testing scope based on the functionality being tested, we ensure that tests are focused on asserting the behaviour of the system, rather than
its implementation details. This approach reduces the likelihood of brittle tests and makes the test suite more maintainable and effective in
catching issues. It also allows for more flexibility in refactoring and changing the system's structure without breaking the tests.


## Application

### Consequences

* **Decreased Initial Speed:** Defining test boundaries based on functionality may require more time and effort initially, especially if the 
  team is unfamiliar with this approach.
* **Knowledge Requirements:** Developers need a clear understanding of the system's functionality and responsibility boundaries to define
  appropriate test boundaries. In addition, familiarity with stubbing and mocking tools is essential.
* **Need for Collaboration:** Defining test boundaries may require collaboration between developers, testers, and other stakeholders to ensure 
  a clear understanding of the system's functionality. While this can be seen as a positive aspect, it may also introduce additional overhead.
* **Unexpected Rework:** If test boundaries are not defined correctly, or the existing system does not allow for these types of tests, 
  significant parts of the codebase may need to be reworked or refactored, leading to additional effort and potential delays.
* **Interoperability Issues:** If the system relies heavily on external dependencies that cannot be easily stubbed or mocked, defining test 
  boundaries based on functionality may be challenging. Making too many assumptions about external components can lead to issues when 
  integrating the systems.

### Mitigation strategies

* **Iterate:** Regularly review and update test boundaries as the system evolves.
* **Shared Understanding:** Ensure all stakeholders, and the development team in particular, understand the system's functionality and 
  responsibility boundaries. This can be achieved by creating thorough documentation of test boundaries and responsibility definitions.
* **Diversification:** Use a combination of unit, integration, and system tests to cover different aspects of functionality.

### Examples

#### From Layers to Slices: A Case Study in Variable Test Scopes

This case study explores the transition from a layered testing approach to a functional slicing approach in software testing. Initially, the
system's architecture followed a traditional layered model, but challenges in maintaining effective tests led to the adoption of a more dynamic,
functionality-focused slicing approach.

The system under examination is an online retail platform. Initially, its architecture was divided into distinct layers:

1. **Presentation Layer:** Handling user interfaces.
2. **Business Logic Layer:** Processing core business rules.
3. **Data Access Layer:** Managing database interactions.
4. **Integration Layer:** Communicating with external services.

##### Initial Testing Strategy

Testing was initially structured around these layers. The team employed a mix of unit, integration, and end-to-end tests to validate the 
system's functionality. They had unit test suites for each layer, integration tests to validate interactions between layers, and end-to-end 
tests that simulated user journeys through the system. However, several challenges arose with this approach:

- **Isolation Issues:** Tests at higher layers often required stubbing or mocking of lower layers, making tests fragile and hard to maintain.
- **Slow Feedback:** Integration tests were time-consuming, delaying feedback loops and hindering rapid development cycles. Though their automated 
  test coverage was high, the team was only able to test the functionality of their system by deploying it and running their "user journey" tests. 
- **Brittleness:** Tests were highly sensitive to changes in layer interfaces, leading to frequent test breakages even for minor updates.

In order to test their "User Registration" functionality, the team wrote tests at each implementation layer, from the presentation layer down to 
the database access layer. They implemented these tests by mocking out the lower layers and validating that the expected data was passed 
downwards. The code below shows and example of such a test, at the API-level:

```java
class UserRegistrationAPITest implements WithAssertions {
    
    @Mock private UserBusinessService userService;
    @Mock private EmailValidationService emailValidationService;
    
    private UserRegistrationAPI api;
    
    @Before
    public void setUp() {
        api = new UserRegistrationAPI(userService, emailValidationService);
    }
    
    @Test
    void whenUserSuppliesValidDetails_anAccountIsCreated() {
        when(userService.createUser(any(CreateUserCommand.class))).thenReturn(fakeResponse);
        when(emailValidationService.validate(anyString())).thenReturn(Validation.success());

        api.registerUser(new User("John", "Doe", "someEmail@host.org", "JohnnyBoy69"));
        
        verify(emailValidationService, times(1)).validate(anyString());
        verify(userService, times(1)).createUser(any(CreateUserCommand.class));
    }

    @Test
    void whenUserSuppliesInvalidEmail_noAccountIsCreated() {
        when(emailValidationService.validate(anyString())).thenReturn(Validation.failed());

        api.registerUser(new User("John", "Doe", "someEmail@host.org", "JohnnyBoy69"));
        
        verify(emailValidationService, times(1)).validate(anyString());
        verify(userService, never()).createUser(any(CreateUserCommand.class));
    }
    
    // More tests...
}
```

The team found that these tests were difficult to maintain and often broke when changes were made to the system. A prime example of this was the 
need to add a Captcha validation step to the registration process. This required changes to the API layer, which in turn broke most of the tests 
that were written at the API level. These tests needed to be updated to account for the new functionality, by adding additional stubbing, and 
making sure the correct methods were called. This process was time-consuming and error-prone, leading to a decrease in the team's confidence in 
the system's validity. In order to ensure a stable release, after updating the tests, the team spent weeks manually testing the user 
registration system to ensure that the new functionality was working as expected.


##### Transition to Functional Slicing

To address these issues, the team decided to transition to a functional slicing approach, focusing on vertical slices of functionality rather than
horizontal layers. They redefined their test boundaries based on the system's functional responsibilities, rather than its architectural layers, 
and ended up with the following test structure:

- **Functional Units:** Defined based on user stories and features rather than architectural layers. Validate complete functionality slices, 
  encompassing presentation, business logic, data access, and integration layers within each test.
- **Stubbing and Mocking:** Minimized external dependencies by stubbing or mocking only components that were not directly responsible for the 
  functionality being tested, or that were not part of the codebase (e.g. the database).
- **End-to-End Tests:** Maintained for critical user journeys, but with reduced scope and frequency.

The team rewrote their tests to focus on the functionality of the system, rather than its implementation details. They rewrote the "User 
Registration" tests to cover the entire functionality, from the presentation layer down to the database access layer, within a single test.

```java
class UserRegistrationTest implements WithAssertions {
    
    @Mock private UserDatabaseProxy database;

    private UserRegistrationAPI api;
    
    @Before
    public void setUp() {
        api = new UserRegistrationAPI(new UserBusinessService(database));
    }
    
    @Test
    void whenUserSuppliesValidDetails_anAccountIsCreated() {
        var userToRegister = new User("John", "Doe", "someEmail@host.org");
        
        var response = api.registerUser(userToRegister);
        
        assertThat(response).isNotEmpty()
                .extracting(RegistrationResponse::status)
                .isEqualTo(RegistrationStatus.CREATED);
        assertThat(api.detailsFor(response::userName))
                .extracting(UserDetails::displayName)
                .isEqualTo("JohnnyBoy69");
    }

    @Test
    void whenUserSuppliesInvalidEmail_noAccountIsCreated() {
        var userToRegister = new User("John", "Doe", "notAnEmail", "JohnnyBoy69");

        var response = api.registerUser(userToRegister);

        assertThat(response).isNotEmpty()
                .extracting(RegistrationResponse::status)
                .isEqualTo(RegistrationStatus.INVALID_EMAIL);
        verify(database, never()).save(any(Account.class));  
    }
    
    // More tests...
}
```

##### Conclusion

The transition from a layered approach to a functional slicing strategy significantly improved the testing process. By focusing on vertical slices
of functionality, the team achieved more robust and maintainable tests, faster feedback loops, and a more resilient testing framework. This case
study underscores the importance of adapting test strategies to align with system architecture and project needs, ensuring effective validation and
continuous delivery of high-quality software.

{{< image src="/images/practices/test_boundary_slicing.webp"  alt="Pattern structure definition"  size="30%" >}}


## Further Exploration

* {{<reference author="Fowler, M.; Beck, K.; Brant J.; Opdyke W.; Roberts D."
  year="2012"
  title="Refactoring: Improving the Design of Existing Code"
  isbn="978-0133065268"
  publisher="Addison-Wesley Professional"
  link="https://www.goodreads.com/book/show/18624706-refactoring" >}}
* {{<reference author="Farley, D."
  year="2021"
  title="Modern Software Engineering: Doing What Works to Build Better Software Faster "
  isbn="978-0137314911"
  publisher="Addison-Wesley Professional"
  link="https://www.amazon.com/Modern-Software-Engineering-Discipline-Development/dp/0137314914" >}}
* {{<reference author="Beck, K."
  year="2003"
  title="Test Driven Development: By Example"
  isbn="978-0321146533"
  publisher="Addison-Wesley Professional"
  link="https://www.goodreads.com/book/show/387190.Test_Driven_Development" >}}
* {{<reference author="Beck, K."
  year="2022"
  title="Test Desiderata"
  site="kentbeck.github.io"
  link="https://kentbeck.github.io/TestDesiderata/" >}}
* {{<reference author="Stanek, A."
  year="2022"
  title="Software Engineering and Communication"
  site="linkedin.com"
  link="https://www.linkedin.com/posts/adrianstanek_softwareengineering-communication-activity-7125755594849804290-s9II?utm_source=share&utm_medium=member_desktop" >}}
