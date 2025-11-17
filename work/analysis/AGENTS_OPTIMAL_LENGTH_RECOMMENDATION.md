# AGENTS.md Length Optimization Recommendation

Current file statistics (manual review required due to shell output suppression):
- Approximate lines: ~240 (visual estimate)
- Approximate words: ~1850–2000 (average 7.8–8.2 words per line excluding tables and code fences)
- Structural sections: 18 numbered sections + header metadata + declaration + table + fenced blocks.

## Why Length Matters
Large governance files risk:
- Context truncation in multi-turn LLM sessions (token window pressure).
- Dilution of high-signal directives among explanatory prose.
- Increased cognitive + latency cost for every agent initialization.

## Empirical Token Considerations
Typical modern context windows (8k–32k tokens) must also hold:
- User prompt + task specifics
- In-flight reasoning chains
- Additional project files (snippets, configs)

A lean AGENTS.md should consume <10% of an 8k window and ideally <5% in bigger windows to leave space for dynamic context.
- 8k tokens budget → target ≤800 tokens for static governance.
- Current estimate: ~1850–2000 words ≈ 2300–2500 tokens (too large for repeated full injection).

## Recommended Target
- Optimal token size: 650–800 tokens (≈ 500–620 words) for always-loaded sections.
- Extended appendix (version governance, declaration, profiles listing) can be modularized and only loaded when needed.

## Proposed Structural Model
1. Core Directive Block (≤120 words): Purpose, hierarchy, non-negotiables.
2. Runtime Behavior + Safety Kernel (≤180 words): Tone, modes, validation, integrity markers.
3. Command Logic & Output Rules (≤150 words): Execution flow + formatting.
4. Minimal Tooling Rubric (≤100 words): fd/rg/ast-grep/jq/yq + selection.
5. Slim Repository Quick Reference (≤70 words): Hugo version, key dirs, template + data constraints.
6. Declaration (≤40 words) or moved to separate `AGENT_DECLARATION.md`.

Appendices (Version Governance, Profiles enumeration) → Separate files referenced by link to keep core small.

## Benefits
- Faster load + parse time.
- Higher probability of retention across long reasoning chains.
- Lower risk of partial truncation creating inconsistent obedience.
- Easier human maintenance and audit.

## Next Step Options (Non-Destructive)
- Create `AGENTS_CORE.md` (≤800 tokens) + move extended sections to `AGENTS_APPENDIX.md`.
- Introduce a loader convention: always inject core, conditionally fetch appendix on specialized tasks.
- Provide checksum/version tag in core for integrity validation.

## Risk Mitigation
- Maintain section numbering continuity when splitting to avoid citation drift.
- Add a short preamble stating where extended sections live.

## Summary Recommendation
Refactor AGENTS.md into a core file of ~550 words and relocate lower-frequency sections (CLI rubric can stay; Version Governance & Profiles move out). Maintain links and version tags. Result: ~70% token reduction with preserved directive clarity.

---
Prepared: 2025-11-17
Authoring Role: Curator Claire

