+++
title = "Node.js Primer"
subtitle = "Event-driven JavaScript runtime for scalable network applications"
aliases = ["nodejs-primer", "node-primer", "programming-languages/nodejs", "5b7b3989-8f9f-4677-95ce-a5efb52e80a5"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2025-12-21T06:52:00+00:00"
tags = ["programming", "javascript", "nodejs", "primer", "reference", "intermediate", "async", "event-driven"]
summary = """
Node.js brings JavaScript to the server with an event-driven, non-blocking I/O model that makes it lightweight and efficient for data-intensive real-time applications. Built on Chrome's V8 engine, it unifies frontend and backend development while embracing asynchronous programming as a first-class concern.
"""
+++

## 1. Language Philosophy

> "Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient." — *Node.js Official*

Node.js transformed JavaScript from a browser-only scripting language into a full-stack runtime. Its core philosophy centers on asynchronous operations, event-driven architecture, and a massive ecosystem of reusable modules. The platform treats I/O as inherently concurrent, making it natural to build servers that handle thousands of simultaneous connections without threading complexity.

- **Event-driven by design.** Everything is a callback, promise, or event emitter—synchronous blocking is the exception, not the rule.
- **JavaScript everywhere.** Share code, patterns, and mental models between client and server; unified tooling across the stack.
- **NPM ecosystem supremacy.** The world's largest package registry encourages composition over monoliths—small modules doing one thing well.
- **Pragmatic evolution.** ES6+ features (arrow functions, destructuring, async/await) are standard; TypeScript adoption is widespread for type safety.
- **Single-threaded with concurrency.** Event loop handles I/O without threads; worker threads exist for CPU-intensive tasks but aren't the default.

Use Node.js for RESTful APIs, real-time applications (WebSockets, streaming), microservices, CLI tools, build tooling, and anywhere JavaScript's ubiquity reduces context-switching costs.

**Authoritative References:**

- [Node.js Official Documentation](https://nodejs.org/docs/latest/api/) — Complete API reference and guides
- [Node.js Best Practices](https://github.com/goldbergyoni/nodebestpractices) — Community-curated patterns
- [V8 JavaScript Engine](https://v8.dev/) — The runtime powering Node.js
- [npm Registry](https://www.npmjs.com/) — Central package repository
- [Node.js Release Schedule](https://github.com/nodejs/release#release-schedule) — LTS and current version timelines

## 2. Syntax and Naming Conventions

Node.js inherits JavaScript's syntax with community conventions evolved through the npm ecosystem. Modern Node.js code leans on ES modules (`import`/`export`), async/await patterns, and optional TypeScript for stronger contracts.

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Element                | Convention                      | Example                                        |
|------------------------|---------------------------------|------------------------------------------------|
| Variables/functions    | `camelCase`                     | `taskQueue`, `processNextTask()`               |
| Classes                | `PascalCase`                    | `TaskProcessor`, `EventEmitter`                |
| Constants              | `UPPER_SNAKE_CASE` or camelCase | `MAX_RETRIES = 3`, `defaultTimeout`            |
| Private fields (ES2022)| `#prefixed`                     | `#taskCache`, `#loadTasks()`                   |
| Files/modules          | `kebab-case` or `camelCase`     | `task-processor.js`, `taskQueue.ts`            |
| Async functions        | Return promises, use async/await| `async function fetchTasks() { ... }`          |
| Exports                | Named or default exports        | `export { TaskQueue }`, `export default app`   |
{{< /bootstrap-table >}}

**Style enforcement:**

- [ESLint](https://eslint.org/) with [Airbnb](https://github.com/airbnb/javascript) or [StandardJS](https://standardjs.com/) configs
- [Prettier](https://prettier.io/) for opinionated formatting
- [TypeScript ESLint](https://typescript-eslint.io/) for TypeScript projects
- Semicolons are optional but teams should pick one style and enforce it

## 3. Version and Dependency Management

Node.js follows a time-based release schedule with LTS (Long-Term Support) versions receiving 30 months of maintenance. Version management is critical because native modules, API changes, and performance characteristics differ across major releases.

### Version Management Tools

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool     | Role                                           | Why teams use it                                 |
|----------|------------------------------------------------|--------------------------------------------------|
| `nvm`    | Node Version Manager (Unix/macOS)              | Switch between Node.js versions per project      |
| `nvm-windows` | Windows equivalent of nvm                | Windows-specific version management              |
| `volta`  | Fast, reliable version manager                 | Per-project pinning in package.json, fewer bugs  |
| `asdf`   | Universal version manager (Node + others)      | One tool for Node, Python, Ruby, etc.            |
| `fnm`    | Fast Node Manager (Rust-based)                 | Speed-focused alternative to nvm                 |
{{< /bootstrap-table >}}

### Package Managers

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool   | Role                                  | Notes                                                |
|--------|---------------------------------------|------------------------------------------------------|
| `npm`  | Default package manager               | Ships with Node.js, `package-lock.json` for locking  |
| `yarn` | Facebook's alternative                | Faster installs, better monorepo support (workspaces)|
| `pnpm` | Efficient disk-space package manager  | Uses symlinks, strict node_modules, content-addressable |
| `bun`  | New all-in-one runtime + package manager | Extremely fast, JavaScript/TypeScript runtime      |
{{< /bootstrap-table >}}

### Common Versioning Challenges ⚠️

**Challenge 1: Multiple Active LTS Versions**
- **Problem:** Teams run Node.js 16, 18, 20, 22 simultaneously across projects
- **Impact:** Native module compatibility breaks; CI matrices explode
- **Mitigation:** Use `.nvmrc` or `volta` config in each repo; enforce version checks in CI

**Challenge 2: Dependency Version Conflicts**
- **Problem:** Transitive dependencies require conflicting versions (peer dependency hell)
- **Impact:** `npm install` fails with ERESOLVE errors; dependency duplication bloats node_modules
- **Mitigation:** Use `overrides` (npm 8.3+) or `resolutions` (yarn); audit with `npm ls` or `pnpm why`

**Challenge 3: package-lock.json Merge Conflicts**
- **Problem:** Parallel dependency changes create massive merge conflicts in lockfiles
- **Impact:** Manual resolution is error-prone; inconsistent installs across team
- **Mitigation:** Regenerate lockfile after merge (`npm install`); use tools like `npm-merge-driver`

**Challenge 4: CommonJS vs ES Modules (ESM)**
- **Problem:** Legacy packages use `require()`, modern code uses `import`; mixing is fragile
- **Impact:** "Cannot use import statement outside a module" or "require is not defined"
- **Mitigation:** Set `"type": "module"` in package.json; use `.mjs`/`.cjs` extensions; adopt TypeScript

**Challenge 5: Outdated Transitive Dependencies**
- **Problem:** Your direct deps have outdated dependencies with security vulnerabilities
- **Impact:** `npm audit` reports vulnerabilities you can't fix without upstream updates
- **Mitigation:** Use `npm audit fix --force` cautiously; consider `overrides` or fork packages

**Challenge 6: Breaking Changes in Patch Versions**
- **Problem:** Semver violations—patch versions introduce breaking changes
- **Impact:** Builds break after `npm update` or fresh installs
- **Mitigation:** Use exact versions for critical deps; test with `npm ci` in CI; pin with lockfiles

**Typical workflow:**

```bash
# Install nvm (Unix/macOS)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Install and use Node.js LTS
nvm install --lts
nvm use --lts

# Create .nvmrc to lock version
node -v > .nvmrc

# Initialize project
npm init -y

# Install dependencies
npm install express
npm install --save-dev jest typescript @types/node

# Lock versions with package-lock.json (committed to git)
npm ci  # Clean install from lockfile in CI
```

**Version strategy:**
- Use LTS versions for production (currently 18.x, 20.x)
- Pin major versions in package.json: `"express": "^4.18.0"` (caret allows minor/patch)
- Commit `package-lock.json` or `yarn.lock` to ensure reproducible installs
- Run `npm outdated` regularly; update dependencies in controlled batches
- Use `npm audit` or `snyk` for security scanning

## 4. Build and Packaging Tooling

Node.js projects often involve transpilation (TypeScript, JSX), bundling (for browsers), and task automation. The ecosystem is fragmented but converging toward Vite and esbuild for speed.

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool       | Role                                      | Notes                                               |
|------------|-------------------------------------------|-----------------------------------------------------|
| `npm scripts` | Task automation via package.json       | Standard way to define `build`, `test`, `start`     |
| `webpack`  | Module bundler and build orchestrator     | Feature-rich but complex; still common in legacy    |
| `Vite`     | Modern dev server and bundler             | Lightning-fast HMR, native ES modules, Rollup prod  |
| `esbuild`  | Extremely fast bundler and minifier       | Written in Go; used by Vite and other tools         |
| `Rollup`   | ES module bundler for libraries           | Tree-shaking focus, cleaner output for packages     |
| `Turbopack`| Next-gen bundler (from Vercel)            | Rust-based, integrates with Next.js                 |
| `tsc`      | TypeScript compiler                       | Type-checking and transpilation to JavaScript       |
{{< /bootstrap-table >}}

Reference layout:

```
project/
├── package.json           # Dependencies, scripts, metadata
├── package-lock.json      # Locked dependency tree
├── tsconfig.json          # TypeScript configuration (if used)
├── .nvmrc                 # Node version specification
├── src/
│   ├── index.ts           # Entry point
│   ├── services/
│   │   └── taskService.ts
│   └── models/
│       └── task.ts
├── tests/
│   └── taskService.test.ts
├── dist/                  # Compiled output (gitignored)
├── node_modules/          # Installed dependencies (gitignored)
└── README.md
```

Typical `package.json` scripts:

```json
{
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "test": "jest",
    "test:watch": "jest --watch",
    "lint": "eslint src --ext .ts,.tsx",
    "format": "prettier --write src/**/*.ts",
    "typecheck": "tsc --noEmit",
    "start": "node dist/index.js"
  }
}
```

CI typically runs `npm ci`, `npm run typecheck`, `npm run lint`, `npm test`, and `npm run build`. Publishing to npm registry uses `npm publish` after versioning with `npm version`.

## 5. Testing Frameworks

Node.js testing culture emphasizes fast feedback loops, mocking external dependencies, and separating unit tests from integration tests. Jest dominated for years; Vitest is gaining traction for Vite-based projects.

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool             | Purpose                               | Why it matters                                      |
|------------------|---------------------------------------|-----------------------------------------------------|
| `Jest`           | Zero-config testing framework         | Mocking, snapshots, coverage, watch mode            |
| `Vitest`         | Vite-native test runner               | Jest-compatible API, faster execution, ESM-first    |
| `Mocha`          | Flexible test framework               | Legacy standard, pairs with Chai/Sinon              |
| `Chai`           | Assertion library                     | BDD/TDD style assertions (`expect`, `should`)       |
| `Sinon`          | Mocking and spying                    | Standalone alternative to Jest mocks                |
| `Testing Library`| DOM testing utilities                 | User-centric testing for React/Vue/Angular          |
| `Supertest`      | HTTP assertion library                | Test Express/Fastify endpoints without server start |
| `Playwright`     | End-to-end browser testing            | Cross-browser automation with great DX              |
| `Cypress`        | E2E testing framework                 | Developer-friendly, time-travel debugging           |
{{< /bootstrap-table >}}

**Testing philosophy:**
- **Unit tests:** Fast, isolated, mock external dependencies
- **Integration tests:** Test modules together, use test databases
- **E2E tests:** Slower, test user workflows through real UI

Canonical Jest example:

```typescript
// src/services/taskService.ts
export interface Task {
  id: string;
  title: string;
  completed: boolean;
}

export class TaskService {
  private tasks: Task[] = [];

  addTask(title: string): Task {
    const task: Task = {
      id: crypto.randomUUID(),
      title,
      completed: false
    };
    this.tasks.push(task);
    return task;
  }

  completeTask(id: string): boolean {
    const task = this.tasks.find(t => t.id === id);
    if (!task) return false;
    task.completed = true;
    return true;
  }

  getCompletionRate(): number {
    if (this.tasks.length === 0) return 0;
    const completed = this.tasks.filter(t => t.completed).length;
    return completed / this.tasks.length;
  }
}
```

```typescript
// tests/taskService.test.ts
import { TaskService } from '../src/services/taskService';

describe('TaskService', () => {
  let service: TaskService;

  beforeEach(() => {
    service = new TaskService();
  });

  test('completion rate is zero for empty task list', () => {
    expect(service.getCompletionRate()).toBe(0);
  });

  test('completion rate reflects completed tasks', () => {
    const task1 = service.addTask('Write tests');
    const task2 = service.addTask('Review code');
    
    service.completeTask(task1.id);
    
    expect(service.getCompletionRate()).toBe(0.5);
  });

  test('completing non-existent task returns false', () => {
    expect(service.completeTask('invalid-id')).toBe(false);
  });
});
```

Run with: `npm test` or `npx jest --watch`. Coverage reporting with `jest --coverage` generates HTML reports showing untested branches.

## 6. Programming Idioms

Node.js development blends event-driven patterns, asynchronous flows, and JavaScript's multi-paradigm flexibility. The platform makes async operations natural but requires discipline to avoid callback hell and unhandled promise rejections.

### 6.1 Event-Driven and Asynchronous Idioms

Node.js is built on the event loop—non-blocking I/O lets a single thread handle thousands of concurrent operations. Modern code uses async/await over callbacks; event emitters remain essential for streams and long-running processes.

**Core patterns:**
- Use `async`/`await` for sequential async operations
- Use `Promise.all()` or `Promise.allSettled()` for parallel operations
- Implement `EventEmitter` for pub/sub patterns
- Handle errors with try/catch in async functions or `.catch()` on promises

```typescript
import { EventEmitter } from 'events';
import { readFile } from 'fs/promises';

// Async/await for sequential operations
async function loadTasksFromFiles(paths: string[]): Promise<string[]> {
  const contents: string[] = [];
  for (const path of paths) {
    try {
      const content = await readFile(path, 'utf-8');
      contents.push(content);
    } catch (error) {
      console.error(`Failed to load ${path}:`, error);
    }
  }
  return contents;
}

// Parallel operations with Promise.all
async function loadTasksInParallel(paths: string[]): Promise<string[]> {
  const promises = paths.map(path => 
    readFile(path, 'utf-8').catch(error => {
      console.error(`Failed to load ${path}:`, error);
      return '';
    })
  );
  return Promise.all(promises);
}

// Event-driven pattern for streaming
class TaskProcessor extends EventEmitter {
  async processTask(taskId: string): Promise<void> {
    this.emit('started', taskId);
    
    try {
      // Simulate processing
      await new Promise(resolve => setTimeout(resolve, 1000));
      this.emit('completed', taskId);
    } catch (error) {
      this.emit('error', taskId, error);
    }
  }
}

const processor = new TaskProcessor();
processor.on('started', id => console.log(`Processing ${id}`));
processor.on('completed', id => console.log(`Completed ${id}`));
processor.on('error', (id, err) => console.error(`Failed ${id}:`, err));
```

**Anti-patterns to avoid:**
- Callback hell (nested callbacks)—use async/await or promisify
- Unhandled promise rejections—always catch or handle rejections
- Blocking the event loop—offload CPU work to worker threads

### 6.2 Functional Programming Idioms

JavaScript's first-class functions, array methods, and immutability patterns enable functional approaches. Pure functions, composition, and data transformations keep code predictable and testable.

**Core patterns:**
- Use `map`, `filter`, `reduce` for data transformations
- Prefer immutability with `const`, spread operators, and Object.freeze
- Compose small functions instead of large classes
- Use libraries like Ramda or lodash/fp for advanced functional patterns

```typescript
interface Task {
  id: string;
  title: string;
  priority: number;
  completed: boolean;
  tags: string[];
}

// Pure function transformations
const isHighPriority = (task: Task): boolean => task.priority >= 8;
const isActive = (task: Task): boolean => !task.completed;
const addTag = (tag: string) => (task: Task): Task => ({
  ...task,
  tags: [...task.tags, tag]
});

// Composing transformations
function processHighPriorityTasks(tasks: Task[]): Task[] {
  return tasks
    .filter(isActive)
    .filter(isHighPriority)
    .map(addTag('urgent'))
    .sort((a, b) => b.priority - a.priority);
}

// Reduce for aggregations
function taskStatistics(tasks: Task[]): { total: number; completed: number; rate: number } {
  const stats = tasks.reduce(
    (acc, task) => ({
      total: acc.total + 1,
      completed: acc.completed + (task.completed ? 1 : 0)
    }),
    { total: 0, completed: 0 }
  );
  
  return {
    ...stats,
    rate: stats.total > 0 ? stats.completed / stats.total : 0
  };
}
```

### 6.3 Object-Oriented Idioms

TypeScript brings robust OO capabilities to Node.js—classes, interfaces, inheritance, and access modifiers. Use OO for stateful services, domain models, and when you need polymorphism.

**Core patterns:**
- Use classes for stateful objects (repositories, services, managers)
- Interfaces define contracts for dependency injection
- Dependency injection via constructor parameters
- Use private fields (`#field` or `private` in TypeScript) to encapsulate

```typescript
interface TaskRepository {
  save(task: Task): Promise<void>;
  findById(id: string): Promise<Task | null>;
  findAll(): Promise<Task[]>;
}

class InMemoryTaskRepository implements TaskRepository {
  private tasks: Map<string, Task> = new Map();

  async save(task: Task): Promise<void> {
    this.tasks.set(task.id, { ...task });
  }

  async findById(id: string): Promise<Task | null> {
    return this.tasks.get(id) || null;
  }

  async findAll(): Promise<Task[]> {
    return Array.from(this.tasks.values());
  }
}

class TaskService {
  constructor(private repository: TaskRepository) {}

  async createTask(title: string, priority: number): Promise<Task> {
    const task: Task = {
      id: crypto.randomUUID(),
      title,
      priority,
      completed: false,
      tags: []
    };
    await this.repository.save(task);
    return task;
  }

  async completeTask(id: string): Promise<boolean> {
    const task = await this.repository.findById(id);
    if (!task || task.completed) return false;
    
    task.completed = true;
    await this.repository.save(task);
    return true;
  }
}

// Dependency injection in action
const repository = new InMemoryTaskRepository();
const service = new TaskService(repository);
```

### 6.4 Idiom Integration: Layered Architecture

Real Node.js applications blend all paradigms—OO for domain models and services, functional for transformations, event-driven for I/O, imperative for orchestration.

**Typical layers:**
1. **Domain models** (OO): Classes representing business entities
2. **Repositories** (OO): Data access abstraction
3. **Services** (OO + Functional): Business logic orchestration
4. **Controllers/Routes** (Imperative): HTTP request handling
5. **Event handlers** (Event-driven): Background processing, webhooks

```typescript
// Layered example: Express API with clean architecture
import express from 'express';

// Domain layer
interface Task {
  id: string;
  title: string;
  completed: boolean;
}

// Repository layer
class TaskRepository {
  private tasks: Map<string, Task> = new Map();
  
  async save(task: Task): Promise<void> {
    this.tasks.set(task.id, task);
  }
  
  async findAll(): Promise<Task[]> {
    return Array.from(this.tasks.values());
  }
}

// Service layer (business logic)
class TaskService {
  constructor(private repo: TaskRepository) {}
  
  async createTask(title: string): Promise<Task> {
    const task: Task = {
      id: crypto.randomUUID(),
      title,
      completed: false
    };
    await this.repo.save(task);
    return task;
  }
  
  async getAllTasks(): Promise<Task[]> {
    return this.repo.findAll();
  }
  
  getCompletionStats(tasks: Task[]) {
    const completed = tasks.filter(t => t.completed).length;
    return {
      total: tasks.length,
      completed,
      rate: tasks.length > 0 ? completed / tasks.length : 0
    };
  }
}

// Controller layer (HTTP)
const app = express();
app.use(express.json());

const repo = new TaskRepository();
const service = new TaskService(repo);

app.post('/tasks', async (req, res) => {
  try {
    const task = await service.createTask(req.body.title);
    res.status(201).json(task);
  } catch (error) {
    res.status(500).json({ error: 'Failed to create task' });
  }
});

app.get('/tasks', async (req, res) => {
  try {
    const tasks = await service.getAllTasks();
    const stats = service.getCompletionStats(tasks);
    res.json({ tasks, stats });
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch tasks' });
  }
});

app.listen(3000, () => console.log('Server running on port 3000'));
```

## 7. Workspace Bootstrap

Setting up a production-grade Node.js project involves choosing a package manager, configuring TypeScript (optional but recommended), setting up linting and formatting, and establishing a testing pipeline.

**Prerequisites:**
- Node.js LTS (v20.x or v22.x)
- npm (comes with Node.js) or alternative package manager
- Git for version control

**Project structure:**

```
my-node-project/
├── .nvmrc                  # Node version specification
├── package.json            # Dependencies and scripts
├── package-lock.json       # Locked dependency versions
├── tsconfig.json           # TypeScript configuration (if used)
├── .eslintrc.json          # Linting rules
├── .prettierrc             # Code formatting rules
├── .gitignore              # Git ignore patterns
├── jest.config.js          # Test configuration
├── src/
│   ├── index.ts
│   ├── services/
│   ├── models/
│   └── utils/
├── tests/
│   └── unit/
├── dist/                   # Build output (gitignored)
└── node_modules/           # Dependencies (gitignored)
```

**Setup steps:**

```bash
# 1. Initialize project
mkdir my-node-project && cd my-node-project
npm init -y

# 2. Lock Node version
echo "20.11.0" > .nvmrc
nvm use

# 3. Install TypeScript and type definitions
npm install --save-dev typescript @types/node
npx tsc --init  # Creates tsconfig.json

# 4. Install linting and formatting
npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install --save-dev prettier eslint-config-prettier
npx eslint --init

# 5. Install testing framework
npm install --save-dev jest @types/jest ts-jest
npx ts-jest config:init

# 6. Install runtime dependencies (example)
npm install express
npm install --save-dev @types/express

# 7. Configure scripts in package.json
npm pkg set scripts.dev="tsx watch src/index.ts"
npm pkg set scripts.build="tsc"
npm pkg set scripts.start="node dist/index.js"
npm pkg set scripts.test="jest"
npm pkg set scripts.lint="eslint src --ext .ts"
npm pkg set scripts.format="prettier --write src/**/*.ts"

# 8. Setup pre-commit hooks (optional)
npm install --save-dev husky lint-staged
npx husky init
echo "npx lint-staged" > .husky/pre-commit
```

**Recommended package.json scripts:**

```json
{
  "scripts": {
    "dev": "tsx watch src/index.ts",
    "build": "tsc",
    "start": "node dist/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage",
    "lint": "eslint src --ext .ts,.tsx",
    "lint:fix": "eslint src --ext .ts,.tsx --fix",
    "format": "prettier --write \"src/**/*.{ts,tsx,json}\"",
    "typecheck": "tsc --noEmit",
    "clean": "rm -rf dist node_modules",
    "audit": "npm audit",
    "outdated": "npm outdated"
  }
}
```

**CI Integration (GitHub Actions example):**

```yaml
name: CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
      - run: npm ci
      - run: npm run typecheck
      - run: npm run lint
      - run: npm test
      - run: npm run build
```

## 8. Quickstart Setup (Unix/macOS)

Step-by-step installation for a fresh development environment:

```bash
# 1. Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Restart shell or run:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# 2. Install Node.js LTS
nvm install --lts
nvm use --lts
nvm alias default 'lts/*'

# 3. Verify installation
node --version   # Should show v20.x.x or v22.x.x
npm --version    # Should show 10.x.x or higher

# 4. Configure npm (optional but recommended)
npm config set init-author-name "Your Name"
npm config set init-license "MIT"

# 5. Install global tools (optional)
npm install -g npm@latest      # Update npm itself
npm install -g typescript      # TypeScript compiler
npm install -g tsx             # TypeScript executor
npm install -g pnpm            # Alternative package manager

# 6. Create and setup a new project
mkdir my-app && cd my-app
npm init -y
npm install typescript @types/node --save-dev
npx tsc --init

# 7. Create basic source files
mkdir src
cat > src/index.ts << 'EOF'
console.log('Hello from Node.js with TypeScript!');

async function main() {
  const start = Date.now();
  await new Promise(resolve => setTimeout(resolve, 1000));
  const elapsed = Date.now() - start;
  console.log(`Async operation completed in ${elapsed}ms`);
}

main();
EOF

# 8. Run development server
npx tsx src/index.ts

# 9. Build for production
npx tsc
node dist/index.js
```

**Windows setup:**

```powershell
# Install nvm-windows from: https://github.com/coreybutler/nvm-windows/releases
# Then in PowerShell or Command Prompt:

nvm install lts
nvm use lts
node --version
npm --version

# Rest of setup is identical to Unix
```

## 9. First-Time Verification Checklist

After setting up your Node.js environment, verify everything works:

```bash
# ✓ Node.js installed
node --version
# Expected: v20.x.x or v22.x.x (LTS versions)

# ✓ npm installed and working
npm --version
# Expected: 10.x.x or higher

# ✓ nvm available (version management)
nvm --version
# Expected: 0.39.x or higher

# ✓ Can create and run JavaScript
echo "console.log('Hello Node.js');" > test.js
node test.js
# Expected: "Hello Node.js" printed to console

# ✓ TypeScript compilation works
npm install -g typescript
echo "const greeting: string = 'Hello TypeScript';\nconsole.log(greeting);" > test.ts
tsc test.ts
node test.js
# Expected: "Hello TypeScript" printed

# ✓ Can install packages
npm init -y
npm install express
# Expected: node_modules/ created, express installed

# ✓ Tests can run
npm install --save-dev jest @types/jest
npx jest --version
# Expected: Jest version printed

# ✓ Linting works
npm install --save-dev eslint
npx eslint --version
# Expected: ESLint version printed

# Cleanup test files
rm test.js test.ts package.json package-lock.json
rm -rf node_modules/
```

**Common troubleshooting:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Problem                              | Solution                                               |
|--------------------------------------|--------------------------------------------------------|
| `node: command not found`            | Restart shell after nvm install, or run nvm use       |
| `EACCES` npm global install errors   | Don't use sudo; reconfigure npm global prefix          |
| `MODULE_NOT_FOUND` errors            | Run `npm install`, check package.json dependencies     |
| TypeScript errors about missing types| Install `@types/node` and other type packages          |
| Tests fail to find modules           | Check `tsconfig.json` paths and `moduleResolution`     |
| Slow installs                        | Try `pnpm` or configure npm cache                      |
{{< /bootstrap-table >}}

## 10. Appendix

### 10.1 Security Risks and Mitigation Strategies 🔒

Node.js applications face unique security challenges due to the npm ecosystem's size and JavaScript's dynamic nature.

**Critical Security Risks:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Risk                     | Description                                              | Mitigation                                              |
|--------------------------|----------------------------------------------------------|---------------------------------------------------------|
| Supply chain attacks     | Malicious code in dependencies or typosquatting          | Use `npm audit`, Snyk, Socket.dev; verify package names |
| Prototype pollution      | Modifying Object.prototype causes global corruption      | Use `Object.create(null)`, validate inputs, use Map     |
| Unpatched dependencies   | Known CVEs in outdated packages                          | Regular `npm audit fix`, automated Dependabot updates   |
| Secrets exposure         | API keys, tokens in code or version control              | Use `.env` files, gitignore them, use secret managers   |
| ReDoS (Regex DoS)        | Crafted input causes exponential regex backtracking      | Validate regexes with safe-regex, set timeouts          |
| Command injection        | Unsanitized input passed to `exec()` or `spawn()`        | Use parameterized commands, validate inputs             |
| Path traversal           | `../` in file paths exposes sensitive files              | Validate paths with `path.resolve()`, whitelist dirs    |
| Unhandled rejections     | Crashed process from unhandled promise errors            | Global handlers, always `.catch()` promises             |
| Outdated Node.js         | Security patches missing in old runtime versions         | Use LTS versions, update regularly, monitor advisories  |
| SSRF (Server-Side Request Forgery) | App makes requests to internal services | Whitelist URLs, validate destinations                   |
{{< /bootstrap-table >}}

**Security best practices:**

```bash
# 1. Audit dependencies regularly
npm audit
npm audit fix
# Or use automated tools:
npm install -g snyk
snyk test

# 2. Check for outdated packages
npm outdated
npm update

# 3. Use environment variables for secrets
npm install dotenv
echo "API_KEY=secret" > .env
echo ".env" >> .gitignore

# 4. Validate and sanitize inputs
npm install validator
# Use libraries for validation, never trust user input

# 5. Use security headers in Express
npm install helmet
# app.use(helmet())

# 6. Enable strict mode
# Add "use strict"; or use ES modules (implicit strict mode)

# 7. Set up dependency scanning in CI
# GitHub Dependabot, Snyk, Socket.dev, npm audit in pipeline
```

**Example secure configuration:**

```typescript
import express from 'express';
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import { config } from 'dotenv';

config(); // Load .env file

const app = express();

// Security middleware
app.use(helmet()); // Sets security headers
app.use(express.json({ limit: '10kb' })); // Limit body size

// Rate limiting to prevent DoS
const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100 // limit each IP to 100 requests per windowMs
});
app.use('/api/', limiter);

// Input validation example
app.post('/api/tasks', (req, res) => {
  const { title } = req.body;
  
  if (!title || typeof title !== 'string' || title.length > 200) {
    return res.status(400).json({ error: 'Invalid title' });
  }
  
  // Process validated input...
});

// Global error handler
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection at:', promise, 'reason:', reason);
  // Application specific logging, throwing an error, or other logic here
});
```

### 10.2 Notable Frameworks and Libraries

The Node.js ecosystem is vast. Here are frameworks and libraries that define modern Node.js development:

**Backend Frameworks:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Framework | Type              | Use Case                                      |
|-----------|-------------------|-----------------------------------------------|
| Express   | Minimalist web    | REST APIs, simple servers, most flexible      |
| Fastify   | High-performance  | Speed-critical APIs, schema validation        |
| NestJS    | Enterprise        | Scalable architecture, TypeScript-first, DI   |
| Koa       | Next-gen Express  | Async/await native, middleware composition    |
| Hapi      | Configuration     | Large teams, plugin system, opinionated       |
| Adonis.js | Full-stack MVC    | Laravel-like DX for Node.js                   |
{{< /bootstrap-table >}}

**Frontend Frameworks (Node.js-powered):**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Framework | Type            | Key Feature                                  |
|-----------|-----------------|----------------------------------------------|
| Angular   | Full-featured   | TypeScript, dependency injection, NgRx state |
| React     | Library         | Component-based, ecosystem flexibility       |
| Vue       | Progressive     | Approachable, reactive, Composition API      |
| Svelte    | Compiler        | No virtual DOM, compile-time optimization    |
| Next.js   | React meta      | SSR, SSG, file-based routing, React Server Components |
| Nuxt      | Vue meta        | SSR, SSG, auto-imports, TypeScript support   |
| Remix     | React routing   | Nested routes, data loading, web standards   |
{{< /bootstrap-table >}}

**State Management:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Library   | Philosophy        | Best With                                    |
|-----------|-------------------|----------------------------------------------|
| NgRx      | Redux for Angular | Angular applications, reactive state         |
| Redux     | Predictable state | React, centralized state, time-travel debug  |
| MobX      | Reactive          | React/Vue, observable state, less boilerplate|
| Zustand   | Minimalist        | React, hooks-based, simple API               |
| Pinia     | Vue state         | Vue 3, Composition API, TypeScript support   |
| XState    | State machines    | Complex workflows, visual state charts       |
{{< /bootstrap-table >}}

**RxJS - Reactive Extensions for JavaScript:**

[RxJS](https://rxjs.dev/) brings functional reactive programming to JavaScript with Observables—streams of values over time. Critical for Angular but useful anywhere asynchronous complexity grows.

**Core concepts:**
- **Observable:** Lazy stream of future values
- **Operators:** Pure functions for transforming streams (map, filter, merge, debounce)
- **Subjects:** Hot observables that multicast to multiple subscribers
- **Schedulers:** Control execution context (async, animation frame)

```typescript
import { fromEvent, interval, merge } from 'rxjs';
import { map, filter, debounceTime, take } from 'rxjs/operators';

// Example: Search box with debouncing
const searchBox = document.getElementById('search') as HTMLInputElement;
const search$ = fromEvent(searchBox, 'input').pipe(
  map(event => (event.target as HTMLInputElement).value),
  debounceTime(300), // Wait 300ms after last keystroke
  filter(term => term.length > 2), // Only search if 3+ characters
);

search$.subscribe(term => console.log('Searching for:', term));

// Example: Merging multiple streams
const clicks$ = fromEvent(document, 'click');
const timer$ = interval(1000).pipe(take(5));

merge(clicks$, timer$).subscribe(event => 
  console.log('Event occurred:', event)
);
```

**Angular with NgRx:**

[Angular](https://angular.io/) is a batteries-included framework with TypeScript, dependency injection, RxJS observables, and reactive forms. [NgRx](https://ngrx.io/) adds Redux-inspired state management with effects for side effects.

```typescript
// State management with NgRx
import { createAction, createReducer, createSelector, on, props } from '@ngrx/store';

// Actions
export const loadTasks = createAction('[Task] Load Tasks');
export const loadTasksSuccess = createAction(
  '[Task] Load Tasks Success',
  props<{ tasks: Task[] }>()
);

// Reducer
export interface TaskState {
  tasks: Task[];
  loading: boolean;
}

const initialState: TaskState = {
  tasks: [],
  loading: false
};

export const taskReducer = createReducer(
  initialState,
  on(loadTasks, state => ({ ...state, loading: true })),
  on(loadTasksSuccess, (state, { tasks }) => ({
    ...state,
    tasks,
    loading: false
  }))
);

// Selectors
export const selectTaskState = (state: AppState) => state.tasks;
export const selectAllTasks = createSelector(
  selectTaskState,
  state => state.tasks
);
export const selectCompletedTasks = createSelector(
  selectAllTasks,
  tasks => tasks.filter(t => t.completed)
);
```

**Testing Libraries:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Library         | Purpose                     | Notes                                     |
|-----------------|-----------------------------|-------------------------------------------|
| Jest            | Test runner + assertions    | Most popular, zero-config                 |
| Vitest          | Vite-native testing         | Faster, Jest-compatible API               |
| Testing Library | DOM testing utilities       | User-centric, works with React/Vue/Angular|
| Supertest       | HTTP assertions             | Test Express/Fastify without server       |
| MSW             | API mocking                 | Mock Service Worker for REST/GraphQL      |
| Playwright      | E2E browser testing         | Multi-browser, great debugging            |
| Cypress         | E2E testing                 | Developer-friendly, time-travel debug     |
{{< /bootstrap-table >}}

**Build and Development Tools:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Tool       | Purpose                    | Notes                                      |
|------------|----------------------------|--------------------------------------------|
| Vite       | Dev server + bundler       | Lightning-fast HMR, modern defaults        |
| webpack    | Module bundler             | Feature-rich, complex configuration        |
| esbuild    | Fast bundler/minifier      | Written in Go, used by other tools         |
| Rollup     | ES module bundler          | Best for libraries, tree-shaking focus     |
| Turbopack  | Next-gen bundler           | Rust-based, Vercel's webpack successor     |
| tsx        | TypeScript executor        | `node` replacement for running .ts files   |
| nodemon    | Auto-restart dev server    | Watches files, restarts on changes         |
{{< /bootstrap-table >}}

**Utility Libraries:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Library    | Purpose                    | Notes                                      |
|------------|----------------------------|--------------------------------------------|
| lodash     | Utility functions          | Array/object manipulation, debounce, etc.  |
| date-fns   | Date manipulation          | Modern alternative to Moment.js            |
| zod        | Schema validation          | TypeScript-first, type inference           |
| axios      | HTTP client                | Promise-based, interceptors, browser+Node  |
| dotenv     | Environment variables      | Load .env files into process.env           |
| winston    | Logging                    | Production-grade logging with transports   |
| joi        | Schema validation          | Mature, feature-rich validation            |
{{< /bootstrap-table >}}

### 10.3 Learning Resources

**Official Documentation:**
- [Node.js Guides](https://nodejs.org/en/docs/guides/) — Official tutorials and guides
- [MDN JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript) — Comprehensive JS docs
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html) — TypeScript fundamentals

**Books:**
- *Node.js Design Patterns* by Mario Casciaro — Advanced patterns and best practices
- *Effective TypeScript* by Dan Vanderkam — 62 specific ways to improve TypeScript
- *You Don't Know JS* by Kyle Simpson — Deep JavaScript fundamentals

**Community Resources:**
- [Node.js Best Practices](https://github.com/goldbergyoni/nodebestpractices) — 100+ best practices
- [The Modern JavaScript Tutorial](https://javascript.info/) — From basics to advanced
- [npm trends](https://npmtrends.com/) — Compare package popularity and maintenance

**Video Courses:**
- [NodeSchool](https://nodeschool.io/) — Interactive command-line workshops
- [Frontend Masters](https://frontendmasters.com/) — Professional courses on Node.js ecosystem
- [Egghead.io](https://egghead.io/) — Short, focused video tutorials

### 10.4 IDE and Editor Configuration

**Visual Studio Code (recommended):**

Essential extensions:
- ESLint — Real-time linting
- Prettier — Code formatting
- TypeScript and JavaScript Language Features (built-in)
- Jest — Test running and debugging
- Error Lens — Inline error messages
- npm Intellisense — Autocomplete npm modules

Workspace settings (`.vscode/settings.json`):

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "typescript.tsdk": "node_modules/typescript/lib",
  "typescript.enablePromptUseWorkspaceTsdk": true,
  "jest.autoRun": "off",
  "npm.packageManager": "npm"
}
```

**JetBrains WebStorm:**
- Built-in Node.js and npm support
- Integrated debugger with breakpoints
- Refactoring tools for JavaScript/TypeScript
- Database tools for backend development

**Debugging configuration (launch.json for VS Code):**

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Debug TypeScript",
      "program": "${workspaceFolder}/src/index.ts",
      "preLaunchTask": "tsc: build - tsconfig.json",
      "outFiles": ["${workspaceFolder}/dist/**/*.js"],
      "sourceMaps": true
    },
    {
      "type": "node",
      "request": "launch",
      "name": "Jest Tests",
      "program": "${workspaceFolder}/node_modules/.bin/jest",
      "args": ["--runInBand", "--no-cache"],
      "console": "integratedTerminal"
    }
  ]
}
```

### 10.5 Common Pitfalls and Recovery

**Pitfall 1: Callback Hell**
```typescript
// ❌ Bad: Nested callbacks
fs.readFile('file1.txt', (err, data1) => {
  if (err) throw err;
  fs.readFile('file2.txt', (err, data2) => {
    if (err) throw err;
    fs.readFile('file3.txt', (err, data3) => {
      if (err) throw err;
      console.log(data1, data2, data3);
    });
  });
});

// ✅ Good: Async/await
async function readFiles() {
  try {
    const data1 = await fs.promises.readFile('file1.txt', 'utf-8');
    const data2 = await fs.promises.readFile('file2.txt', 'utf-8');
    const data3 = await fs.promises.readFile('file3.txt', 'utf-8');
    console.log(data1, data2, data3);
  } catch (error) {
    console.error('Failed to read files:', error);
  }
}
```

**Pitfall 2: Unhandled Promise Rejections**
```typescript
// ❌ Bad: No error handling
async function fetchData() {
  const response = await fetch('https://api.example.com/data');
  return response.json();
}

// ✅ Good: Explicit error handling
async function fetchData() {
  try {
    const response = await fetch('https://api.example.com/data');
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    return await response.json();
  } catch (error) {
    console.error('Failed to fetch data:', error);
    throw error; // Re-throw or return default value
  }
}

// Global handler as safety net
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection:', reason);
  // Log to monitoring service
});
```

**Pitfall 3: Blocking the Event Loop**
```typescript
// ❌ Bad: Synchronous CPU-intensive work blocks event loop
function processLargeArray(items: any[]) {
  const result = items.map(item => {
    // Expensive computation
    for (let i = 0; i < 1000000; i++) {
      Math.sqrt(item * i);
    }
    return item;
  });
  return result;
}

// ✅ Good: Use worker threads for CPU-heavy tasks
import { Worker } from 'worker_threads';

function processLargeArrayAsync(items: any[]): Promise<any[]> {
  return new Promise((resolve, reject) => {
    const worker = new Worker('./worker.js', {
      workerData: items
    });
    worker.on('message', resolve);
    worker.on('error', reject);
  });
}
```

**Recovery commands:**

```bash
# Corrupted node_modules
rm -rf node_modules package-lock.json
npm install

# Conflicting peer dependencies
npm install --legacy-peer-deps
# Or with npm 7+:
npm config set legacy-peer-deps true

# Clear npm cache
npm cache clean --force

# Reset to clean state
git clean -fdx
npm ci

# Find which package uses a dependency
npm ls <package-name>

# Update all dependencies (cautiously)
npm update
# Or use npm-check-updates:
npx npm-check-updates -u
npm install
```

---

This primer provides a foundation for productive Node.js development. The ecosystem evolves rapidly—stay current with LTS releases, security advisories, and community best practices. Focus on async patterns, embrace TypeScript for larger projects, and lean on the npm ecosystem while being mindful of security and dependency management.
