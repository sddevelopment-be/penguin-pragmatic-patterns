# Lexical Style Rules
## Extracted Operational Writing Standards for Penguin Pragmatic Patterns

**Purpose:** Quick-reference style guide for contributors and editors  
**Scope:** English content in `content/en/` and `data/`  
**Last Updated:** 2025-11-12  

---

## Quick Start for New Contributors

This document distills the **writing style rules** observed and recommended for the Penguin Pragmatic Patterns repository. If you're contributing content, use this guide to maintain consistency with existing work.

**Three Core Principles:**
1. **Calm, Clear, Sincere** — No hype, no flattery, no false promises
2. **Respect Reader Autonomy** — Guide, don't prescribe; acknowledge context-dependency
3. **Clarity Before Complexity** — Lead with examples, follow with abstractions

---

## Table of Contents

1. [Tone & Voice Guidelines](#tone--voice-guidelines)
2. [Sentence & Paragraph Rules](#sentence--paragraph-rules)
3. [Punctuation Standards](#punctuation-standards)
4. [Markdown Hygiene](#markdown-hygiene)
5. [Pattern Structure Requirements](#pattern-structure-requirements)
6. [Word Choice & Phrasing](#word-choice--phrasing)
7. [Example & Code Standards](#example--code-standards)
8. [Data File Conventions](#data-file-conventions)
9. [Anti-Patterns to Avoid](#anti-patterns-to-avoid)
10. [Medium-Specific Rules](#medium-specific-rules)

---

## Tone & Voice Guidelines

### ✓ **DO:**
- Use **calm, measured language** that respects the reader's time and intelligence
- Write in **clear, accessible prose** that avoids unnecessary jargon
- Be **sincere and honest** about limitations, trade-offs, and context-dependency
- Acknowledge that **readers know their context better** than you do
- Use **"we" and "you"** framing to create collaborative tone
- Include **humor sparingly** when it serves clarity (e.g., WTF-per-minute cartoon, Enterprise FizzBuzz)

**Example (Good):**
> "This pattern works well when team members can succinctly describe their requests, making it easier for recipients to prioritize and respond."

**Example (Bad):**
> "This amazing pattern will revolutionize your workflow! You'll become a communication superstar!"

### ❌ **DON'T:**
- Use **hype language** ("revolutionary," "game-changing," "must-have")
- **Flatter the reader** ("you're a rock star," "you're amazing")
- Make **absolute claims** ("always do X," "never do Y," "best practice")
- **Prescribe solutions** without acknowledging context ("you should," "you must")
- Use **urgency language** ("critical," "essential," "immediately")
- **Oversell techniques** or promise guaranteed outcomes

---

## Sentence & Paragraph Rules

### Sentence Length & Variety

**Rule:** Mix short and long sentences for rhythm. Avoid monotony.

**✓ Good Example:**
> "Writing clean code does more than please your colleagues; you are doing your future self a favour. Projects inevitably evolve, and what was once insignificant can become critical to the application's success."

(Two sentences: one compound [16 words], one complex [20 words]. Varied structure.)

**❌ Bad Example:**
> "Writing clean code is important. It helps your colleagues. It helps your future self. Projects evolve. Things change. Code becomes critical."

(Six sentences, all simple and short. Choppy, monotonous rhythm.)

### Paragraph Sizing

**Rule:** Keep paragraphs **≤6-7 lines** (approximately 4-5 sentences) for scannability.

**Rationale:** Readers scan digital content. Long blocks discourage reading.

**✓ Good Practice:**
- Split dense paragraphs at natural topic shifts
- Use bulleted lists for multi-part information
- Add whitespace between related but distinct ideas

**⚠️ Watch For:**
- Paragraphs exceeding 8 lines in pattern Rationale or Application sections
- Dense explanatory blocks in about.md or foundational content

### Active vs. Passive Voice

**Rule:** Prefer **active voice** for clarity and directness.

**✓ Active (Good):**
> "Research shows that structuring a text or idea helps you refine knowledge."

**❌ Passive (Avoid):**
> "It has been shown that structuring a text or idea helps you refine knowledge."

**Exception:** Passive is acceptable when the actor is unknown or irrelevant ("the server was restarted," "the code was deployed").

---

## Punctuation Standards

### Em-Dash Usage

**Rule:** Use em-dashes **sparingly** for emphasis or to set off contrasting clauses.

**Representation:** Use **HTML entity or Unicode character `—`** in markdown files for consistent rendering across platforms.

**✓ Correct:**
```markdown
The hardest part is getting started—reducing resistance helps you overcome inertia.
```

**❌ Incorrect:**
```markdown
The hardest part is getting started--reducing resistance helps you overcome inertia.
(Double-dash is en-dash, not em-dash)

The hardest part is getting started---reducing resistance helps you overcome inertia.
(Triple-dash markdown rendering can be inconsistent)
```

**❌ Avoid Overuse:**
```markdown
The Pomodoro technique—which uses timers—helps you focus—and reduces distractions—by creating time boxes.
(Too many em-dashes; use commas or restructure)
```

**When to Use:**
- Before explanatory clauses that contrast or expand
- To set off parenthetical information with more emphasis than commas
- For attribution in quotes: `"A program should be written for people to read—and only incidentally for machines to execute."`

### Comma Usage

**Rule:** Use **Oxford (serial) commas** for clarity in lists.

**✓ Correct:**
> "The authors span coding techniques, architecture, project management, and career habits."

**❌ Incorrect:**
> "The authors span coding techniques, architecture, project management and career habits."

### Quotation Marks

**Rule:** Use **curly quotes** ("") for quotations, **straight quotes** for code/literal text.

**✓ Correct:**
```markdown
The proverb "put two developers in a room, they'll soon generate three dissenting opinions" rings uncomfortably true.
```

**✓ Also Correct (Code):**
```markdown
When the count is divisible by 3, the program should print out `Fizz` rather than the current count.
```

---

## Markdown Hygiene

### Heading Hierarchy

**Rule:** Use **semantic heading levels** (H1 → H2 → H3) without skipping.

**✓ Correct Structure:**
```markdown
# Main Title (H1 - auto-generated from front matter)

## Problem Statement (H2)

## Intent (H2)

## Solution (H2)

### Key Attention Points (H3)

## Contextual Forces (H2)

### Enablers (H3)

### Deterrents (H3)
```

**❌ Incorrect:**
```markdown
## Solution

#### Key Attention Points (Skipped H3)
```

### List Formatting

**Rule:** Use **consistent indentation** (2 spaces) for nested lists.

**✓ Correct:**
```markdown
* Write your messages with enough context for the recipient to prioritize them
* In general, follow the structure:
  * Hello X
  * Could you [request], by [timeframe]
  * I need this in order to [describe intent]
```

**❌ Incorrect:**
```markdown
* Write your messages with enough context
* In general, follow the structure:
    * Hello X (4 spaces - inconsistent)
  * Could you [request] (2 spaces - inconsistent within same list)
```

### Bold & Italic Usage

**Rule:** Use `**bold**` (not `__bold__`) for emphasis. Use `*italic*` (not `_italic_`) for titles or subtle emphasis.

**Consistency Note:** Repository predominantly uses `**bold**` over `__bold__`. Standardize for maintainability.

**✓ Correct:**
```markdown
**Optimise for quick reading and processing, not for quick sending.**
```

**⚠️ Inconsistent (but valid):**
```markdown
__"completed"__ (valid markdown but inconsistent with repo style)
```

### Link Formatting

**Rule:** Use **descriptive link text**, not "click here" or bare URLs.

**✓ Correct:**
```markdown
Check the [Changelog](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/blob/develop/docs/CHANGELOG.md).
```

**❌ Incorrect:**
```markdown
Check the changelog [here](https://github.com/...).
Click [this link](https://github.com/...) for the changelog.
```

**Rule:** Ensure **all links have targets**. Empty links `[text]()` break user flow.

---

## Pattern Structure Requirements

### Practice Files (TEMPLATE_PRACTICE.md)

**Required Sections (in order):**
1. **Problem Statement** — Describe the issue the practice addresses
2. **Intent** — List desired outcomes (bulleted list)
3. **Solution** — Provide actionable steps
4. **Contextual Forces** — Enablers and Deterrents subsections
5. **Rationale** — Why this works (principles, not just claims)
6. **Application** — Consequences and Mitigation Strategies subsections
7. **Examples** — Concrete scenarios or code
8. **Criticism & Clarifications** (optional but recommended)

**Tone Requirements:**
- Problem Statement: **Relatable and concrete** (not abstract)
- Intent: **Observable outcomes**, not aspirational feelings
- Solution: **Actionable steps**, avoid "just do X"
- Contextual Forces: **Acknowledge both enablers AND deterrents** (balance)
- Consequences: **Honest about downsides**
- Mitigation: **Practical strategies**, not hand-waving

**Example (Good Problem Statement):**
> "You are distracted by various inputs from your environment, causing you to not finish tasks you set out to do."

**Example (Bad Problem Statement):**
> "Focus is a challenge in modern workplaces." (Too abstract)

### Concept Files (TEMPLATE_CONCEPT.md equivalent)

**Required Sections:**
1. **Definition** — Clear, scoped explanation
2. **Key Components** — Bulleted breakdown (optional)
3. **Background** — Origin and Application subsections
4. **Comparisons** — Related concepts (how it differs/relates)
5. **Examples** — Concrete illustrations

**Tone Requirements:**
- Definition: **Concise without oversimplification**
- Background: **Informative without academic jargon**
- Comparisons: **Contextualizes within ecosystem**, doesn't claim superiority

---

## Word Choice & Phrasing

### Preferred Phrasings

| **Instead of...** | **Use...** | **Why?** |
|-------------------|------------|----------|
| "best practice" | "pattern," "technique," "practice" | Avoids absolutism |
| "you should always" | "consider," "you might," "can be helpful to" | Respects context-dependency |
| "simply do X" | "you can do X," "one approach is X" | Avoids assuming ease |
| "it is important to" | "this helps you," "this enables" | More concrete benefit |
| "in order to" | "to" | More concise |
| "at this point in time" | "now," "currently," (or omit) | Less verbose |
| "it has been shown that" | "research shows," "studies indicate" | More active, clearer attribution |
| "make sure to" | "ensure," "verify," (or imperative) | More direct |

### Inclusive Language

**Rule:** Use **"you"** to address the reader, **"we"** for collaborative framing, **"they"** for singular neutral pronoun.

**✓ Correct:**
> "When a developer revisits their code after some time, they may find it hard to understand."

**❌ Incorrect:**
> "When a developer revisits his code after some time, he may find it hard to understand."

### Acronyms & Abbreviations

**Rule:** Define acronyms on **first use** in each document. Add to `data/glossary.toml` for site-wide reference.

**✓ Correct:**
> "The Application Programming Interface (API) typically includes function names..."

**Then later in same document:**
> "The API handles all external requests."

---

## Example & Code Standards

### Narrative Examples

**Rule:** Use **realistic scenarios** with named characters (e.g., Alex, Bernie, Emily) to make abstractions concrete.

**Structure:**
1. **Set context** (who, what, where)
2. **Describe challenge** (problem faced)
3. **Show application** (how pattern helps)
4. **Highlight outcome** (specific result)

**✓ Good Example Structure (from pomodoro_focus.md):**
> "Emily was overwhelmed by the prospect of writing a complex report... She set her timer for 25 minutes and focused solely on outlining... By the end of the day, Emily had completed the entire report..."

(Context → Challenge → Application → Outcome)

**❌ Bad Example:**
> "A developer used the Pomodoro technique and was productive." (Too vague)

### Code Examples

**Rule:** Provide **complete, runnable code** when possible. Use syntax highlighting.

**✓ Correct:**
````markdown
```java
public final class FizzBuzzOutputGenerationContext implements OutputGenerationContext {
    private final DataPrinter printer;
    private final IsEvenlyDivisibleStrategy strategy;
    // ...
}
```
````

**Rule:** Use **realistic anti-patterns** to show "how NOT to do it" (e.g., Enterprise FizzBuzz).

**Tone Requirement:** Frame anti-patterns **educationally**, not mockingly. Explain why it's problematic.

---

## Data File Conventions

### `data/glossary.toml`

**Required Fields:**
```toml
[[terminology]]
name = "Term Name"
abbreviation = "TLA" # (or "" if none)
domain = "software" # (or "communication", "productivity", etc.)
description = """Clear, concise definition"""
aliases = ["Alternative Name"] # (optional)
references = [{title = "Source", link = "URL"}] # (optional)
```

**Rules:**
- **domain:** Populate for all entries (helps filtering)
- **description:** Avoid circular definitions; explain in plain language
- **references:** Provide authoritative sources when available

### `data/bibliography.toml`

**Required Fields:**
```toml
[[book]]
id = "UUID" # (generated with uuidgen)
title = "Book Title"
subtitle = "Subtitle if applicable"
authors = "Last, F.; Last2, F."
publisher = "Publisher Name"
year = "YYYY"
isbn = "978-XXXXXXXXXX"
link = "https://..."
description = """
Balanced description that provides context without spoilers.
Avoid "must-read" or "essential" language.
"""
levels = ["Novice-friendly", "Intermediate level"] # Target audience
tags = ["tag1", "tag2"] # Must exist in glossary.toml
```

**Rules:**
- **descriptions:** Informative without hype; ~3-5 sentences
- **tags:** Must correspond to glossary terms
- **levels:** Use consistent categorization (Novice-friendly, Intermediate level, Advanced, Reference)

---

## Anti-Patterns to Avoid

### ❌ **Hype & Overselling**

**Don't:**
- "This revolutionary technique will change your life!"
- "The best way to..."
- "You absolutely must..."
- "Game-changing approach..."

**Do:**
> "This technique can help reduce distractions when applied in suitable contexts."

### ❌ **Flattery & Motivation Speak**

**Don't:**
- "You're a rock star developer!"
- "You've got this!"
- "Your code is amazing!"

**Do:**
> "Your colleagues and your future self will thank you."

(Sincere, not patronizing.)

### ❌ **False Dichotomies**

**Don't:**
- "Always use X, never use Y."
- "The only correct approach is..."
- "If you're not doing X, you're doing it wrong."

**Do:**
> "X works well when [context]. Y may be preferable when [different context]."

### ❌ **Oversimplification**

**Don't:**
- "Just follow these 3 simple steps and all your problems are solved!"
- "It's easy—simply..."

**Do:**
> "This approach addresses [specific problem], though it requires [specific effort or context]."

### ❌ **Assumed Universality**

**Don't:**
- "Everyone knows that..."
- "Obviously, you should..."
- "Common sense dictates..."

**Do:**
> "In many contexts, it helps to..."
> "A common approach is..."

---

## Medium-Specific Rules

### Pattern Files (Practices & Concepts)

**Structure:** Follow TEMPLATE_PRACTICE.md or concept equivalent  
**Tone:** Calm, clear, actionable  
**Key Requirements:**
- ✓ Lead with **concrete problem statement**
- ✓ Provide **actionable solutions** (not just principles)
- ✓ Acknowledge **enablers AND deterrents** (Contextual Forces)
- ✓ Pair **consequences with mitigations** (Application section)
- ✓ Include **concrete examples** (realistic scenarios or code)
- ✓ Add **AMMERSE ratings** with honest negative deltas
- ✓ Include **"Criticism & Clarifications"** section when relevant

**Avoid:**
- Prescriptive language ("you must," "always do")
- Overselling ("best practice," "only way")
- Abstract-only content (ground with examples)

### Essay Files (About, Primers)

**Structure:** Narrative, exploratory  
**Tone:** Welcoming, educational, humble  
**Key Requirements:**
- ✓ Hook with **relevant context** (statistics, metaphors, relatable scenarios)
- ✓ Acknowledge **reader diversity** (beginners, experts, cross-discipline)
- ✓ Use **metaphor sparingly** when it aids clarity
- ✓ Explicitly **respect reader autonomy** ("you know your context better")
- ✓ Admit **limitations** ("this is a simplification")

**Avoid:**
- Marketing speak ("comprehensive guide," "everything you need")
- Assuming expertise ("as you know," "obviously")
- Overwhelming scope (focus essays on specific themes)

### Documentation Files (Guides, Contributing)

**Structure:** Scannable, process-oriented  
**Tone:** Direct, helpful, inclusive  
**Key Requirements:**
- ✓ Use **bulleted workflows** for step-by-step processes
- ✓ Include **non-developers** explicitly in contribution guides
- ✓ Link to **authoritative external sources** (GitHub docs, official guides)
- ✓ Provide **clear action items** ("fork the repository," "create a branch")
- ✓ Soften imperatives with "please" when appropriate

**Avoid:**
- Assuming Git/GitHub expertise
- Redundant workflow descriptions (consolidate)
- Empty or broken links
- Jargon without explanation

### Data Files (TOML)

**Structure:** Consistent field structures  
**Tone:** Neutral, concise, factual  
**Key Requirements:**
- ✓ Use **consistent field ordering** across entries
- ✓ Populate **domain fields** in glossary
- ✓ Provide **references/links** for traceability
- ✓ Keep descriptions **concise** (1-3 sentences for glossary, 3-5 for bibliography)

**Avoid:**
- Hype language in bibliography descriptions ("must-read," "essential")
- Circular definitions in glossary
- Inconsistent em-dash representation (use `---` or standardize HTML entities)

---

## Example Edits (Before/After)

### Example 1: Reduce Passive Voice

**Before:**
> "It has been shown that structuring a text or idea helps you refine the knowledge."

**After:**
> "Research shows that structuring a text or idea helps you refine knowledge."

**Improvement:** Active voice, clearer attribution, removed clunky "the."

---

### Example 2: Tighten Wordiness

**Before:**
> "In doing so, they often end up spending much more time and mental effort on a piece of software than is needed."

**After:**
> "They often spend far more time and mental effort than necessary."

**Improvement:** 19 words → 10 words; same meaning, better rhythm.

---

### Example 3: Soften Imperative

**Before:**
> "Fill out the [required template], the information it asks for helps us resolve issues faster."

**After:**
> "Please fill out the [required template]—the information it asks for helps us resolve issues faster."

**Improvement:** "Please" maintains inclusive tone; em-dash improves flow.

---

### Example 4: Fix Grammatical Error

**Before:**
> "Visualizations are a tremendous helps in remembering facts."

**After:**
> "Visualizations are a tremendous help in remembering facts."

**Improvement:** Subject-verb agreement corrected.

---

## Compliance Checklist for New Content

Before submitting new content, verify:

- [ ] **Tone:** Calm, clear, sincere? No hype or flattery?
- [ ] **Structure:** Follows template for medium (Pattern/Essay/Documentation)?
- [ ] **Paragraphs:** ≤6-7 lines each? Split dense blocks?
- [ ] **Sentences:** Varied length? Active voice where possible?
- [ ] **Punctuation:** Em-dashes sparse and represented as `---`?
- [ ] **Markdown:** Semantic headings? Consistent list indentation?
- [ ] **Examples:** Concrete scenarios or code? Realistic, not abstract?
- [ ] **Links:** All have targets? Descriptive text, not "click here"?
- [ ] **Tags:** All tags exist in `data/glossary.toml`?
- [ ] **Acronyms:** Defined on first use?
- [ ] **AMMERSE:** Ratings include negative deltas? Honest about trade-offs?
- [ ] **Mitigation:** Consequences paired with actionable mitigations?
- [ ] **Voice:** Respects reader autonomy? Avoids prescriptiveness?

---

## Exemplar Files (Study These)

When in doubt about tone or structure, reference these files:

| Medium | File | Why It's Exemplary |
|--------|------|-------------------|
| **Pattern (Practice)** | `efficient_async_communication.md` | Clear problem, actionable solution, memorable principle ("optimize for reading, not sending"), cultural sensitivity |
| **Pattern (Concept)** | `clean-code.md` | Balanced definition, engaging examples (WTF-per-minute), acknowledges related concepts, avoids dogma |
| **Essay** | `about.md` | Hooks with statistics, respects reader autonomy, uses metaphor appropriately, acknowledges limitations |
| **Documentation** | `CONTRIBUTING.md` (with deltas applied) | Inclusive of non-developers, clear workflows, warm without desperation |
| **Data (Glossary)** | `glossary.toml` | Concise definitions, neutral tone, consistent structure, traceable references |
| **Data (Bibliography)** | `bibliography.toml` | Informative descriptions without hype, appropriate context |

---

## Resources & References

- **Repository Templates:** `src/templates/TEMPLATE_PRACTICE.md`, `TEMPLATE_CONCEPT.md`
- **Context Files:** `.github/agents/lexical.agent.md`, `AGENTS.md`, `docs/references/.repo_overview.md`
- **Analysis Outputs:** `docs/LEX_REPORT.md`, `docs/LEX_DELTAS.md`, `docs/LEX_TONE_MAP.md`
- **SDD Framework:** [sddevelopment-be/templates/agents](https://github.com/sddevelopment-be/templates/tree/main/agents)

---

## Quick Reference: Tone Self-Check

**Ask yourself:**
1. Would I feel condescended to if I read this as a beginner?
2. Would I feel preached at if I read this as an expert?
3. Does this acknowledge that context matters?
4. Does this make claims I can't back up?
5. Does this respect the reader's intelligence and autonomy?

If **any answer is "yes" to #1, #2, or #4, or "no" to #3 or #5,** revise before submitting.

---

## Maintenance & Updates

This style guide is **living documentation**. As the repository evolves:
- Update rules to reflect new consensus on tone or structure
- Add new exemplar files when excellent examples emerge
- Refine phrasing guidelines based on contributor feedback
- Maintain alignment with `.github/agents/lexical.agent.md` definitions

**Last Reviewed:** 2025-11-12  
**Next Review:** Upon significant content additions or contributor feedback  

---

**Document Prepared By:** Lexical Analyst Agent  
**Purpose:** Onboarding reference for contributors; style consistency maintenance  
**Status:** Active reference document; update as repository evolves
