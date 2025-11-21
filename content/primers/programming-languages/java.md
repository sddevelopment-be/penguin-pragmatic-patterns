+++
title = "Java Primer"
subtitle = "Write once, run anywhere — enterprise platform for scalable, maintainable systems"
aliases = ["java-primer", "programming-languages/java"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2025-11-13T22:00:00+00:00"
tags = ["programming", "java", "primer", "reference", "enterprise", "jvm"]
summary = """
Java is a statically-typed, object-oriented language designed for portability, reliability, and long-term maintainability. 
It combines strict type safety with platform independence through the JVM, making it the foundation of enterprise systems, 
Android development, and large-scale distributed applications.
"""
draft = true
+++

## 1. Language Philosophy

Java was created by Sun Microsystems (now Oracle) with an explicit goal: enable developers to write code once and run it anywhere through platform abstraction. It prioritizes backward compatibility, safety, and enterprise-grade tooling.

- **Platform independence.** The Java Virtual Machine (JVM) abstracts hardware and OS differences, treating bytecode as the universal target.
- **Static typing with safety.** Compile-time checks catch errors early; the runtime prevents memory corruption and undefined behavior.
- **Object-oriented by default.** Everything is a class or primitive; encapsulation, inheritance, and polymorphism structure large codebases.
- **Ecosystem maturity.** Decades of evolution produced Spring, Jakarta EE, Maven/Gradle, robust testing frameworks, and extensive libraries.
- **Backward compatibility.** Java 8 code typically runs on Java 21; the language evolves conservatively to protect investments.

Use Java for enterprise backends, Android applications, microservices, data processing pipelines, and any system where long-term maintainability and vendor-neutral portability matter.

**Authoritative References:**

- [Oracle Java Documentation](https://docs.oracle.com/en/java/) — Official language specification, API docs, tutorials
- [OpenJDK Project](https://openjdk.org/) — Open-source reference implementation
- [Java Language Specification](https://docs.oracle.com/javase/specs/) — Formal grammar and semantics
- [Effective Java (Joshua Bloch)](https://www.oreilly.com/library/view/effective-java/9780134686097/) — Canonical best practices

## 2. Syntax and Naming Conventions

Java's syntax is deliberately verbose to prioritize clarity over brevity. Naming conventions are enforced by community consensus and tooling.

| Element    | Convention                                 | Example                                           |
|------------|--------------------------------------------|---------------------------------------------------|
| Classes    | `PascalCase`                               | `TaskManager`, `UserRepository`                   |
| Interfaces | `PascalCase`, often adjectives             | `Runnable`, `Serializable`, `TaskProcessor`       |
| Methods    | `camelCase`, verb-based                    | `getTasks()`, `markCompleted()`, `processQueue()` |
| Variables  | `camelCase`                                | `taskList`, `maxRetries`                          |
| Constants  | `UPPER_SNAKE_CASE`                         | `MAX_CONNECTIONS`, `DEFAULT_TIMEOUT`              |
| Packages   | `lowercase.separated`                      | `com.example.tasks`, `org.patterns.domain`        |
| Enums      | `PascalCase` (type), `UPPER_CASE` (values) | `Status.PENDING`, `Status.COMPLETED`              |

**Style enforcement:**

- [Checkstyle](https://checkstyle.org/) for coding standards
- [SpotBugs](https://spotbugs.github.io/) for bug detection
- [Google Java Format](https://github.com/google/google-java-format) or [Eclipse Formatter](https://www.eclipse.org/downloads/)
- [SonarQube](https://www.sonarqube.org/) for code quality and security

## 3. Version and Dependency Management

Java versions follow a time-based release model (every 6 months). Long-Term Support (LTS) releases (currently 8, 11, 17, 21) receive extended updates.

| Tool/Concept               | Role                                             | Notes                                                    |
|----------------------------|--------------------------------------------------|----------------------------------------------------------|
| JDK (Java Development Kit) | Compiler, runtime, standard libraries            | Use OpenJDK or vendor distributions (Temurin, Azul Zulu) |
| Maven                      | Declarative build and dependency management      | `pom.xml`-based, widely adopted                          |
| Gradle                     | Flexible build automation with Groovy/Kotlin DSL | Faster incremental builds, Android standard              |
| jEnv / SDKMAN!             | JDK version manager                              | Switch between Java versions per project                 |

Typical workflow with Maven:

```bash
# Install SDKMAN (https://sdkman.io/)
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java 21 LTS
sdk install java 21-tem
sdk use java 21-tem

# Create new Maven project
mvn archetype:generate -DgroupId=com.example -DartifactId=myapp -DarchetypeArtifactId=maven-archetype-quickstart

# Add dependency (edit pom.xml or use CLI in newer versions)
# Build and test
mvn clean install
```

## 4. Build and Packaging Tooling

Java build tools manage compilation, testing, packaging (JARs/WARs), and dependency resolution.

| Tool     | Role                                       | Notes                                                    |
|----------|--------------------------------------------|----------------------------------------------------------|
| Maven    | Standard build lifecycle, plugin ecosystem | Opinionated structure (`src/main/java`, `src/test/java`) |
| Gradle   | Modern build automation, Kotlin/Groovy DSL | Faster builds, better for multi-module projects          |
| Ant      | Legacy build tool                          | XML-based, largely replaced by Maven/Gradle              |
| jlink    | Custom JRE creation (Java 9+)              | Bundles minimal runtime with application                 |
| jpackage | Native installer generation (Java 14+)     | Creates platform-specific installers                     |

Maven standard project layout:

```
myapp/
├── pom.xml                    # Build configuration
├── src/
│   ├── main/
│   │   ├── java/              # Application code
│   │   │   └── com/example/
│   │   │       └── App.java
│   │   └── resources/         # Config files, properties
│   └── test/
│       ├── java/              # Test code
│       │   └── com/example/
│       │       └── AppTest.java
│       └── resources/
└── target/                    # Build output (gitignored)
```

## 5. Testing Frameworks

Java has mature testing ecosystems supporting unit, integration, and property-based testing.

| Framework      | Purpose                         | Notes                                      |
|----------------|---------------------------------|--------------------------------------------|
| JUnit 5        | Unit and integration testing    | De facto standard, annotation-based        |
| Mockito        | Mocking framework               | Test doubles for dependencies              |
| AssertJ        | Fluent assertions               | More readable than JUnit assertions        |
| TestContainers | Integration testing with Docker | Real databases/services in tests           |
| ArchUnit       | Architecture testing            | Enforce package dependencies, naming rules |

Example JUnit 5 test:

```java
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class TaskManagerTest {

	@Test
	void shouldMarkTaskAsCompleted() {
		// Given
		TaskManager manager = new TaskManager();
		Task task = new Task("Deploy");

		// When
		manager.complete(task);

		// Then
		assertThat(task.getStatus()).isEqualTo(Status.COMPLETED);
	}
}
```

Run tests:

```bash
mvn test                  # Maven
./gradlew test            # Gradle
```

## 6. Programming Idioms

### 6.1 Object-Oriented Idioms

Java enforces OOP through classes, interfaces, and inheritance. Modern Java (8+) adds functional features while maintaining object-centric design.

```java
// Encapsulation with immutability (modern approach)
public final class Task {
	private final String name;
	private final Status status;

	public Task(String name) {
		this.name = name;
		this.status = Status.PENDING;
	}

	public Task complete() {
		return new Task(this.name, Status.COMPLETED);
	}

	// Getters, equals, hashCode, toString
}

// Interface-based design
public interface TaskRepository {
	List<Task> findAll();

	Optional<Task> findById(String id);

	void save(Task task);
}
```

### 6.2 Functional Programming Idioms

Java 8+ introduced lambda expressions, streams, and Optional for functional-style programming.

```java
// Stream-based transformation
List<Task> completedTasks =
		tasks.stream().filter(task -> task.getStatus() == Status.COMPLETED).sorted(Comparator.comparing(Task::getName)).collect(Collectors.toList());

// Optional to avoid nulls
Optional<Task> task = repository.findById("123");
String name = task.map(Task::getName).orElse("Unknown");
```

### 6.3 Imperative Programming Idioms

Traditional control flow remains common for orchestration and business logic.

```java
public void deployApplication(Config config) throws DeploymentException {
	logger.info("Starting deployment");

	try {
		validateConfig(config);
		buildArtifacts();
		runTests();
		deployToEnvironment(config.getEnvironment());

		logger.info("Deployment successful");
	} catch (ValidationException | BuildException e) {
		logger.error("Deployment failed", e);
		rollback();
		throw new DeploymentException("Deployment aborted", e);
	}
}
```

### 6.4 Idiom Integration

Modern Java combines OO structure with functional utilities:

- Domain core: immutable value objects, rich entities
- Service layer: interfaces with functional transformations
- Infrastructure: imperative orchestration, error handling

## 7. Workspace Bootstrap

**Prerequisites:**

- JDK 21 (or latest LTS)
- Maven or Gradle
- IDE (IntelliJ IDEA, Eclipse, VS Code with Java extensions)

**Project initialization:**

```bash
# Using Maven archetype
mvn archetype:generate \
  -DarchetypeGroupId=org.apache.maven.archetypes \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DarchetypeVersion=1.4

# Using Gradle init
gradle init --type java-application

# Using Spring Initializr for Spring Boot projects
curl https://start.spring.io/starter.zip \
  -d dependencies=web,data-jpa \
  -d type=maven-project \
  -d language=java \
  -d bootVersion=3.2.0 \
  -d baseDir=myapp \
  -o myapp.zip && unzip myapp.zip
```

**Essential plugins (Maven pom.xml):**

```xml

<build>
	<plugins>
		<plugin>
			<groupId>org.apache.maven.plugins</groupId>
			<artifactId>maven-compiler-plugin</artifactId>
			<version>3.11.0</version>
			<configuration>
				<release>21</release>
			</configuration>
		</plugin>
		<plugin>
			<groupId>org.apache.maven.plugins</groupId>
			<artifactId>maven-surefire-plugin</artifactId>
			<version>3.2.1</version>
		</plugin>
	</plugins>
</build>
```

## 8. Quickstart Setup (Unix)

```bash
# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java 21 LTS (Eclipse Temurin)
sdk install java 21-tem
sdk default java 21-tem

# Install Maven
sdk install maven

# Verify installation
java -version
mvn -version

# Create sample project
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=myapp \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

cd myapp
mvn clean test
```

## 9. First-Time Verification Checklist

```bash
# Check Java version (should be 21+)
java -version

# Check Maven/Gradle
mvn -version
# or
gradle -version

# Compile project
mvn compile

# Run tests
mvn test

# Package application
mvn package

# Run application
java -jar target/myapp-1.0-SNAPSHOT.jar
```

**Common validation points:**

- [ ] JDK 21+ installed and on PATH
- [ ] Maven or Gradle functioning
- [ ] Project compiles without errors
- [ ] Tests pass (green bar)
- [ ] JAR packaging succeeds
- [ ] IDE detects JDK and resolves dependencies

## 10. Appendix

**Official Documentation:**

- [Oracle Java Documentation](https://docs.oracle.com/en/java/)
- [Java Tutorials](https://docs.oracle.com/javase/tutorial/)
- [Java Language Specification](https://docs.oracle.com/javase/specs/)
- [OpenJDK](https://openjdk.org/)

**Learning Resources:**

- [Effective Java (Joshua Bloch)](https://www.oreilly.com/library/view/effective-java/9780134686097/) — Essential best practices
- [Java Concurrency in Practice](https://jcip.net/) — Multithreading fundamentals
- [Spring Framework Documentation](https://spring.io/projects/spring-framework) — Enterprise application development
- [Modern Java in Action](https://www.manning.com/books/modern-java-in-action) — Java 8+ features

**Common Pitfalls:**

- **NullPointerException:** Use `Optional` and null-safe operators
- **Version mismatches:** Lock JDK version per project with `.sdkmanrc` or `toolchains.xml`
- **ClassNotFoundException:** Verify dependency scopes and packaging
- **Memory leaks:** Watch for unclosed resources; use try-with-resources
- **Encoding issues:** Always specify UTF-8 explicitly

**IDE Configuration:**

- [IntelliJ IDEA](https://www.jetbrains.com/idea/) — Industry standard for Java
- [Eclipse](https://www.eclipse.org/downloads/) — Free, mature, extensive plugin ecosystem
- [VS Code Java Extension Pack](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
