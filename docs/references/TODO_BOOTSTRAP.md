# TODO: Bootstrap Gaps & Next Steps

> Prioritized gaps and next steps for each agent to improve repository structure, documentation, and workflow efficiency.

**Last Updated:** 2025-11-12  
**Status:** Initial bootstrap analysis complete

## Priority Legend

- 🔴 **Critical** — Blocks agent effectiveness or causes errors
- 🟡 **High** — Significant improvement to agent efficiency
- 🟢 **Medium** — Quality of life improvement
- ⚪ **Low** — Nice to have, low impact

---

## Global Repository Gaps

### 🔴 Critical Issues

1. **TOML Front Matter Delimiter Errors** ✅ RESOLVED
   - **Issue:** Draft files had `++` or `++ ` instead of `+++` (previously identified)
   - **Status:** Verified fixed — all draft files now use correct `+++` delimiters
   - **Checked Files:** 
     - `communication_channel_compression.md` ✓
     - `easy_to_change.md` ✓
     - `rotating_meeting_roles.md` ✓
     - `the_hat_you_wear.md` ✓
   - **Impact:** No longer blocks builds with `--buildDrafts=true`
   - **Resolution:** Previously fixed by Writer-Editor Agent

2. **Template Filename Typo** ✅ RESOLVED
   - **Issue:** Documentation referenced non-existent `TEMPATE_CONCEPT.md`
   - **Status:** File is actually `TEMPLATE_CONCEPT.md` (correct)
   - **Location:** `src/templates/TEMPLATE_CONCEPT.md`
   - **Impact:** No action needed — documentation has been corrected
   - **Resolution:** Updated `.repo-structure.md` to remove incorrect reference

### 🟡 High Priority

3. **Validation Workflow Documentation**
   - **Issue:** `validation.yml` exists but purpose/checks unclear
   - **Location:** `.github/workflows/validation.yml`
   - **Impact:** Unclear what validation is performed
   - **Owner:** Scribe Agent
   - **Action:** Document validation workflow in WORKFLOWS.md

4. **README Update Workflow Documentation**
   - **Issue:** `update_readme.yml` exists but trigger/purpose unclear
   - **Location:** `.github/workflows/update_readme.yml`
   - **Impact:** Unclear when/how README is updated
   - **Owner:** Scribe Agent
   - **Action:** Document workflow in WORKFLOWS.md

5. **Glossary Tag Validation**
   - **Issue:** No automated validation that content tags exist in glossary
   - **Impact:** Manual checking required, potential errors
   - **Owner:** Lexical Agent + Curator Agent
   - **Action:** Create validation script or enhance existing validation workflow

### 🟢 Medium Priority

6. **Link Checker**
   - **Issue:** No automated broken link detection
   - **Impact:** Dead links may go unnoticed
   - **Owner:** Curator Agent
   - **Action:** Add link checking to CI pipeline

7. **Image Reference Validation**
   - **Issue:** No validation that referenced images exist
   - **Impact:** Missing images may not be caught until build/preview
   - **Owner:** Frontend Agent + Curator Agent
   - **Action:** Add image validation script

8. **Build Status Badge**
   - **Issue:** No build status badge in README.md
   - **Impact:** Build status not immediately visible
   - **Owner:** Scribe Agent
   - **Action:** Add GitHub Actions build badge to README

9. **Hugo Version Documentation** ✅ RESOLVED
   - **Issue:** Hugo version needs to be documented in AGENTS.md
   - **Status:** Added to AGENTS.md repository quick reference
   - **Documented Version:** 0.152.2 extended (matches CI/CD workflows)
   - **Impact:** Clear version requirement for developers
   - **Resolution:** Updated AGENTS.md with Hugo version and bootstrap artefact references

### ⚪ Low Priority

10. **Performance Monitoring**
    - **Issue:** No lighthouse CI or performance budgets
    - **Impact:** Performance regressions may go unnoticed
    - **Owner:** Frontend Agent
    - **Action:** Add lighthouse CI workflow

11. **Dependency Vulnerability Scanning**
    - **Issue:** No automated dependency scanning
    - **Impact:** Security vulnerabilities may accumulate
    - **Owner:** Architect Agent
    - **Action:** Add Dependabot or similar scanning

12. **Release Notes Automation**
    - **Issue:** No automated release notes or versioning
    - **Impact:** Manual changelog maintenance
    - **Owner:** Curator Agent
    - **Action:** Consider semantic-release or changelog automation

---

## Agent-Specific Tasks

### Bootstrap Bill (Repository Structure Agent)

**Completed:**
- ✅ Generated REPO_MAP.md (9.8KB)
- ✅ Generated SURFACES.md (9.2KB)
- ✅ Generated CONTEXT_LINKS.md (11.2KB)
- ✅ Generated WORKFLOWS.md (12.7KB)
- ✅ Generated TODO_BOOTSTRAP.md (13.8KB)
- ✅ Updated AGENTS.md with Hugo version and bootstrap artefact references
- ✅ Fixed .repo-structure.md template typo reference
- ✅ Verified TOML delimiter fixes in draft files

