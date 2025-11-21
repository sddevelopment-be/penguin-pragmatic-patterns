# Framework Recommendation: Environment Validation Directive

**Date:** 2025-11-20  
**Context:** Dark mode bug fix - misleading browser extension CSS  
**Proposing Agent:** Frontend Freddy  
**For Review By:** Curator Claire

## Problem Identified

The original prompt mentioned:

> "Caused by `--fbc-secondary-text` in a file named `content_script.css`"

**Reality:**
- `content_script.css` doesn't exist in the repository
- `--fbc-secondary-text` is from a browser extension (likely Facebook Container)
- This was visible in browser DevTools but irrelevant to the actual bug
- Agent spent ~2 minutes searching for non-existent file

## Root Cause Analysis

**Why This Happened:**
1. User inspected element in browser DevTools
2. Browser extension injected CSS into the page
3. User saw extension variables and assumed they were project files
4. Reported the extension CSS as the root cause

**Why It's a Pattern:**
- Browser extensions inject CSS on every page
- DevTools shows extension CSS mixed with project CSS
- Hard to distinguish without experience
- Common extensions: Facebook Container, Dark Reader, Stylus, Grammarly

## Proposed Directive

### Environment Validation for Frontend Issues

When investigating frontend styling/behavior issues:

**Step 1: Validate the Environment**
```
BEFORE investigating reported file paths or CSS variables:

1. Check if reported file exists in repository:
   - grep/find command for the filename
   - If not found → likely browser extension
   
2. Check if reported CSS variable uses project naming:
   - Project pattern: --theme-*, --brand-*
   - Common extension prefixes: --fbc-*, --darkreader-*, --ext-*
   
3. Identify actual symptoms in clean environment:
   - What's the observable behavior issue?
   - Can it be reproduced without extensions?
```

**Step 2: Clarify With User (If Needed)**
```
If reported issue involves:
- File that doesn't exist
- CSS variable not matching project patterns
- Behavior that might be extension-related

THEN respond:
"I don't see [file/variable] in the repository. This might be from a browser 
extension. The actual issue appears to be [observable symptom]. I'll investigate 
[actual root cause area]. Please confirm this matches what you're seeing."
```

**Step 3: Focus on Actual Symptoms**
```
Instead of chasing reported "causes", focus on:
- What's the visual problem? (screenshot-describable)
- Which page/component is affected?
- What's the expected vs actual behavior?
- Can I reproduce in a clean build?
```

### Directive Text (Proposed)

```markdown
## Frontend Environment Validation

When investigating frontend bugs or inconsistencies:

**Validate Environment First:**

1. **Check reported file paths exist** in the repository
   ```bash
   find . -name "reported_filename.css" -type f
   ```
   If not found → likely browser extension CSS, not project code

2. **Check CSS variables match project patterns**
   - Project uses: `--theme-*`, `--brand-*`, specific naming conventions
   - Extensions often use: `--fbc-*`, `--darkreader-*`, `--ext-*`, vendor prefixes
   
3. **Identify observable symptoms** independent of DevTools inspection:
   - What looks wrong visually?
   - Which specific elements are affected?
   - Can you reproduce in incognito/clean browser?

**Clarification Protocol:**

If investigation reveals:
- Reported file doesn't exist in repo
- CSS variable not in project codebase  
- Potential browser extension interference

THEN inform user:
```
I don't see [X] in the repository. This appears to be from a browser extension.
The actual issue I can address is [observable symptom]. 
I'll investigate [actual area] instead. Please confirm this matches your observation.
```

**Focus on Reproducible Behavior:**
- Describe issue as "X should be Y, but shows as Z"
- Identify affected selectors/components
- Verify in clean build environment
- Test with and without browser customizations

**Benefits:**
- Avoid investigating non-existent files
- Separate extension CSS from project CSS
- Focus on actual project codebase issues
- Educate users about extension interference
```

## Evidence from Session

### What Actually Happened

1. Prompt said: `content_script.css` with `--fbc-secondary-text`
2. Agent searched for file → not found
3. Agent searched for variable → not found
4. Agent moved on to actual investigation
5. Found real issues: hardcoded SCSS colors in recommendations and navbar

**Time Wasted:** ~2 minutes (minor but preventable)

### What Should Have Happened

1. Agent sees `content_script.css` in prompt
2. Runs `find . -name "content_script.css"` → not found
3. Agent responds: 
   ```
   I don't see content_script.css in the repository. This appears to be from 
   a browser extension (--fbc-* suggests Facebook Container). 
   
   I can see the actual issues are:
   - Navbar-clone has hardcoded white background
   - Recommendations section has hardcoded dark text colors
   
   I'll proceed to fix these. Please confirm this matches what you're observing.
   ```
4. User confirms → Agent proceeds with confidence

**Time Saved:** 2 minutes + increased confidence

## Common Browser Extensions That Inject CSS

| Extension | CSS Variable Prefix | File Names |
|-----------|---------------------|------------|
| Facebook Container | `--fbc-*` | `content_script.css` |
| Dark Reader | `--darkreader-*` | Various |
| Stylus/Stylish | `--stylus-*`, custom | Various |
| Grammarly | `--grammarly-*`, `--gr-*` | Various |
| Accessibility Tools | `--a11y-*`, vendor-specific | Various |
| Video Downloaders | Custom patterns | `inject.css`, `content.css` |

## Integration Points

### Where This Directive Should Live

**Recommended Location:**
- `agents/directives/frontend/environment-validation.md`
- Loaded by: Frontend Freddy, potentially other UI-focused agents

**Related Directives:**
- Bug investigation workflow
- Test environment setup
- DevTools usage guidelines

### When to Apply

**Trigger Conditions:**
- Any frontend bug report mentioning specific files or CSS variables
- Issues discovered via browser DevTools
- Styling inconsistencies or unexpected behavior
- Reports of "mysterious CSS" or "unknown styles"

**Not Applicable To:**
- Backend API issues
- Build tool problems
- Content/documentation issues

## Metrics to Track (Optional)

- **False path investigations:** Count times agent searches for non-existent files
- **Clarification requests:** Track how often agent asks user about extension CSS
- **Time to root cause:** Measure investigation time before/after directive

**Hypothesis:** Should reduce false paths by 80-90%

## User Education Opportunity

This directive also serves to educate users about:

1. **Browser extension interference**
   - Extensions modify every page they run on
   - DevTools shows extension CSS mixed with project CSS
   - Can cause confusion when debugging

2. **How to isolate project issues**
   - Use incognito mode (extensions usually disabled)
   - Disable extensions temporarily
   - Focus on observable behavior, not DevTools internals

3. **Better bug reporting**
   - Describe what you see, not what DevTools shows
   - Include page/component location
   - Note if issue persists in clean browser

## Priority Assessment

**Priority:** MEDIUM  
**Rationale:** Prevents minor time waste, improves user education  
**Impact:** Low time savings per incident (~2-5 min) but builds good practices  
**Risk:** Very low - worst case is extra file check  
**Effort:** Low - single directive file

## Questions for Curator Claire

1. Should this be frontend-specific or general "validate environment" directive?
2. Should agents proactively check file existence on any bug report?
3. Is user education (clarifying extension CSS) appropriate for agent responses?
4. Should we add a checklist in bug report templates to prevent this?

---

**Next Steps:**
1. Review recommendation
2. If approved, create directive in `agents/directives/frontend/`
3. Consider adding to bug report template
4. Test with next frontend bug investigation

