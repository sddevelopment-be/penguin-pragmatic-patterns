# Agent Bootstrap (Repository Local)

Version: 1.0.0  
Last updated: 2026-02-12

This repository consumes the doctrine stack from an upstream source and keeps repository-specific overrides in `.doctrine-config/`.

## Upstream Doctrine Source

- Canonical stack path: `/media/stijnd/DATA/development/projects/publications/quickstart_agent-augmented-development/doctrine`
- Local reference path: `.github/agents` (symlink to upstream doctrine)

## Initialization Order

1. Load `.github/agents/guidelines/bootstrap.md`
2. Load `.github/agents/guidelines/general_guidelines.md`
3. Load `.github/agents/guidelines/operational_guidelines.md`
4. Load doctrine layers from `.github/agents/` in prescribed order
5. Load repository overrides from `.doctrine-config/` after core doctrine

## Local Overrides

- Primary local guideline file: `.doctrine-config/repository-guidelines.md`
- Local overrides are additive and must not override General or Operational guidelines.

## Required Runtime Notes

- Create or update progress/work logs in `work/` as required by active directives.
- Use `/validate-alignment` before high-impact operations.
