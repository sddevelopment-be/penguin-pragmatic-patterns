+++
title = "Python Primer"
subtitle = ""
author = "Stijn Dejongh"
outputs = ['html','rss', 'json']
draft = true
date = "2024-06-10T12:00:00+00:00"
tags = ["programming", "python", "primer", "beginners", "introduction"]
+++

## 1. Language Philosophy

> “There should be one — and preferably only one — obvious way to do it.” — *The Zen of Python*

Python prizes clarity over cleverness and treats readability as a social contract. Code should look like well-edited prose: explicit, orthogonal, and easy to explain to the next engineer. The language stays small on purpose so that libraries, not the core grammar, carry most complexity.

- **Human-centric design.** Features exist to keep conversations about code short—naming, indentation, and structure all reinforce collective understanding.
- **Pragmatic dynamism.** Strong introspection and runtime flexibility let you build tools quickly, but the community expects discipline when touching metaprogramming or monkey-patching.
- **Batteries included.** The standard library covers files, networking, parsing, testing, and concurrency so teams can focus on their own logic.
- **Cultural restraint.** Community norms discourage “clever” one-liners when straight code is clearer; idioms evolve from practice, not dogma.

Treat Python as a glue language with range: ideal for orchestration, data analysis, scripting, and prototyping, yet capable of long-lived services when you apply structure intentionally.


## 2. Syntax and Naming Conventions

Python syntax stays intentionally boring so that structure—not punctuation—carries the meaning. Naming is the loudest signal of intent, so teams lean on consistent cases and docstrings.

| Element               | Convention                    | Example                           |
|-----------------------|-------------------------------|-----------------------------------|
| Variables/functions   | `snake_case`                  | `total_count`, `process_invoice()`|
| Classes               | `PascalCase`                  | `InvoiceBatch`, `UserProfile`     |
| Constants             | `ALL_CAPS`                    | `MAX_RETRIES = 3`                 |
| Private members       | `_single_leading_underscore`  | `_cache`, `_reset_state()`        |
| Modules/files         | `lowercase_with_underscores`  | `billing_rules.py`                |
| Docstrings            | Triple quotes, summary first  | `"""Compute average value."""`    |
| Type hints            | Optional but encouraged       | `def greet(name: str) -> str:`    |

