# Lexical Style Deltas
## Minimal Patch-Ready Edits for Style Compliance

**Analysis Date:** 2025-11-12  
**Purpose:** Provide actionable, minimal edits grouped by violated rule  
**Format:** Before/After snippets with rationale  

---

## How to Use This Document

Each delta is presented as:
- **File path** and **line number(s)**
- **Rule violated** (from Evaluation Grid)
- **Before:** Current text
- **After:** Suggested text
- **Rationale:** Why this change preserves voice while improving compliance

Deltas are grouped by rule category for efficient batch processing.

---

## Category 1: Grammatical Corrections

### ❗️ **High Priority** — These are objective errors that should be fixed

#### `content/en/practices/efficient_async_communication.md:24`

**Rule:** Basic grammar (spacing)  
**Severity:** High  

**Before:**
```markdown
{name = "maintainable", delta = "0.55", rationale = "Enhances maintainability by promoting clear, structured communication that is easier tomaintain over time."},
```

**After:**
```markdown
{name = "maintainable", delta = "0.55", rationale = "Enhances maintainability by promoting clear, structured communication that is easier to maintain over time."},
```

**Rationale:** Missing space between "to" and "maintain" — simple typo fix.

---

#### `content/en/practices/efficient_async_communication.md:25`

**Rule:** Basic grammar (spacing)  
**Severity:** High  

**Before:**
```markdown
{name = "environmental", delta = "0.35", rationale = "Positively contributes to a focused work environment, though it may require somecultural adaptation to fully integrate."},
```

**After:**
```markdown
{name = "environmental", delta = "0.35", rationale = "Positively contributes to a focused work environment, though it may require some cultural adaptation to fully integrate."},
```

**Rationale:** Missing space between "some" and "cultural" — simple typo fix.

---

#### `content/en/practices/mindmapping.md:84`

**Rule:** Grammar (subject-verb agreement)  
**Severity:** High  

**Before:**
```markdown
* Visualizations are a tremendous helps in remembering facts. Popular culture is filled with the idea of "mind palaces", which is a technique used
  by people who display extraordinary capabilities or short-term memory storage.
```

**After:**
```markdown
* Visualizations are a tremendous help in remembering facts. Popular culture is filled with the idea of "mind palaces," a technique used by people who display extraordinary capabilities for short-term memory storage.
```

**Rationale:** 
- "helps" → "help" (grammatical agreement)
- Remove "which is" for tighter construction
- "capabilities or" → "capabilities for" (clearer preposition)
- Add comma before "a technique" for proper apposition

---

#### `content/en/concepts/clean-code.md:60`

**Rule:** Grammar (parallel structure)  
**Severity:** Medium  

**Before:**
```markdown
Writing clean code does more than pleasing your colleagues; you are doing your future self a favour.
```

**After:**
```markdown
Writing clean code does more than please your colleagues; you are doing your future self a favour.
```

**Rationale:** Parallel infinitive structure: "does more than [verb]" requires base form "please" not gerund "pleasing."

---

#### `content/en/CONTRIBUTING.md:70`

**Rule:** Broken link  
**Severity:** High  

**Before:**
```markdown
* [Clone your fork]() to your local machine
```

**After:**
```markdown
* [Clone your fork](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) to your local machine
```

**Rationale:** Empty link breaks user navigation. Suggest GitHub's official cloning documentation as target.

---

## Category 2: Rhythm & Paragraph Sizing

### ⚠️ **Medium Priority** — Improves scannability without changing meaning

#### `content/en/about.md:92-105`

**Rule:** Paragraph sizing (density)  
**Severity:** Medium  

**Before:**
```markdown
We've created a **sense-making meta model** to help you integrate ideas from this library with other sources. The model defines influence layers:

**Primary drivers** (deeply rooted, hard to change):
* **Values**: Deeply held beliefs that guide actions and decisions.
* **Axioms and Fundamental Laws**: Core truths or principles forming the foundation of understanding.
* **Current context**: The specific circumstances you're operating within.

**Secondary elements** (more malleable):
* **Creeds**: Tenets and beliefs that guide your approach.
* **Behaviors**: Observable actions influenced by creeds and primary drivers.

**Outcomes**:
* **Effects**: Results of behaviors within the current context, governed by applicable fundamental laws (e.g., push a ball off a table on Earth → it falls due to gravity).
```

