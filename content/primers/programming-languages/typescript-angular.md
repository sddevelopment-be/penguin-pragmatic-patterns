+++
title = "TypeScript & Angular Primer"
subtitle = "Typed JavaScript at scale, with a batteries-included framework and reactive state via RxJS."
aliases = ["typescript-primer", "angular-primer", "programming-languages/typescript-angular"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2026-04-26T12:00:00+00:00"
tags = ["typescript", "angular", "rxjs", "frontend", "primer", "reference", "intermediate"]
summary = """
TypeScript adds static types to JavaScript through structural (duck) typing and full type erasure
at runtime — zero overhead, gradual adoption. Angular is an opinionated, batteries-included
framework for building web applications: it brings dependency injection, declarative templates,
a component model, and a CLI that handles build, test, and scaffold concerns. RxJS, Angular's
reactive primitive, models asynchronous data streams with composable operators. Signals, added
in Angular 16+, handle synchronous reactive state with a simpler mental model than Observables.
"""
further_exploration = [
    { type = "raw", author = "Microsoft", year = "2024", title = "TypeScript Handbook", site = "typescriptlang.org", link = "https://www.typescriptlang.org/docs/handbook/intro.html" },
    { type = "raw", author = "Google", year = "2024", title = "Angular Documentation", site = "angular.dev", link = "https://angular.dev/" },
    { type = "raw", author = "ReactiveX", year = "2024", title = "RxJS Documentation", site = "rxjs.dev", link = "https://rxjs.dev/" },
    { type = "raw", author = "NgRx Team", year = "2024", title = "NgRx Documentation", site = "ngrx.io", link = "https://ngrx.io/" },
    { type = "raw", author = "Microsoft", year = "2024", title = "TSConfig Reference", site = "typescriptlang.org", link = "https://www.typescriptlang.org/tsconfig" },
    { type = "raw", author = "Google", year = "2024", title = "Angular Style Guide", site = "angular.dev", link = "https://angular.dev/style-guide" },
    { type = "raw", author = "Google Chrome Team", year = "2024", title = "Lighthouse Documentation", site = "developer.chrome.com", link = "https://developer.chrome.com/docs/lighthouse/" },
    { type = "raw", author = "Microsoft", year = "2024", title = "Playwright Documentation", site = "playwright.dev", link = "https://playwright.dev/" }
]
+++

## 1. Language Philosophy

> "TypeScript is a static type checker for JavaScript programs — a tool that runs before your code executes." — *TypeScript Handbook*

TypeScript extends JavaScript with optional static types. Three principles define its design:

**Structural (duck) typing.** TypeScript checks shapes, not declarations. If an object has the right properties and methods, it satisfies an interface — no explicit `implements` required. This mirrors how JavaScript actually works at runtime and makes TypeScript fit naturally into existing JS ecosystems.

```ts
interface HasName { name: string; }

function greet(thing: HasName) {
  return `Hello, ${thing.name}`;
}

// Works — the object's shape matches, no explicit declaration needed
greet({ name: 'Stijn', age: 33 });
```

**Gradual adoption.** All valid JavaScript is valid TypeScript. A `.js` file can be renamed `.ts` immediately; types are then added incrementally. Teams set the strictness level that suits their codebase through `tsconfig.json`.

**Type erasure.** TypeScript types exist only at compile time. The compiler emits plain JavaScript — types add zero runtime overhead, no reflection, no runtime type tags.

Angular is built in and for TypeScript. It uses TypeScript decorators (`@Component`, `@Injectable`) to attach metadata to classes, and relies on strict type checking to catch template and dependency injection errors at build time rather than at runtime.

---

## 2. Syntax and Naming Conventions

### Core Type Annotations

```ts
// Primitives
const title: string = 'Angular Primer';
const count: number = 42;
const active: boolean = true;

// Arrays and tuples
const tags: string[] = ['angular', 'rxjs'];
const pair: [string, number] = ['score', 99];

// Union types
type Status = 'pending' | 'active' | 'closed';
let state: Status = 'active';

// Optional and nullable
function find(id: number): Task | null { /* ... */ return null; }
function label(text?: string): string { return text ?? 'Untitled'; }
```

### Interfaces vs Type Aliases

```ts
// Interface — preferred for object shapes and class contracts
// Supports declaration merging: two interface blocks with the same name merge
interface Task {
  id: number;
  title: string;
  completed: boolean;
}

// Type alias — preferred for unions, tuples, and derived types
type TaskId = number;
type TaskOrNull = Task | null;
type TaskPreview = Pick<Task, 'id' | 'title'>;
```

### Generics

```ts
// Generic function
function first<T>(items: T[]): T | undefined {
  return items[0];
}

// Generic class
class Repository<T extends { id: number }> {
  private store = new Map<number, T>();

  save(entity: T): void { this.store.set(entity.id, entity); }
  findById(id: number): T | undefined { return this.store.get(id); }
}
```

### Utility Types

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Utility type | Produces | Common use |
|---|---|---|
| `Partial<T>` | All properties optional | PATCH request payloads |
| `Readonly<T>` | All properties read-only | NgRx state slices |
| `Pick<T, K>` | Only the listed keys | View models, projections |
| `Omit<T, K>` | All keys except listed | Creation DTOs (omit `id`) |
| `Record<K, T>` | Object keyed by K | Lookup maps |
| `ReturnType<F>` | Return type of function F | Deriving types from factory functions |
{{< /bootstrap-table >}}

### Angular Naming Conventions

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Element | Convention | Example |
|---|---|---|
| Classes | `PascalCase` | `TaskService`, `AppComponent` |
| Variables / properties | `camelCase` | `taskList`, `isLoading` |
| Constants | `UPPER_SNAKE_CASE` | `MAX_RETRIES` |
| Files | `kebab-case.type.ts` | `task-list.component.ts` |
| Component selector | `kebab-case` with prefix | `app-task-list` |
| Signal | camelCase (no `$` suffix) | `tasks`, `isLoading` |
| Observable | camelCase with `$` suffix | `tasks$`, `selectedId$` |
{{< /bootstrap-table >}}

---

## 3. Version and Dependency Management

Angular requires a specific **Node.js LTS version**. Always check the Angular compatibility matrix before upgrading either Angular or Node.

```bash
# Check current versions
node --version        # should match Angular's supported range
npm --version

# Use nvm to manage multiple Node versions
nvm install --lts
nvm use --lts
nvm alias default node   # set as default for new shells
```

Angular's major version releases align with Node.js LTS releases. As of Angular 17+, Node 18.x or 20.x is required. Each major Angular release is supported for approximately 18 months (6 months active + 12 months LTS).

```bash
# Angular CLI — install globally once, then use the local version per project
npm install -g @angular/cli

# Create a new project (pins the CLI version in the project's devDependencies)
ng new my-app --style=scss --routing

# Upgrade Angular in a project
ng update @angular/core @angular/cli
```

The `package.json` `peerDependencies` on `@angular/*` packages must all use the same major version — mixing major versions causes runtime errors.

---

## 4. Build and Packaging Tooling

### Angular CLI

The Angular CLI (`ng`) manages the full project lifecycle:

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Command | Purpose |
|---|---|
| `ng new <name>` | Scaffold a new application |
| `ng serve` | Development server with live reload |
| `ng build` | Production build (output: `dist/`) |
| `ng build --configuration=production` | Optimised build with tree-shaking and minification |
| `ng generate component <name>` | Scaffold component files |
| `ng generate service <name>` | Scaffold a service |
| `ng test` | Run unit tests with Karma/Jasmine |
| `ng e2e` | Run end-to-end tests |
| `ng update` | Migrate Angular and dependencies to latest |
| `ng lint` | Run ESLint on the project |
{{< /bootstrap-table >}}

Angular 17+ uses **esbuild** as the default bundler (replacing webpack), which significantly speeds up builds and enables native ESM output.

### tsconfig.json Key Settings

```json
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "ES2022",
    "moduleResolution": "bundler",
    "strict": true,
    "useDefineForClassFields": false,
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true,
    "paths": {
      "@core/*": ["src/app/core/*"],
      "@shared/*": ["src/app/shared/*"]
    }
  }
}
```

**Key flags:**

- `strict: true` — enables `noImplicitAny`, `strictNullChecks`, `strictPropertyInitialization`, and related checks. Required for Angular projects.
- `useDefineForClassFields: false` — required for Angular decorators to work correctly with TypeScript 4.3+.
- `experimentalDecorators: true` — enables the `@Component`, `@Injectable`, etc. decorator syntax.
- `paths` — enables `@core/` and `@shared/` import aliases, avoiding brittle relative paths (`../../..`).

### Project Layout

```
my-app/
├── src/
│   ├── app/
│   │   ├── core/           # singleton services, guards, interceptors
│   │   ├── shared/         # shared components, pipes, directives
│   │   ├── features/       # feature modules or standalone route groups
│   │   │   └── tasks/
│   │   │       ├── task-list.component.ts
│   │   │       ├── task-list.component.html
│   │   │       ├── task-list.component.scss
│   │   │       └── task.service.ts
│   │   └── app.component.ts
│   ├── styles.scss         # global styles
│   └── main.ts             # bootstrap entry point
├── angular.json            # CLI configuration
├── tsconfig.json
└── package.json
```

---

## 5. Testing Frameworks

### Unit Testing with Jasmine and Karma

Angular CLI projects ship with **Jasmine** (test framework) and **Karma** (test runner) by default. Angular's `TestBed` sets up a minimal Angular environment for each test:

```ts
// task.service.spec.ts
import { TestBed } from '@angular/core/testing';
import { provideHttpClient } from '@angular/common/http';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { TaskService } from './task.service';
import { Task } from './task.model';

describe('TaskService', () => {
  let service: TaskService;
  let httpMock: HttpTestingController;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        TaskService,
        provideHttpClient(),
        provideHttpClientTesting(),
      ],
    });
    service = TestBed.inject(TaskService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => httpMock.verify());  // assert no outstanding requests

  it('fetches tasks from the API', () => {
    const mockTasks: Task[] = [{ id: 1, title: 'Write tests', completed: false }];

    service.getAll().subscribe(tasks => {
      expect(tasks).toEqual(mockTasks);
    });

    httpMock.expectOne('/api/tasks').flush(mockTasks);
  });
});
```

**Testing a standalone component:**

```ts
// task-list.component.spec.ts
import { ComponentFixture, TestBed } from '@angular/core/testing';
import { TaskListComponent } from './task-list.component';
import { TaskService } from './task.service';
import { of } from 'rxjs';

describe('TaskListComponent', () => {
  let fixture: ComponentFixture<TaskListComponent>;
  let taskService: jasmine.SpyObj<TaskService>;

  beforeEach(async () => {
    taskService = jasmine.createSpyObj('TaskService', ['getAll']);
    taskService.getAll.and.returnValue(of([]));

    await TestBed.configureTestingModule({
      imports: [TaskListComponent],   // standalone — import directly
      providers: [{ provide: TaskService, useValue: taskService }],
    }).compileComponents();

    fixture = TestBed.createComponent(TaskListComponent);
    fixture.detectChanges();
  });

  it('renders the component', () => {
    expect(fixture.nativeElement).toBeTruthy();
  });
});
```

### Migrating to Jest

Jest offers faster test execution, better snapshot support, and no browser window requirement. The community package `jest-preset-angular` is the stable migration path:

```bash
npm install --save-dev jest jest-preset-angular @types/jest
```

```js
// jest.config.js
module.exports = {
  preset: 'jest-preset-angular',
  setupFilesAfterFramework: ['<rootDir>/setup-jest.ts'],
};
```

### End-to-End Testing with Playwright

```bash
npm init playwright@latest
```

```ts
// e2e/task-list.spec.ts
import { test, expect } from '@playwright/test';

test('shows the task list', async ({ page }) => {
  await page.goto('/tasks');
  await expect(page.getByRole('heading', { name: 'My Tasks' })).toBeVisible();
  await expect(page.getByRole('list')).toBeVisible();
});

test('adds a task', async ({ page }) => {
  await page.goto('/tasks');
  await page.getByRole('textbox', { name: 'New task' }).fill('Write primer');
  await page.getByRole('button', { name: 'Add' }).click();
  await expect(page.getByText('Write primer')).toBeVisible();
});
```

---

## 6. Programming Idioms

### 6.1 Object-Oriented Idioms — Components and Services

Angular's architecture is built on classes. Components are the UI unit of composition; services encapsulate shared logic and state:

```ts
// task.model.ts
export interface Task {
  id: number;
  title: string;
  completed: boolean;
  dueAt?: Date;
}

export type CreateTaskDto = Omit<Task, 'id'>;
```

```ts
// task.service.ts
import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Task, CreateTaskDto } from './task.model';

@Injectable({ providedIn: 'root' })
export class TaskService {
  private http = inject(HttpClient);
  private readonly baseUrl = '/api/tasks';

  getAll(): Observable<Task[]> {
    return this.http.get<Task[]>(this.baseUrl);
  }

  create(dto: CreateTaskDto): Observable<Task> {
    return this.http.post<Task>(this.baseUrl, dto);
  }

  complete(id: number): Observable<Task> {
    return this.http.patch<Task>(`${this.baseUrl}/${id}`, { completed: true });
  }
}
```

**Smart / Dumb component split:**

- **Smart (container) components** inject services, subscribe to streams, manage state. Use default change detection.
- **Dumb (presentational) components** accept `@Input()`, emit `@Output()`, contain no service dependencies. Use `ChangeDetectionStrategy.OnPush`.

```ts
// task-list.component.ts — smart component
@Component({
  selector: 'app-task-list',
  standalone: true,
  imports: [TaskCardComponent, AsyncPipe],
  template: `
    <app-task-card
      *ngFor="let task of tasks$ | async"
      [task]="task"
      (completed)="onComplete($event)" />
  `,
})
export class TaskListComponent {
  private taskService = inject(TaskService);
  tasks$ = this.taskService.getAll();

  onComplete(taskId: number): void {
    this.taskService.complete(taskId).subscribe();
  }
}
```

```ts
// task-card.component.ts — dumb component
@Component({
  selector: 'app-task-card',
  standalone: true,
  changeDetection: ChangeDetectionStrategy.OnPush,
  template: `
    <article class="card" [class.card--done]="task.completed">
      <h3 class="card__title">{{ task.title }}</h3>
      <button (click)="completed.emit(task.id)">Complete</button>
    </article>
  `,
})
export class TaskCardComponent {
  @Input({ required: true }) task!: Task;
  @Output() completed = new EventEmitter<number>();
}
```

### 6.2 Functional Programming Idioms — Pure Pipes and Transformations

Angular's **pipe** system applies pure functions in templates. Custom pipes are stateless transformers:

```ts
// task-count.pipe.ts
import { Pipe, PipeTransform } from '@angular/core';
import { Task } from './task.model';

@Pipe({ name: 'taskCount', standalone: true, pure: true })
export class TaskCountPipe implements PipeTransform {
  transform(tasks: Task[], filter: 'all' | 'pending' | 'done' = 'all'): number {
    if (filter === 'pending') return tasks.filter(t => !t.completed).length;
    if (filter === 'done')    return tasks.filter(t => t.completed).length;
    return tasks.length;
  }
}
```

```html
<!-- template usage -->
<p>{{ tasks | taskCount:'pending' }} tasks remaining</p>
```

Prefer pure functions in services for business logic too — they are easy to test and compose:

```ts
// task.utils.ts
export const isPending = (task: Task): boolean => !task.completed;
export const isOverdue = (task: Task): boolean =>
  isPending(task) && !!task.dueAt && task.dueAt < new Date();

export const sortByDue = (tasks: Task[]): Task[] =>
  [...tasks].sort((a, b) =>
    (a.dueAt?.getTime() ?? Infinity) - (b.dueAt?.getTime() ?? Infinity)
  );
```

### 6.3 Reactive Idioms — RxJS for Async State

RxJS models asynchronous data streams as **Observables** — sequences of values over time. Key concepts:

**Subjects** are both Observable and Observer — they can emit values and be subscribed to:

```ts
// task-filter.service.ts
import { Injectable } from '@angular/core';
import { BehaviorSubject, combineLatest, map } from 'rxjs';
import { Task } from './task.model';
import { TaskService } from './task.service';

@Injectable({ providedIn: 'root' })
export class TaskFilterService {
  private taskService = inject(TaskService);

  // BehaviorSubject holds current value; new subscribers get it immediately
  private readonly filterSubject = new BehaviorSubject<'all' | 'pending' | 'done'>('all');

  // Expose as Observable only — external code cannot emit to this stream
  readonly filter$ = this.filterSubject.asObservable();

  setFilter(value: 'all' | 'pending' | 'done'): void {
    this.filterSubject.next(value);
  }

  readonly filteredTasks$ = combineLatest([
    this.taskService.getAll(),
    this.filter$,
  ]).pipe(
    map(([tasks, filter]) => {
      if (filter === 'pending') return tasks.filter(t => !t.completed);
      if (filter === 'done')    return tasks.filter(t => t.completed);
      return tasks;
    }),
  );
}
```

**Key operators:**

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Operator | Behaviour | Common use |
|---|---|---|
| `map` | Transform each emitted value | Shape API responses |
| `filter` | Drop values that fail a predicate | Ignore null/undefined |
| `switchMap` | Cancel previous inner Observable on new emission | Search-as-you-type (HTTP calls) |
| `mergeMap` | Run all inner Observables concurrently | Fire-and-forget parallel requests |
| `concatMap` | Queue inner Observables; run one at a time | Ordered sequential operations |
| `catchError` | Handle errors without terminating the stream | API error recovery |
| `debounceTime` | Delay emission until quiet for N ms | Input throttling |
| `combineLatest` | Emit when *all* source streams emit; use latest from each | Combining filter + data streams |
| `takeUntilDestroyed` | Complete when the Angular component is destroyed | Subscription cleanup (Angular 16+) |
{{< /bootstrap-table >}}

**Subscription cleanup with `takeUntilDestroyed` (Angular 16+):**

```ts
import { takeUntilDestroyed } from '@angular/core/rxjs-interop';

@Component({ ... })
export class SearchComponent {
  private destroyRef = inject(DestroyRef);
  private taskService = inject(TaskService);

  readonly searchControl = new FormControl('');

  ngOnInit(): void {
    this.searchControl.valueChanges.pipe(
      debounceTime(300),
      switchMap(query => this.taskService.search(query ?? '')),
      takeUntilDestroyed(this.destroyRef),   // auto-unsubscribe on destroy
    ).subscribe(results => this.results.set(results));
  }
}
```

**Prefer the `async` pipe in templates** over manual `subscribe()` in components — it auto-subscribes on init and unsubscribes on destroy:

```html
<!-- Template: zero manual subscription management -->
@if (filteredTasks$ | async; as tasks) {
  <app-task-card *ngFor="let task of tasks" [task]="task" />
}
```

### 6.4 Signals — Synchronous Reactive State (Angular 16+)

Signals are Angular's new synchronous reactive primitive. Use them for component-level state that doesn't involve async streams:

```ts
import { Component, signal, computed, effect } from '@angular/core';

@Component({
  selector: 'app-counter',
  standalone: true,
  template: `
    <p>Count: {{ count() }}</p>
    <p>Doubled: {{ doubled() }}</p>
    <button (click)="increment()">+</button>
  `,
})
export class CounterComponent {
  readonly count = signal(0);
  readonly doubled = computed(() => this.count() * 2);   // auto-updates when count changes

  increment(): void {
    this.count.update(c => c + 1);
  }
}
```

**Bridge between Signals and RxJS:**

```ts
import { toSignal, toObservable } from '@angular/core/rxjs-interop';

// Convert Observable → Signal (subscribes automatically, cleans up on destroy)
readonly tasks = toSignal(this.taskService.getAll(), { initialValue: [] });

// Convert Signal → Observable (for use with RxJS operators)
readonly filter$ = toObservable(this.filterSignal);
```

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| | Signals | RxJS Observables |
|---|---|---|
| **Value** | Always holds current value | Emits over time; no inherent "current" |
| **Reading** | Synchronous: `count()` | Asynchronous: `.subscribe()` or `async` pipe |
| **Best for** | Component state, derived values, UI counters | HTTP calls, WebSockets, event streams, complex async composition |
| **Change detection** | Granular — only re-renders what reads the signal | Zone.js or `async` pipe triggers full CD cycle |
{{< /bootstrap-table >}}

---

## 7. Workspace Bootstrap

Setting up a new Angular workspace from scratch:

1. **Install Node.js LTS** via [nvm](https://github.com/nvm-sh/nvm):
   ```bash
   nvm install --lts && nvm use --lts
   ```

2. **Install Angular CLI globally:**
   ```bash
   npm install -g @angular/cli
   ng version
   ```

3. **Scaffold the project:**
   ```bash
   ng new my-app \
     --style=scss \
     --routing \
     --strict
   cd my-app
   ```
   `--strict` enables strict TypeScript mode and strict Angular template checking from the start.

4. **Configure path aliases** in `tsconfig.json`:
   ```json
   "paths": {
     "@core/*":   ["src/app/core/*"],
     "@shared/*": ["src/app/shared/*"],
     "@features/*": ["src/app/features/*"]
   }
   ```

5. **Install and configure ESLint:**
   ```bash
   ng add @angular-eslint/schematics
   ```

6. **Wire pre-commit hooks:**
   ```bash
   npm install --save-dev husky lint-staged
   npx husky init
   ```
   ```json
   // package.json
   "lint-staged": {
     "*.ts": ["eslint --fix", "prettier --write"],
     "*.scss": ["stylelint --fix"]
   }
   ```

7. **Add environment files** for build-time configuration:
   ```bash
   ng generate environments
   # Creates src/environments/environment.ts and environment.development.ts
   ```

8. **Verify the setup runs:**
   ```bash
   ng serve         # http://localhost:4200
   ng test          # unit tests
   ng build         # production build
   ```

---

## 8. Quickstart Setup (Unix)

Minimal repeatable steps for macOS, Ubuntu, and most Linux distributions.

1. **Install nvm:**
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
   # Restart shell, then:
   nvm install --lts
   nvm use --lts
   ```

2. **Install Angular CLI:**
   ```bash
   npm install -g @angular/cli
   ng version
   ```

3. **Create a project:**
   ```bash
   ng new todo-app --style=scss --routing --strict
   cd todo-app
   ```

4. **Start the dev server:**
   ```bash
   ng serve
   # Open http://localhost:4200
   ```

5. **Run tests:**
   ```bash
   ng test          # unit tests (Karma + Jasmine)
   ng build         # production build
   ```

6. **Optional VS Code setup** — install:
   - [Angular Language Service](https://marketplace.visualstudio.com/items?itemName=Angular.ng-template) — template type checking and autocompletion
   - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
   - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
   - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) — inline compiler errors

---

## 9. First-Time Verification Checklist

{{< bootstrap-table "bootstrap-table table-striped table-responsive " >}}
| Check | Command | Expected |
|---|---|---|
| Node version | `node -v` | LTS release matching Angular compatibility matrix |
| Angular CLI | `ng version` | Matches project's `@angular/core` major version |
| Dev server | `ng serve` | App loads at `http://localhost:4200` with no console errors |
| Unit tests | `ng test --watch=false` | All specs pass; no "0 specs" output |
| Production build | `ng build --configuration=production` | `dist/` created; no TypeScript errors |
| Lint | `ng lint` | No lint errors |
| Template type check | `ng build` (implicit) | No template type errors |
{{< /bootstrap-table >}}

**Troubleshooting notes:**

- If `ng serve` fails with `ENOSPC`, increase the file-watcher limit: `echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p`
- If decorators fail to compile, verify `useDefineForClassFields: false` and `experimentalDecorators: true` are both set in `tsconfig.json`
- `NG0200` (circular dependency in DI): a service is injecting itself or a circular chain exists — refactor shared logic into a third service
- If `async` pipe data is `null` on first render, use `@if (data$ | async; as data)` to guard the template

---

## 10. Appendix

### Core References

- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html) — gradual adoption, types, interfaces, generics
- [TypeScript TSConfig Reference](https://www.typescriptlang.org/tsconfig) — every compiler option explained
- [Angular Documentation](https://angular.dev/) — official guide covering components, directives, services, routing, signals
- [Angular Style Guide](https://angular.dev/style-guide) — naming, file structure, and architectural conventions
- [RxJS Documentation](https://rxjs.dev/) — Observable, Subject, operator reference
- [NgRx Documentation](https://ngrx.io/) — Redux-pattern state management for larger applications

### Practice Accelerators

- Build the **task management app** layer by layer: model → service with `BehaviorSubject` → smart list component → dumb card component → search with `switchMap`. Twenty focused minutes beats reading another article.
- Enable `"strictTemplates": true` in `tsconfig.app.json` if not already set — it catches template errors that `strict` alone misses.
- Use `ng generate` for every new file — it creates the spec file automatically and follows naming conventions.
- Read operator marble diagrams at [rxmarbles.com](https://rxmarbles.com/) to build intuition for `switchMap` vs `mergeMap` vs `concatMap`.

### Recovery Moves

- **Zone detection not firing:** If a third-party library triggers changes outside Angular's zone, wrap the callback: `this.ngZone.run(() => { /* change */ })`.
- **Memory leak from forgotten subscription:** Add `takeUntilDestroyed(this.destroyRef)` to every long-lived `pipe()`. The pattern is also a useful code review signal.
- **ExpressionChangedAfterItHasBeenCheckedError:** Caused by changing state after change detection runs. Move the change to `ngAfterViewInit` + `setTimeout(0)` as a last resort, but prefer restructuring the data flow.
- **Slow change detection:** Add `ChangeDetectionStrategy.OnPush` to all presentational components and profile with Angular DevTools (Chrome extension).

### Editor and Tooling Profiles

- **VS Code:** Angular Language Service for template intellisense; ESLint + Prettier for linting/formatting; Vitest Runner or Jasmine Test Explorer for test feedback in the sidebar.
- **JetBrains (WebStorm / IDEA):** Built-in Angular support with component navigation, DI resolution, and template completion; configure ESLint and Prettier via Settings → Languages & Frameworks → JavaScript.
- **Angular DevTools (Chrome extension):** Inspect component tree, change detection cycles, and dependency injection graph at runtime — essential for debugging performance.