PEP 8 is the shared style contract. Enforce it automatically with [Black](https://black.readthedocs.io/en/stable/) for formatting and [Ruff](https://docs.astral.sh/ruff/) or `flake8` for linting. F-strings, assignment expressions, and type hints are idiomatic when they keep code expressive without obscuring intent.


## 3. Version and Dependency Management

Isolation is non-negotiable because Python versions, native extensions, and CLI tools evolve at their own pace. The modern kit keeps system Python untouched while giving each project a repeatable environment.

| Tool        | Role                                           | Why teams use it                               |
|-------------|-----------------------------------------------|------------------------------------------------|
| `pyenv`     | Install and switch between Python runtimes    | Keeps multiple 3.x versions side by side       |
| `pipx`      | Isolated global CLI installer                 | Lets you install Poetry, Ruff, etc. safely     |
| `poetry`    | Dependency manager + virtualenv + builder     | Single command surface for add/install/publish |
| `venv`      | Standard library virtual environment module   | Lightweight fallback used under the hood       |

Typical workflow:

```bash
pyenv install 3.12.3
pyenv local 3.12.3
poetry init
poetry add requests pytest
poetry shell
```

`poetry.lock` pins exact versions for reproducibility. Legacy stacks may still rely on `pip` + `requirements.txt`, so expect to read both formats. Teams expect developers to activate the right virtualenv before running tools—automate it via direnv or shell hooks if needed.


## 4. Build and Packaging Tooling

Python build tooling is layered: the language runtime stays small while packaging tools evolve independently. Modern projects lean on the `pyproject.toml` standard so that formatters, linters, and build tools share one config surface.

| Tool         | Role                                      | Notes                                           |
|--------------|-------------------------------------------|-------------------------------------------------|
| `poetry`     | Build + publish projects via PEP 517 flow | Recommended default; wraps env + deps + build   |
| `setuptools` | Legacy builder                            | Still common in older repos or corporate libs   |
| `build`      | PEP 517 reference builder                 | What `poetry build` calls under the hood        |
| `twine`      | Upload wheels/sdist to PyPI               | Used for manual or CI-driven publishing         |

Reference layout:

```
project/
├── pyproject.toml        # build + dependency metadata
├── poetry.lock
├── src/
│   └── my_package/
│       ├── __init__.py
│       ├── core.py
│       └── adapters.py
├── tests/
│   └── test_core.py
├── README.md
└── .pre-commit-config.yaml
```

CI typically runs `poetry install`, `poetry run pytest`, and `poetry build`. Publishing is either `poetry publish` (with stored credentials) or a `twine upload dist/*` step.


## 5. Testing Frameworks

- **Testing mindset:** prefer small, behavior-focused tests with descriptive names. Fixtures and parametrization replace heavy inheritance hierarchies. Integration tests stay close to the public interface; property-based approaches cover data-heavy paths.

| Tool         | Purpose                          | Why it matters                                  |
|--------------|----------------------------------|-------------------------------------------------|
| `pytest`     | De facto testing framework       | Fixtures, parametrization, rich plugin ecosystem|
| `unittest`   | Standard library xUnit           | Still used in legacy codebases                  |
| `hypothesis` | Property-based testing           | Generates inputs to challenge invariants        |
| `tox`        | Multi-environment orchestration  | Runs tests across Python versions or envs       |

Canonical `pytest` example:

```python
# tests/test_core.py
from my_package.core import compute_total

def test_compute_total_handles_empty_list():
    assert compute_total([]) == 0

def test_compute_total_sums_positive_numbers():
    assert compute_total([2, 3, 5]) == 10
```

Commands stay explicit: `poetry run pytest`, `poetry run pytest tests/integration`, or `tox -e py312`. Coverage tooling (`coverage.py`) and mutation testing (`mutmut`) are optional add-ons when the domain justifies them.


## 6. Programming Idioms

Python embraces multiple paradigms. Object-oriented code structures long-lived domains, functional helpers keep transformations honest, and imperative orchestration glues everything together. The language makes paradigm shifts cheap, so choose the style that keeps intent clearest for each layer.

### 6.1 Object-Oriented Idioms

Reach for OO when you need identity, lifecycle, or substitutable collaborators. Python favors composition over inheritance: keep behavior in focused methods, lean on `@dataclass` for value objects, and expose interfaces via `abc.ABC` or `typing.Protocol`.

- Use `dataclasses`/`attrs` for concise domain models and value semantics.
- Rely on `@property`, `__repr__`, and comparison dunder methods to keep objects debuggable.
- Prefer protocols and dependency injection over hard-coded concrete types.

```python
from dataclasses import dataclass, field
from enum import Enum, auto
from datetime import datetime

class TaskState(Enum):
    TODO = auto()
    IN_PROGRESS = auto()
    DONE = auto()

@dataclass
class Task:
    title: str
    state: TaskState = TaskState.TODO
    created_at: datetime = field(default_factory=datetime.utcnow)
    completed_at: datetime | None = None

    def start(self) -> None:
        if self.state == TaskState.TODO:
            self.state = TaskState.IN_PROGRESS

    def complete(self) -> None:
        if self.state == TaskState.IN_PROGRESS:
            self.state = TaskState.DONE
            self.completed_at = datetime.utcnow()
```

Pair these objects with thin service classes (e.g., `OrderService`, `TaskRepository`) so orchestration layers can swap implementations in tests. OO shines when you must guard invariants or coordinate multiple collaborators over time.

### 6.2 Functional Programming Idioms

Functional techniques keep business rules pure and predictable. Treat functions as values, chain them with comprehensions or iterators, and pass data through pipelines instead of mutating shared state.

- First-class functions, closures, and `functools.partial` encourage composition.
- Immutability via tuples, frozen dataclasses, or `typing.NamedTuple` keeps data trustworthy.
- `itertools`, generator expressions, and comprehensions make lazy pipelines ergonomic.

```python
from functools import partial, lru_cache
from itertools import chain

def taxed(rate: float, amount: float) -> float:
    return round(amount * (1 + rate), 2)

apply_vat = partial(taxed, 0.21)

@lru_cache(maxsize=256)
def fibonacci(n: int) -> int:
    return n if n < 2 else fibonacci(n - 1) + fibonacci(n - 2)

prices = [10, 15, 20]
gross = (apply_vat(p) for p in prices)
total = sum(v for v in gross if v > 12)
```

Reach for FP when modeling transformations (parsing, validation, scoring) or whenever you want trivial unit tests. Property-based testing (`hypothesis`) pairs naturally with this style.

### 6.3 Imperative Programming Idioms

Imperative code glues everything together: CLI commands, cron jobs, deployment scripts, and adapters that coordinate IO. Being explicit about steps and side effects keeps failure modes visible.

- Favor straight-line `for`/`while` control flow for orchestration.
- Use context managers (`with ...`) to scope resources such as files or network connections.
- Bubble up meaningful exceptions; define domain-specific ones when necessary.

```python
from pathlib import Path

def copy_nonempty(src: Path, dst: Path) -> int:
    count = 0
    with src.open() as fin, dst.open("w") as fout:
        for line in fin:
            if line.strip():
                fout.write(line)
                count += 1
    return count

try:
    written = copy_nonempty(Path("input.txt"), Path("output.txt"))
    print(f"Copied {written} lines")
except FileNotFoundError as err:
    print(f"Missing file: {err.filename}")
```

Use imperative style for orchestration layers, CLI tooling (`typer`, `click`), and task runners (`invoke`, `nox`). Keep domain logic in pure functions; call them from these command surfaces so behavior remains testable.

### 6.4 Idiom Integration

Healthy Python systems layer paradigms to keep trade-offs explicit:

1. **Domain core (FP).** Pure functions implement calculations, parsing, validation, and decisions so they remain easy to test and reason about.
2. **Application services (OO).** Small classes model stateful collaborators—repositories, gateways, schedulers—and give you seams for substitution or instrumentation.
3. **Orchestration (imperative).** Commands, CLI entry points, and adapters invoke the core, handle IO, retries, logging, and configuration.

This separation keeps logic deterministic, side effects contained, and architecture approachable for new collaborators.

## 7. Workspace Bootstrap

Stabilize the local environment before writing code so every collaborator can reproduce the same workflow.

1. **Install prerequisites.** Make sure build essentials, `git`, and SSL/zlib headers are present. On Ubuntu this is `sudo apt install build-essential curl git zlib1g-dev libssl-dev ...`; on macOS run `xcode-select --install` and `brew install openssl readline sqlite3 xz zlib tcl-tk git`.
2. **Provision runtimes.** Use `pyenv` to install and pin the project’s Python (e.g., `pyenv install 3.12.3 && pyenv local 3.12.3`). Install `pipx` so CLI tools (Poetry, Ruff, Black, Mypy) stay isolated from system Python.
3. **Initialize Poetry.** Run `poetry init -n`, then add dependencies (`poetry add typer rich` and `poetry add --group dev pytest black ruff mypy pre-commit`). Configure `poetry config virtualenvs.in-project true` if you want `.venv/` checked in gitignore.
4. **Lay out automation.** Create a `Makefile` (or `noxfile.py`) with targets like `fmt`, `lint`, `test`, and `typecheck` that shell out to `poetry run ...`. Keep orchestration declarative so CI can reuse the same commands.
5. **Wire quality gates.** Install `pre-commit` via `pipx install pre-commit`, add hooks for Ruff, Black, and Mypy, then run `pre-commit install`. CI should execute the same hooks plus `poetry run pytest`.
6. **Scaffold the TODO app (or your domain).** Organize code under `src/your_package`, tests under `tests/`, and keep CLI entry points (Typer, Click) in `src/your_package/cli.py`. Store example data/state (e.g., `tasks.json`) in `examples/` so onboarding developers can run through a realistic workflow.


## 8. Quickstart Setup (Unix)

- Installing system dependencies (build essentials, curl, git)
- Installing pyenv, pipx, and Poetry
- Configuring environment variables
- Validating installations
- Setting up and activating virtual environments
- Basic project creation commands


## 9. First-Time Verification Checklist

- Commands and expected outputs for:
    - Tool version check
    - Environment validation
    - Lint/format/type/test passes
    - Pre-commit and git setup
    - CLI execution test
- Troubleshooting notes


## 10. Appendix

- Links to official docs (language, tools, style guide)
- Recommended learning resources
- Common pitfalls and recovery commands
- Optional IDE/editor configuration (VS Code, JetBrains, etc.)
