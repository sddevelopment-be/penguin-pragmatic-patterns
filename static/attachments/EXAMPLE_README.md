
# Task Manager

A simple command-line task management tool written in Python.

## Features

- Add, list, and complete tasks
- Persistent storage in JSON format
- Filter by status and priority

## Installation

```bash
pip install task-manager
```

## Usage

```bash
# Add a task
task add "Write documentation"

# List all tasks
task list

# Complete a task
task complete 1

# Filter by status
task list --status pending
```

## Configuration

Create `~/.taskrc`:

```json
{
  "default_priority": "medium",
  "storage_path": "~/.tasks.json"
}
```

## Development

```bash
# Clone repository
git clone https://github.com/user/task-manager

# Install dependencies
pip install -r requirements.txt

# Run tests
pytest

# Lint code
flake8 src/
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT License — see [LICENSE](LICENSE) for details.

## References

- [Task Management Best Practices](https://example.com)
- [CLI Design Patterns](https://example.com)
