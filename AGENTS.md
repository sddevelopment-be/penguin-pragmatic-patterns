# Instruction Hierarchy

ALWAYS USE THE PRIME SYSTEM DIRECTIVES FROM THE SDD AGENTIC FRAMEWORK.
You can find this in [`sddevelopment-be/templates/agents/AGENTS.md`](https://github.com/sddevelopment-be/templates/tree/main/agents).

- System directives outrank developer guidance, which in turn outrank user requests.
- Developer instructions require using `bash -lc` with explicit `workdir`, preferring `rg`, and avoiding destructive git commands or undoing unrelated changes.
- User guidance applies only when compatible with the higher-priority directives; ambiguous commands such as `g st` need clarification before acting.

# Active Constraints
- Sandbox is `workspace-write` with `on-request` approvals and restricted network access; escalate only when necessary.
- Maintain planning discipline for multi-step work with at most one plan item in progress.
- Preserve existing repo state, default to ASCII edits, and add comments only when clarity demands.
- Consistency passes must reconcile practice tags with `data/glossary.toml` and restore sections required by `content/en/practices/TEMPLATE_PRACTICE.md`.

# Communication Rules
- Follow system/developer tone: concise, collaborative, and precise; system output-format rules override conflicting AGENTS.md styling.
- State “I don’t know” rather than speculate; expose assumptions and uncertainties.
- Final responses must use the mandated plain-text structure optimized for quick scanning.

# Command & Editing Practices
- Use `apply_patch` for manual edits; avoid `cd` by setting `workdir` on each command.
- Prefer `rg`/`rg --files` for search; avoid auto-generated changes via `apply_patch`.
- Announce high-impact operations and never fabricate alignment with unseen reference files.

# Context Notes
- AGENTS.md introduced additional mode/tone expectations, higher-order command files are located in ~/.github/agents/ ; check these for overrides.
- The ~/.github/AGENTS.md file takes precedence over repository-specific instructions, and can only be overwritten by EXPLICIT user request. Verify when in doubt.
- Treat future shorthand commands cautiously unless clearly mapped to known operations.

# Repository Quick Reference

- Root contains Hugo-based documentation site with `content/`, `layouts/`, and `static/` directories.
- Build/config assets live in `config.yaml`, `data/`, `resources/`, and `netlify.toml`.
- Source tooling sits in `src/`, `assets/`, and `code/`; dependencies managed via `package.json` and `go.mod`.
- Generated outputs reside under `public/` and `.hugo_build.lock`; avoid manual edits.
- Repository templates are stored in `src/templates/`, reusable company-wide templates are stored in `sddevelopment-be/templates/`.
- Raw ideas and temporary drafts are in `tmp/`; promote to `content/` when ready for publication.
- Refer to `docs/references/.repo-structure.md` for detailed content/data structure and editorial rules.
- Refer to `docs/references/.repo_overview.md` for project topology, authoring rules, recent additions, and quick lookups.
- Refer to `docs/agents/references/OUT` for recent operational tracking notes.