**After:**
```markdown
We've created a **sense-making meta model** to help you integrate ideas from this library with other sources. The model defines influence layers:

**Primary drivers** (deeply rooted, hard to change):
* **Values**: Deeply held beliefs that guide actions and decisions.
* **Axioms and Fundamental Laws**: Core truths or principles forming the foundation of understanding.
* **Current context**: The specific circumstances you're operating within.

**Secondary elements** (more malleable):
* **Creeds**: Tenets and beliefs that guide your approach.
* **Behaviors**: Observable actions influenced by creeds and primary drivers.

**Outcomes**:
* **Effects**: Results of behaviors within the current context, governed by applicable fundamental laws.

For example: push a ball off a table on Earth—it falls due to gravity.
```

**Rationale:** 
- Extract example from bullet list for breathing room
- Example becomes its own mini-paragraph for emphasis
- Maintains all content while improving scanability

---

#### `content/en/practices/mindmapping.md:83-88`

**Rule:** Paragraph sizing  
**Severity:** Medium  

**Before:**
```markdown
## Rationale

* Visualizations are a tremendous helps in remembering facts. Popular culture is filled with the idea of "mind palaces", which is a technique used
  by people who display extraordinary capabilities or short-term memory storage.
* We are good at thinking creatively, but our recollection is often times flawed. This leads us to forget about certain aspects
* Not knowing what something relates to makes it harder to remember facts.
* Humans prefer to think in structures, it has been shown that structuring a text or idea helps you refine the knowledge.
```

**After:**
```markdown
## Rationale

* Visualizations are a tremendous help in remembering facts. Popular culture features "mind palaces," a technique used by people with extraordinary short-term memory capabilities.
* We excel at creative thinking, but our recollection is flawed—we forget details.
* Context matters: not knowing how facts relate makes them harder to remember.
* Humans prefer structured thinking. Research shows that organizing text or ideas helps refine knowledge.
```

**Rationale:** 
- Tightened each bullet without losing meaning
- Fixed grammatical issue ("helps" → "help")
- Improved rhythm: shorter clauses, clearer breaks
- "often times" → implied in "is flawed"
- "it has been shown" → "research shows" (more direct)

---

## Category 3: Em-dash Policy Compliance

### ⚠️ **Medium Priority** — Standardization for consistency

#### `content/en/about.md:18`

**Rule:** Em-dash representation  
**Severity:** Low  

**Before:**
```markdown
This creates a paradox: we have access to an overwhelming amount of advice, frameworks, and "best practices," yet we struggle to find common ground. The proverb "put two developers in a room, they'll soon generate three dissenting opinions" rings uncomfortably true.
```

**After:**
```markdown
This creates a paradox: we have access to an overwhelming amount of advice, frameworks, and "best practices," yet we struggle to find common ground. The proverb "put two developers in a room—they'll soon generate three dissenting opinions" rings uncomfortably true.
```

**Rationale:** Em-dash before consequent clause improves pacing. Current comma splice is grammatically weak.

---

#### `content/en/practices/pomodoro_focus.md:88`

**Rule:** Em-dash for emphasis  
**Severity:** Low  

**Before:**
```markdown
__"The hardest part is getting started."__ Reducing the resistance to start a task can help practitioners to overcome the inertia.
```

**After:**
```markdown
__"The hardest part is getting started"__—reducing the resistance to start a task helps practitioners overcome inertia.
```

**Rationale:** 
- Em-dash connects quote to elaboration more fluidly
- "can help practitioners to" → "helps practitioners" (tighter, active)
- Maintains emphasis while improving flow

---

#### `content/en/concepts/clean-code.md:74`

**Rule:** Em-dash for attribution  
**Severity:** Low  

**Before:**
```markdown
It was also mentioned in the "C++ Complete Reference" by Herbert Schildt, where he stated that "a program should be written for people to read, and only incidentally for machines to execute".
```

**After:**
```markdown
It was also mentioned in the "C++ Complete Reference" by Herbert Schildt, where he stated that "a program should be written for people to read—and only incidentally for machines to execute."
```

**Rationale:** Em-dash before contrasting clause emphasizes the deliberate prioritization. Adds period inside quote per American convention.

---

## Category 4: Clarity & Concision

### ⚠️ **Low-Medium Priority** — Reduces wordiness without changing voice

#### `content/en/practices/avoid_gold_plating.md:50-52`

**Rule:** Concision (wordiness)  
**Severity:** Low  

**Before:**
```markdown
Programmers tend to over-design simple things to make them more capable, clever, or beautiful than they need to be at that point in time. 
In doing so, they often end up spending much more time and mental effort on a piece of software than is needed.  
Or worse: they build in functionality or capabilities that will never be used.
```