**Next Steps:**

1. ⚪ **Create Canonical Structure Directory**
   - Consider creating `/structure/` as canonical location for bootstrap artefacts
   - Currently in `/docs/` which serves dual purpose
   - Low priority — current location works well

2. ⚪ **Update .gitignore Documentation**
   - Document what's excluded and why in a dedicated file
   - Ensure consistency with actual exclusions
   - Low priority — covered in REPO_MAP.md

---

### Curator (Content Quality Agent)

**Responsibilities:**
- Content consistency
- Cross-linking validation
- Taxonomy management
- Quality assurance

**Next Steps:**

1. 🟡 **Implement Glossary Tag Validation** (Gap #5)
   - Create script to validate all content tags exist in `data/glossary.toml`
   - Integrate into validation workflow

2. 🟢 **Add Link Checker** (Gap #6)
   - Integrate broken link detection (e.g., linkchecker, htmltest)
   - Add to CI pipeline

3. 🟢 **UUID Uniqueness Check**
   - Ensure all practice/concept UUIDs are unique
   - Create validation script

4. 🟢 **Cross-Reference Validation**
   - Validate `related_concepts` and `related_practices` references exist
   - Detect orphaned content

5. ⚪ **Consistency Pass Automation** (Gap #12)
   - Document consistency pass checklist
   - Consider automation for common fixes

---

### Diagrammer (Diagram Generation Agent)

**Responsibilities:**
- PlantUML diagram creation
- Architecture visualization
- Flow charts

**Next Steps:**

1. 🟢 **PlantUML Build Integration**
   - Document PlantUML rendering workflow
   - Consider automated rendering in CI

2. 🟢 **Diagram Inventory**
   - Create catalog of existing diagrams
   - Document diagram standards

3. ⚪ **Diagram Validation**
   - Validate `.puml` files compile
   - Ensure SVG outputs are current

---

### Frontend (UI/Layout Agent)

**Responsibilities:**
- Hugo layouts
- SCSS/CSS
- JavaScript
- Responsive design

**Next Steps:**

1. 🟢 **Image Reference Validation** (Gap #7)
   - Create script to validate image references in front matter
   - Check image files exist

2. 🟢 **Asset Pipeline Documentation**
   - Document SCSS compilation process
   - Document asset optimization

3. ⚪ **Performance Monitoring** (Gap #10)
   - Add lighthouse CI
   - Set performance budgets
   - Monitor bundle sizes

4. ⚪ **Accessibility Audit**
   - Run automated accessibility checks
   - Document accessibility standards

---

### Lexical (Glossary/Terminology Agent)

**Responsibilities:**
- `data/glossary.toml` management
- Tag taxonomy
- Terminology consistency

**Next Steps:**

1. 🟡 **Glossary Tag Validation** (Gap #5)
   - Partner with Curator to implement validation
   - Ensure all content tags have glossary entries

2. 🟢 **Glossary Coverage Analysis**
   - Identify frequently used tags without definitions
   - Propose new glossary entries

3. 🟢 **Glossary Quality Review**
   - Review descriptions for clarity
   - Add missing aliases
   - Add references where appropriate

4. ⚪ **Cross-Locale Glossary Sync**
   - Ensure `glossary_nl.toml` mirrors `glossary.toml` structure
   - Identify missing translations

---

### Researcher (Research & Verification Agent)

**Responsibilities:**
- Bibliography management
- Source verification
- Citation checking

**Next Steps:**

1. 🟢 **Bibliography Completeness**
   - Review `data/bibliography.toml` for missing fields
   - Ensure all books have ISBNs (where applicable)

2. 🟢 **Citation Validation**
   - Verify book references in practices/concepts exist in bibliography
   - Detect broken bibliography links

3. ⚪ **Bibliography Enrichment**
   - Add missing book covers
   - Add publisher information
   - Enhance descriptions

---

### Scribe (Documentation Agent)

**Responsibilities:**
- Technical writing
- Documentation maintenance
- README upkeep

**Next Steps:**

1. 🟡 **Document Validation Workflow** (Gap #3)
   - Inspect `validation.yml` workflow
   - Document in WORKFLOWS.md

2. 🟡 **Document README Update Workflow** (Gap #4)
   - Inspect `update_readme.yml` workflow
   - Document in WORKFLOWS.md

3. 🟢 **Add Build Status Badge** (Gap #8)
   - Add GitHub Actions badge to README
   - Consider badges for coverage, dependencies

4. 🟢 **Contributing Guide Review**
   - Update CONTRIBUTING.md with current workflow
   - Add content authoring guidelines

5. ⚪ **Documentation Site Map**
   - Create comprehensive documentation index
   - Improve discoverability

---

### Synthesizer (Content Aggregation Agent)

**Responsibilities:**
- Cross-linking
- Pattern detection
- Content relationships

**Next Steps:**

1. 🟢 **Related Content Recommendations**
   - Analyze content for missing cross-links
   - Suggest `related_concepts` and `related_practices`

2. 🟢 **Tag Cloud Analysis**
   - Identify most common tags
   - Suggest tag consolidation where appropriate

3. ⚪ **Content Gap Analysis**
   - Identify concepts referenced but not documented
   - Suggest new practice topics

---

### Writer-Editor (Content Editing Agent)

**Responsibilities:**
- Content editing
- Style consistency
- Grammar/clarity

**Next Steps:**

1. 🔴 **Fix TOML Delimiters** (Gap #1)
   - Fix draft files with incorrect `++` delimiters
   - Update to `+++` or publish if ready

2. 🟢 **Draft Content Review**
   - Review draft practices/concepts
   - Identify candidates for publication

3. 🟢 **Style Guide Enforcement**
   - Document writing style preferences
   - Ensure consistency across content

4. ⚪ **Front Matter Typo Cleanup**
   - Fix `further_exporlation` typo in concept template
   - Search for instances in published content

---

### Architect (Architecture Decision Agent)

**Responsibilities:**
- System design
- Technical decisions
- Infrastructure

**Next Steps:**

1. 🟢 **Security Scanning** (Gap #11)
   - Add Dependabot configuration
   - Consider CodeQL or similar scanning

2. 🟢 **Hugo Module Strategy**
   - Document module update process
   - Consider version pinning strategy

3. ⚪ **Infrastructure as Code**
   - Consider documenting Netlify configuration
   - Document deployment architecture

4. ⚪ **Backup & Recovery**
   - Document backup strategy for content
   - Consider disaster recovery plan

---

## Workflow Improvements

### Testing Infrastructure

**Current State:** Limited automated testing

**Proposed Enhancements:**

1. 🟡 **Content Validation Suite**
   - TOML front matter validation
   - Tag existence validation
   - UUID uniqueness validation
   - Required section validation

2. 🟢 **Build Smoke Tests**
   - Ensure build completes without errors
   - Check for 404s in generated site
   - Validate asset references

3. 🟢 **Integration Tests**
   - Test book generation script
   - Test diagram rendering
   - Test CSS minification

4. ⚪ **Visual Regression Testing**
   - Screenshot comparison for layout changes
   - Prevent unintended visual changes

### CI/CD Enhancements

**Current State:** Basic build and deploy workflows

**Proposed Enhancements:**

1. 🟢 **Parallel Workflows**
   - Run linting, testing, building in parallel
   - Faster feedback on PRs

2. 🟢 **PR Preview Environments**
   - Deploy PR previews for review
   - Auto-cleanup on PR close

3. ⚪ **Deployment Rollback**
   - Document rollback procedure
   - Consider blue-green deployment

4. ⚪ **Cache Optimization**
   - Cache Hugo modules
   - Cache npm dependencies
   - Faster CI builds

### Documentation Improvements

**Current State:** Good foundational documentation, some gaps

**Proposed Enhancements:**

1. 🟡 **Complete Workflow Documentation** (Gaps #3, #4)
   - Document all 5 GitHub Actions workflows
   - Add workflow diagrams

2. 🟢 **Contributor Onboarding**
   - Create step-by-step guide for first contribution
   - Document local development setup

3. 🟢 **Agent Onboarding**
   - Create agent-specific quick start guides
   - Document common agent workflows

4. ⚪ **Architecture Decision Records**
   - Document key technical decisions
   - Explain Hugo theme choice, module strategy, etc.

---

## Timeline Recommendations

### Immediate (Next Sprint)

- ✅ ~~Fix TOML delimiter errors (Gap #1)~~ — COMPLETED (previously fixed)
- ✅ ~~Fix template typo and update Hugo version docs (Gaps #2, #9)~~ — COMPLETED
- 🟡 Document validation and README update workflows (Gaps #3, #4)
- 🟡 Implement glossary tag validation (Gap #5)

### Short-term (1-2 Months)

- ✅ ~~Fix template typo and update Hugo version docs (Gaps #2, #9)~~ — COMPLETED
- 🟢 Add link checker and image validation (Gaps #6, #7)
- 🟢 Add build status badge (Gap #8)
- 🟢 Review and publish draft content

### Medium-term (3-6 Months)

- 🟢 Enhance CI/CD with testing suite
- 🟢 Add security scanning
- ⚪ Implement performance monitoring
- ⚪ Create PR preview environments

### Long-term (6+ Months)

- ⚪ Release notes automation
- ⚪ Visual regression testing
- ⚪ Architecture decision records
- ⚪ Comprehensive contributor onboarding

---

## Success Metrics

**Repository Health:**
- Zero critical build errors
- All tags validated against glossary
- No broken links
- All images referenced exist

**Developer Experience:**
- Clear documentation for all workflows
- Fast CI/CD feedback (<5 minutes)
- Easy local development setup

**Content Quality:**
- All published content follows templates
- Consistent front matter
- Complete cross-linking
- No orphaned content

**Agent Effectiveness:**
- Clear bootstrap artefacts
- Comprehensive context documentation
- Minimal re-parsing of repository structure
- Efficient task delegation

---

**Next Review:** After implementing immediate/short-term items  
**Owner:** Bootstrap Bill Agent (with input from all agents)  
**Update Frequency:** Monthly or after significant structural changes
