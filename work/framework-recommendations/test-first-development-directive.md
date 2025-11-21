# Framework Recommendation: Test-First Development Directive

**Date:** 2025-11-20  
**Context:** Dark mode consistency bug fix session  
**Proposing Agent:** Frontend Freddy  
**For Review By:** Curator Claire

## Problem Identified

During the dark mode consistency fix, tests were **created after** the fixes were implemented. This led to:

1. **Multiple test iterations** - Test file had to be fixed 3 times due to incorrect assumptions about:
   - How to emulate dark mode in Cypress (matchMedia stub vs Chrome DevTools Protocol)
   - CSS file paths in development vs production
   - Which elements exist on which pages

2. **Delayed validation** - Actual behavior wasn't verified until after all SCSS changes were complete

3. **Inefficient workflow** - Build → Fix → Test → Fix Test → Re-test cycle instead of Test → Fix → Validate

## Proposed Directive

### When to Write Tests First

**Trigger Conditions:**
- Any bug fix task mentioning "inconsistency", "not working", or "broken"
- Feature requests with verifiable acceptance criteria
- Refactoring tasks affecting user-visible behavior
- Security or accessibility issues

**Exceptions:**
- Exploratory spike work
- Documentation-only changes
- Build/tooling configuration
- Content authoring (practices, concepts, etc.)

### Test-First Workflow

```
1. REPRODUCE the issue
   - Write a failing test that captures the bug
   - Run test → verify it fails for the right reason
   - Document expected vs actual behavior
   
2. FIX the issue
   - Make minimal changes to pass the test
   - Run test → verify it passes
   - Check for regressions
   
3. VALIDATE comprehensively
   - Add edge case tests if needed
   - Verify related functionality still works
   - Document test coverage
```

### Directive Text (Proposed)

```markdown
## Test-First Development

When addressing bugs or implementing features with verifiable behavior:

1. **Before making any code changes**, create a failing test that:
   - Reproduces the reported issue or validates the desired behavior
   - Uses the actual production/development environment setup
   - Clearly documents what "passing" means

2. **Run the test** to confirm it fails for the expected reason
   - If test setup fails, fix the test infrastructure first
   - Document any assumptions about environment or dependencies

3. **Make the minimum change** to make the test pass
   - Avoid "drive-by" refactoring during bug fixes
   - Keep fixes focused and traceable

4. **Validate** the test now passes and no regressions occurred

**Benefits:**
- Tests serve as executable specifications
- Prevents "fixing" things that aren't actually broken
- Catches environment mismatches early
- Creates regression protection automatically

**When to Skip:**
- Exploratory spikes or research tasks
- Documentation or content changes
- Build tooling that can't be easily tested
```

## Evidence from Dark Mode Session

### What Actually Happened

**Original Workflow:**
1. Identified hardcoded colors → Fixed SCSS files
2. Built Hugo site → Verified compilation
3. Created Cypress tests → Tests failed
4. Fixed test implementation (3 iterations)
5. All tests passing

**Time Breakdown:**
- SCSS fixes: ~5 minutes
- Build verification: ~2 minutes  
- Test creation: ~10 minutes
- Test fixes (3 iterations): ~20 minutes
- **Total:** ~37 minutes

### What Could Have Happened (Test-First)

**Improved Workflow:**
1. Reproduced issue with failing test (dark mode not applying)
2. Fixed SCSS files
3. Ran tests → verified passing
4. Added edge case tests

**Estimated Time:**
- Test creation with reproduction: ~12 minutes
- SCSS fixes: ~5 minutes
- Test validation: ~2 minutes
- **Total:** ~19 minutes (~50% reduction)

### Concrete Benefits Observed

1. **Test iteration revealed misunderstandings:**
   - matchMedia stub doesn't work reliably in Cypress
   - CSS file paths differ between dev/prod
   - Need to check which elements exist on test pages

2. **These could have been discovered earlier** by writing tests first

3. **Final test suite is simpler** because test-first would have forced simpler, more direct assertions

## Integration Points

### Where This Directive Should Live

**Option 1: General Directive**
- Location: `agents/directives/010_test-first-development.md`
- Loaded by: All development agents (frontend, backend, etc.)
- Scope: Any code-level change

**Option 2: Specialized Directive**  
- Location: `agents/directives/frontend/test-first-ui-changes.md`
- Loaded by: Frontend Freddy only
- Scope: UI/styling/theme changes

**Recommendation:** Option 1 (General) - principle applies across all development domains

### Related Directives to Update

1. **Bug Fix Workflow** (if exists)
   - Add "Write failing test" as step 1
   - Reference test-first directive

2. **Feature Development** (if exists)
   - Add acceptance test creation before implementation
   - Link to test-first directive

3. **CI/CD Guidelines** (if exists)
   - Emphasize tests must exist before merge
   - Gate deployment on test passage

## Metrics to Track (Optional)

If Curator Claire wants to measure effectiveness:

- **Bug fix cycle time:** Compare before/after directive adoption
- **Test fix iterations:** Count how many times tests need fixing after initial creation
- **Regression rate:** Track issues that reappear after "fixing"

**Hypothesis:** Test-first should reduce all three metrics by 30-50%

## Example Application (This Session)

### If Test-First Was Used

**Step 1: Write Failing Test**
```javascript
it('should display dark background in navbar-clone when dark mode is enabled', () => {
  // Set dark mode
  cy.wrap(Cypress.automation('remote:debugger:protocol', {
    command: 'Emulation.setEmulatedMedia',
    params: { features: [{ name: 'prefers-color-scheme', value: 'dark' }] }
  }));
  
  // Check navbar-clone background
  cy.get('#navbar-clone').should(($clone) => {
    const bg = $clone.css('background-color');
    expect(bg).not.to.equal('rgb(255, 255, 255)'); // Should NOT be white
  });
});
```

**Expected Result:** Test fails (navbar-clone is white in dark mode)

**Step 2: Fix SCSS**
```scss
#navbar-clone {
  background: var(--theme-bg-navbar); // Was: background: $white;
}
```

**Step 3: Validate**
Run test → passes → done

**Time Saved:** ~18 minutes (avoided 3 test fix iterations)

## Questions for Curator Claire

1. **Scope:** Should this be a general directive or frontend-specific?
2. **Enforcement:** Should this be a "MUST" or "SHOULD" guideline?
3. **Exceptions:** Are the listed exceptions appropriate?
4. **Integration:** Should this be merged into existing directives or standalone?
5. **Metrics:** Worth tracking effectiveness or just adopt and observe?

## Recommendation Priority

**Priority:** HIGH  
**Rationale:** Would have saved ~50% of implementation time in this session  
**Impact:** Affects all bug fixes and feature development  
**Risk:** Low - worst case is agents write tests that need adjustment  
**Effort:** Low - single directive file, reference from existing workflows

## Draft Directive File

See proposed text above in "Directive Text (Proposed)" section.

---

**Next Steps:**
1. Curator Claire reviews recommendation
2. If approved, create directive file in `agents/directives/`
3. Update loader script to include new directive
4. Test with next bug fix task
5. Measure effectiveness after 3-5 tasks

