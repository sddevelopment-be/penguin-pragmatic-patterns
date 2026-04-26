# Curator Assessment — Branch: primers/extensions

**Date:** 2026-04-26
**Agent:** Curator Claire (structural and tonal consistency specialist)
**Mode:** `/analysis-mode` — full branch review
**Scope:** All changes on `primers/extensions` ahead of `develop` (5 commits)

---

## Summary Verdict

✅ **Branch is ready for review / merge** with three open style decisions (author's call, documented below). Content quality is high, factual grounding is solid, structural compliance is close but required one mechanical correction which has been applied.

---

## Commits Reviewed

| Commit | Description | Status |
|---|---|---|
| `9f7f6bf` | Add frontend primer series (CSS/SCSS, frameworks, TS/Angular) | ✅ Merged after fix |
| `8fe3787` | Add BDD primer | ✅ Clean |
| `0fb9290` | Fix bootstrap-table shortcode trailing space | ✅ Corrective fix applied |
| `f2ee5f5` | Add Dependabot security remediation plan | ✅ Clean |
| `1dd69b3` | Security remediation: update vulnerable dependencies | ✅ Verified |

---

## Files Added / Modified

### New Content

| File | Family | Lines | Status |
|---|---|---|---|
| `content/primers/markup-and-diagramming/css-sass.md` | Markup & Diagramming | ~1040 | ✅ Published (no `draft`) |
| `content/primers/markup-and-diagramming/css-frameworks.md` | Markup & Diagramming | ~570 | ✅ Published |
| `content/primers/programming-languages/typescript-angular.md` | Programming Languages | ~795 | ✅ Published |
| `content/primers/toolchain-and-automation/bdd.md` | Toolchain & Automation | 613 | ✅ Published |
| `docs/dev/security-remediation-2026-04.md` | Developer documentation | 197 | ✅ Informational |

### Modified

| File | Change | Status |
|---|---|---|
| `validation/package.json` | sitespeed.io upgrade + overrides | ✅ Intentional |
| `validation/package-lock.json` | Updated lock file | ✅ Follows package.json |
| `validation/.npmrc` | Added os/cpu constraints | ✅ New file, intentional |
| `src/examples/patterns-base/pom.xml` | assertj-core + commons-lang3 upgrades | ✅ Verified via `mvn test` |

---

## Structural Compliance

### ✅ Passing

| Check | Detail |
|---|---|
| Front matter completeness | All four primers have `title`, `subtitle`, `aliases`, `author`, `outputs`, `date`, `tags`, `summary`, `further_exploration` |
| Section numbering follows family template | Programming Language: 10 sections; Markup: 8-9 sections; Toolchain: 6 sections |
| `further_exploration` TOML format | Consistent `{ type, author, year, title, site, link }` across all four |
| No `draft = true` flag | Consistent with published peers (`python.md`, `markdown.md`) |
| Cross-references all resolve | 7 `{{< ref ... >}}` targets verified on disk — all exist |
| `bootstrap-table` shortcode class | Fixed: now uniformly `"bootstrap-table table-striped table-responsive "` across 29 tables |
| Content grounding | Sources cited: MDN, sass-lang.com, sass-guidelin.es (fetched), cssguidelin.es (fetched), angular.dev, typescriptlang.org, rxjs.dev, cucumber.io (fetched), serenity-bdd.github.io (fetched), selenium.dev (fetched) |
| Authoritative quote at section 1 | BDD: Brooks. CSS/SCSS: Sass Guidelines. TypeScript: Handbook. CSS Frameworks: no quote (acceptable — frameworks comparison is descriptive, not philosophical) |
| Consistent tone | Calm, precise, practical. No hype. Limitations acknowledged alongside strengths |

### ⚠️ Open Style Decisions (Author's Call)

These are not errors. Each represents a deliberate deviation from established primers that may be intentional or may warrant normalisation.

**Decision 1 — Missing `image` field in markup-and-diagramming primers**

`css-sass.md` and `css-frameworks.md` are missing the `image` field. Established primers in the same family (`markdown.md`, `plantuml.md`) include `image = "primers/..."`. The toolchain and programming-language families do not use this field. Options:
- Add placeholder `image` entries once logo assets exist
- Accept the gap (consistent with toolchain/programming-language peers rather than markup peers)
- Backfill existing markup primers to remove `image` requirement (breaking)

*Recommendation:* Add image entries when logo assets are created. Low priority.

**Decision 2 — Subtitle trailing periods**

All four new primers end subtitles with a period. Established `markdown.md` does not. `python.md` has a period because its subtitle is a Zen of Python quote.

- New standard (with period): `"From shared examples to executable specifications and living documentation."`
- Old standard (no period): `"Lightweight markup for readable, version-controllable documentation"`

*Recommendation:* Pick one convention and apply globally in a single consistency pass. The period form reads more complete as a sentence.

**Decision 3 — `css-sass.md` tag overlap with `css-frameworks.md`**

`css-sass.md` includes `tailwind` and `bootstrap` in its tags. These terms are topically owned by `css-frameworks.md`. Retaining them creates duplicate search hits. The css-sass primer section 6 is now only a 6-line cross-reference stub.

*Recommendation:* Remove `tailwind` and `bootstrap` from `css-sass.md` tags. The `frontend` and `markup` tags are sufficient context.

---

## Content Quality Assessment

### css-sass.md — CSS & SCSS Primer

**Strengths:**
- Cascade/specificity/inheritance mental model is clearly explained with specificity score table
- SCSS `@use`/`@forward` module system correctly presented as the canonical form (not deprecated `@import`)
- Dark/light/auto theme section is the strongest treatment in any primer: covers OS detection, manual toggle, flash prevention, image handling, and Playwright `colorScheme` testing
- Responsive design section covers the full viewport spectrum with practical code for `clamp()`, container queries, and logical properties
- Accessibility section (contrast ratios, `:focus-visible`, `prefers-reduced-motion`) is complete and correctly sourced to WCAG 2.1

**Gaps (acceptable at primer depth):**
- CSS `@layer` (cascade layers, new in 2022) not covered — relevant for ITCSS adoption with modern CSS but beyond primer scope
- CSS Houdini / custom properties API not mentioned — correctly out of scope

**Verdict:** ✅ Publication-quality

---

### css-frameworks.md — CSS Frameworks Primer

**Strengths:**
- Decision matrix is actionable and neutral — no "framework wars" tone
- Bootstrap SCSS customisation section is technically accurate (import order, `$utilities` API, `variables-dark`)
- Tailwind's JIT and `content` array correctly explained
- Materialize maintenance warning is important and balanced (not dismissed, not alarmist)
- Side-by-side card examples in section 8 make the philosophical difference tangible

**Gaps:**
- No coverage of CSS-in-JS or CSS Modules (React ecosystem approaches) — acceptable; the primer is explicitly for CSS frameworks, not component frameworks
- Angular Material mentioned only as an alternative to Materialize; could have a brief "when to use Angular Material directly" note — minor

**Verdict:** ✅ Publication-quality

---

### typescript-angular.md — TypeScript & Angular Primer

**Strengths:**
- TypeScript structural typing explained correctly and with concrete example showing duck typing
- Interface vs type alias distinction correctly grounded (declaration merging, unions/tuples)
- `useDefineForClassFields: false` note is important and easily missed by Angular newcomers
- Smart/dumb component split with concrete code examples (not just theory)
- RxJS operator table is genuinely useful: mergeMap vs switchMap vs concatMap with use-case rationale
- Signals section accurately covers the Angular 16+ API and the `toSignal`/`toObservable` bridge
- Recovery moves in the Appendix (Zone detection, ExpressionChangedAfterItHasBeenCheckedError) address real pain points

**Gaps:**
- Angular Router not covered — large omission but reasonable for a primer (routing deserves its own primer)
- NgRx mentioned in `further_exploration` but not in idioms — correct; a full NgRx treatment would double the length
- No mention of `inject()` in constructor patterns vs functional injection — section 6.1 uses `inject()` correctly but doesn't explain the Angular 14+ motivation

**Verdict:** ✅ Publication-quality. One of the stronger primers in the series.

---

### bdd.md — Behaviour-Driven Development Primer

**Strengths:**
- BDD correctly positioned as collaboration practice, not testing methodology — this is the most common misunderstanding and it's addressed in paragraph 1
- Gherkin keyword reference table is complete and correctly describes each keyword
- Step definitions in three languages (Java, Python, TypeScript) demonstrate the framework is language-agnostic
- Selenium vs Playwright comparison table is fair and accurate
- Screenplay pattern correctly described: Actors, Abilities, Tasks, Interactions, Questions with Java code example
- Custom DSL section provides two concrete examples (Kotlin, Java) and a genuine trade-off table
- Anti-pattern catalogue is practical (rubber stamp, imperative Gherkin, shared state, orphaned steps)

**Gaps:**
- Example Mapping (the Discovery technique) mentioned but not explained procedurally — a brief "how to run an Example Mapping session" would strengthen the Discovery section
- No mention of Reqnroll (the community fork of SpecFlow after the Tricentis acquisition) — SpecFlow's future is uncertain; Reqnroll is now the recommended .NET path

**Minor factual check:**
- BDD attributed to Dan North in 2003, article linked is from 2006 — Dan North first used the term "behaviour" in tests around 2003 but the canonical public article is 2006. The primer correctly cites the 2006 article but saying "coined the term in 2003" is accurate (it predates the article).

**Verdict:** ✅ Publication-quality

---

## Security Remediation Assessment

**Achieved:**
- Critical alert count: 1 → 0 ✅
- High alert count: 36 → 18 ✅ (50% reduction)
- Overall: 69 → 54 (22% reduction)
- Maven dependencies fully resolved (both alerts closed)
- `.npmrc` with `os=linux cpu=x64` prevents future platform resolution errors

**Blocked (documented and accepted):**
- 18 remaining HIGH alerts: all inside `sitespeed.io/node_modules` — npm cannot override vendored sub-dependencies; fixing requires `sitespeed.io` to update its own dependencies in a future release
- `uuid` moderate alert in Cypress: fixing requires `cypress@4.2.0` downgrade (unacceptable); blocked on Cypress upstream
- `@tootallnate/once` and `tar` in `sitespeed.io`: blocked on `sitespeed.io@3.11.8` downgrade (unacceptable)

**Long-term recommendation:**
Evaluate replacing `sitespeed.io` in the validation stack with direct `lighthouse` CLI calls (already a direct devDependency). `sitespeed.io` accounts for approximately 45 of the 54 remaining alerts purely through its bundled sub-packages. A follow-up task for the build-automation agent.

---

## CHANGELOG

Updated `content/CHANGELOG.md` under `## Unreleased` with:
- **Added:** four new primers (with descriptions and links)
- **Added:** security remediation plan document
- **Fixed:** bootstrap-table shortcode trailing space
- **Security:** npm and Maven dependency updates with quantified results

---

## Handoff Notes

1. The three open style decisions (image fields, subtitle periods, tag overlap) require a single consistency pass by Editor Eddy across all primers, ideally in a separate commit after the author decision.
2. The BDD primer's Reqnroll gap is worth a targeted update: replace the SpecFlow entry in the tooling table with a note on the Reqnroll community fork.
3. The remaining 54 npm vulnerabilities should be tracked as a separate issue and revisited when sitespeed.io releases an update. Consider whether `sitespeed.io` is still earning its place given the alertburden and the existence of Lighthouse as a direct dependency.