**After:**
```markdown
Programmers tend to over-design simple things to make them more capable, clever, or beautiful than needed. They often spend far more time and mental effort than necessary—or worse, build functionality that will never be used.
```

**Rationale:** 
- "at that point in time" → implied by "than needed"
- "In doing so, they often end up spending" → "They often spend" (12 → 4 words)
- Consolidates three sentences to two for better rhythm
- Preserves all semantic content

---

#### `content/en/practices/mindmapping.md:59`

**Rule:** Clarity (word choice)  
**Severity:** Low  

**Before:**
```markdown
Make sure not to put too much effort into your mind map, the act of mapping is where the value lies.
```

**After:**
```markdown
Don't over-invest in your mind map's appearance—the act of mapping is where the value lies.
```

**Rationale:** 
- "Make sure not to put too much effort into" → "Don't over-invest in... appearance" (clearer, more direct)
- "over-invest" mirrors the gold-plating theme elsewhere in repo
- Em-dash before explanatory clause improves pacing

---

#### `content/en/practices/pomodoro_focus.md:49`

**Rule:** Markdown consistency (bold formatting)  
**Severity:** Low  

**Before:**
```markdown
* Your tasks get finished more often, or at least move to a point where (part of) the work can be considered  __"completed"__.
```

**After:**
```markdown
* Your tasks get finished more often, or at least move to a point where (part of) the work can be considered **"completed"**.
```

**Rationale:** Repository predominantly uses `**bold**` over `__bold__`. Standardize for consistency. (Note: Both are valid markdown, but consistency aids maintainability.)

---

#### `content/en/practices/efficient_async_communication.md:81`

**Rule:** Emphasis (already excellent, preserve)  
**Severity:** N/A — **No change needed**  

**Current:**
```markdown
In general: **Optimise for quick reading and processing, not for quick sending.**
```

**Status:** ✓ **Keep as-is**  

**Rationale:** This is a model example of bold emphasis used correctly. The principle is clear, memorable, and impactful. No changes recommended.

---

## Category 5: Passive Voice Reduction

### ⚠️ **Low Priority** — Improves directness where applicable

#### `content/en/practices/mindmapping.md:88`

**Rule:** Active voice preferred  
**Severity:** Low  

**Before:**
```markdown
* Humans prefer to think in structures, it has been shown that structuring a text or idea helps you refine the knowledge.
```

**After:**
```markdown
* Humans prefer to think in structures. Research shows that structuring a text or idea helps you refine knowledge.
```

**Rationale:** 
- "it has been shown" → "research shows" (active, clearer attribution)
- Split run-on sentence with period
- "the knowledge" → "knowledge" (less clunky)

---

#### `content/en/CONTRIBUTING.md:36`

**Rule:** Tone (directness)  
**Severity:** Low  

**Before:**
```markdown
Fill out the [required template](../../.github/ISSUE_TEMPLATE/bug_report.md), the information it asks for helps us resolve issues faster.
```

**After:**
```markdown
Please fill out the [required template](../../.github/ISSUE_TEMPLATE/bug_report.md)—the information it asks for helps us resolve issues faster.
```

**Rationale:** 
- "Please" softens imperative without losing directness
- Em-dash before reason clause improves flow
- Maintains collaborative tone

---

## Category 6: Structural Improvements

### ⚠️ **Optional** — Larger refactors; consider for future passes

#### `content/en/CONTRIBUTING.md:64-74` (Duplicate Content)

**Rule:** Content organization  
**Severity:** Low  

**Observation:** Section "Submitting Changes" (lines 64-74) repeats content from "Code Contribution Guidelines" (lines 45-53). Both describe the fork → branch → PR workflow.

**Recommendation:** Consolidate into single section or cross-reference:

**Option A (Consolidation):**
```markdown
## Code Contribution Guidelines

If you would like to contribute code or write patterns, please follow these steps:

1. [Fork the repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/about-forks)
2. [Clone your fork](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) to your local machine
3. [Create a new branch](https://guides.github.com/introduction/flow/) and work on it
4. When your change is complete (implemented and tested), submit a [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
5. After review, your changes will be merged into `develop` and deployed to the [public preview website](https://sddevelopment-be.github.io/penguin-pragmatic-patterns/)

### Running and Building Locally

* Install the Hugo static site generator: see the [official guide](https://gohugo.io/installation/)
* Use `hugo server` to spawn a local webserver that dynamically updates as you make changes
```

