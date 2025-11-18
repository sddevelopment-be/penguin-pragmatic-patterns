# Spellcheck TODO — 2025-11-11

## Latest CSpell run

- Command: `cd validation && npm run lint:spell | tee reports/cspell-latest.log`
- Evidence: `validation/reports/cspell-latest.log`
- Findings: 570 total hits across 343 unique tokens after switching to Oxford en-GB defaults and introducing the `proper-names` dictionary.

## Common error clusters & handling plan

| Cluster                                     | Examples (count)                                                                                              | Sample location(s)                                                              | Planned handling                                                                                                                                            |
|---------------------------------------------|---------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| British vs US spelling drift                | `behavior` (9), `judgment` (8), `uptick` (1)                                                                  | `content/en/about.md`, `content/en/books/**`                                    | With en-GB/Oxford enforced, update markdown to British spellings (`behaviour`, `judgement`, `up-tick`) or consciously choose a dialect before whitelisting. |
| British spelling variants (already correct) | `organisational`, `fulfilment`, `analyse`, `prioritise`                                                       | Multiple concept articles                                                       | Keep UK spellings; add any remaining variants to the `words` list once duplicates (`organisation` vs `organisations`) are reconciled.                       |
| Domain-specific tooling (Perl/Python)       | `perlbrew`, `cpanm`, `cpanfile`, `perlcritic`, `pipx`, `pytest`, `pyenv`, `venv` (≥5 each)                    | `content/en/primers/perl.md:62-449`, `content/en/primers/python.md:120-340`     | Move these to a dedicated `validation/dictionaries/tooling-terms.txt` dictionary so the root config stays clean.                                            |
| Productivity / framework acronyms           | `Pomodoro`, `BLUF`, `Delegative`, `SAPA`                                                                      | `content/en/primers/pomodoro.md`, `content/en/primers/decision_journaling.md`   | Capture uppercase/lowercase variants in an `acronyms` dictionary; keep only true words in the base list.                                                    |
| Proper names                                | Centralised in `validation/dictionaries/proper-names.txt` (e.g., Dejongh, Snowden, Maslow, Goodhart, Tuckman) | Acknowledgements throughout the site                                            | Continue adding people here instead of the `words` array for easier maintenance.                                                                            |
| Pop-culture / narrative nouns               | `homeworld`, `Tatooine`, `Mori`, `Viktor`                                                                     | `content/en/primers/star_wars.md`, `content/en/books/man-search-for-meaning.md` | Consider a `narratives` dictionary for fictional universes so these don’t mix with real names.                                                              |
| Real typos                                  | `Folowwing` (`content/en/about.md:166`), `compontents` (`content/en/concepts/ubiquitous_language.md:31`)      | Various concept pages                                                           | Fix source markdown; do not whitelist. Track corrections via changelog.                                                                                     |
| Misc. specialised vocabulary                | `artefacts`, `organisation`, `analysis` variants                                                              | Multiple concept articles                                                       | After standardising spelling, whitelist remaining specialist lexicon (e.g., `artefact`) in the general `words`.                                             |

## Follow-up tasks

1. **Dictionary curation** — Keep `validation/cspell.config.yaml` slim by pushing names into `validation/dictionaries/proper-names.txt` (done) and introducing `tooling-terms.txt`, `acronyms.txt`, and potentially `narratives.txt`.
2. **Add domain dictionaries** — Wire up the future tooling/narrative dictionaries via `dictionaryDefinitions` so CLI names, fictional nouns, and acronyms are handled consistently.
3. **Content fixes** — Convert US spellings (`behavior`, `judgment`) to British forms and correct obvious typos such as `Folowwing`, `compontents`.
4. **Automation** — Keep parsing `validation/reports/cspell-latest.log` (current log uses Oxford en-GB) to refresh this file after each run, ensuring regressions surface quickly.