**Option B (Cross-reference):**
Keep both sections but add: "For detailed workflow steps, see [Code Contribution Guidelines](#code-contribution-guidelines) above."

**Rationale:** Reduces redundancy, improves maintainability. Reader sees process once, clearly.

---

#### `content/en/practices/avoid_gold_plating.md:100` (Sparse Rationale)

**Rule:** Section balance  
**Severity:** Low  

**Observation:** Rationale section has only one bullet point:
```markdown
## Rationale

* The level of refinement of a codebase should make sense for the problem at hand
```

**Recommendation:** Expand with 1-2 supporting principles:

```markdown
## Rationale

* The level of refinement of a codebase should match the problem scope and expected lifespan.
* Over-engineering introduces unnecessary complexity, making code harder to understand and maintain.
* Premature optimization often targets problems that never materialize, wasting valuable development time.
```

**Rationale:** Other practices have 3-4 rationale bullets. Consistency aids pattern recognition. Expansion adds value without changing core message.

---

## Category 7: Data File Standardization

### ⚠️ **Low Priority** — Consistency improvements

#### `data/bibliography.toml` (Em-dash HTML entities)

**Rule:** Em-dash representation consistency  
**Severity:** Low  

**Observation:** Some entries use HTML entity/Unicode `—`, while others may use markdown variants. Standardize on `—` for consistency.

**Before:**
```toml
description = """
Widely regarded as one of the definitive books on software development, _The Pragmatic Programmer_
by Andy Hunt and Dave Thomas distills decades of pragmatic software craftsmanship.
Presented in an approachable, conversational style, this revised edition remains essential reading for developers at any stage.
<br /><br />
The authors span coding techniques, architecture, project management, and career habits—weaving actionable advice with memorable anecdotes.
Their guidance helps developers deliver elegant, maintainable code while staying adaptable—and keeping their sanity intact.
"""
```

**After:**
```toml
description = """
Widely regarded as one of the definitive books on software development, _The Pragmatic Programmer_
by Andy Hunt and Dave Thomas distills decades of pragmatic software craftsmanship.
Presented in an approachable, conversational style, this revised edition remains essential reading for developers at any stage.

The authors span coding techniques, architecture, project management, and career habits—weaving actionable advice with memorable anecdotes.
Their guidance helps developers deliver elegant, maintainable code while staying adaptable—and keeping their sanity intact.
"""
```

**Rationale:** 
- If rendering as markdown, use `—` (HTML entity/Unicode) for consistent rendering
- `<br /><br />` → blank line (markdown convention)
- **Note:** Standardize on `—` for em-dashes rather than `---` due to rendering inconsistencies

---

#### `data/glossary.toml` (Empty domain fields)

**Rule:** Data completeness  
**Severity:** Low  

**Observation:** Entry "Blocking Wait" (lines 84-92) has empty domain field.

**Before:**
```toml
[[terminology]]
name = "Blocking Wait"
abbreviation = ""
domain = ""
description = """..."""
```

**After:**
```toml
[[terminology]]
name = "Blocking Wait"
abbreviation = ""
domain = "software"
description = """..."""
```

**Rationale:** Blocking waits are a software/OS concept. Populating domain aids filtering and categorization. Review other empty domain fields similarly.

---

## Summary of Deltas by Priority

| Priority | Count | Category | Effort |
|----------|-------|----------|--------|
| **High** | 4 | Grammatical errors, broken links | 5 min |
| **Medium** | 6 | Paragraph sizing, em-dash standardization | 20 min |
| **Low** | 8 | Concision, passive voice, consistency | 30 min |
| **Optional** | 3 | Structural refactors | 45 min |

**Total Estimated Effort:** ~100 minutes for all deltas  
**High-Priority Only:** ~5 minutes  

---

## Application Notes

1. **High-priority deltas** are objective errors and should be applied immediately.
2. **Medium-priority deltas** improve consistency and readability—recommend batch application.
3. **Low-priority deltas** are style polish—apply during dedicated editing passes.
4. **Optional deltas** are larger refactors—queue for future content improvement cycles.

**Preservation Guideline:** All suggested edits maintain the repository's established voice. No changes introduce hype, flattery, or prescriptiveness. Where tightening occurs, semantic content is preserved.

---

**Document Prepared By:** Lexical Analyst Agent  
**Methodology:** Line-by-line review against SDD Operational Reference  
**Format:** Minimal patches grouped by rule violation for efficient application
