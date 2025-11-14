# Custom Theme Extraction Vision
## Pragmatic Penguin Theme: A Strangler Vine Approach

**Date:** 2025-11-14  
**Agent:** Project Planner  
**Status:** Planning - Awaiting Review

---

## Executive Summary

This document outlines a **cautious, incremental strategy** for extracting the highly customized hugo-fresh theme into a standalone, reusable SDD-branded theme. The approach applies the "Strangler Vine" pattern to legacy deprecation: first self-contain the deprecated modules, then incrementally extract functionality while ensuring continuous non-regression.

**Working Title:** `pragmatic-penguin` theme  
**Target Outcome:** An independently maintainable, reusable Hugo theme suitable for SDD knowledge repositories

---

## Current State Assessment

### Architecture Overview

```
Current Stack (as of Nov 2025):
├── Hugo v0.152.2 extended
├── hugo-fresh v1.0.0 (via Hugo modules)
│   └── Layouts + partial templates
├── Bulma CSS v1.0.4 (recently upgraded from v0.9.4)
│   └── Core framework (via Hugo modules)
└── Custom Overrides (SDD-specific)
    ├── /assets/styles/domains/*.scss (10 custom files, 15KB total)
    ├── /assets/styles/_settings.scss (brand palette, spacing scale)
    ├── /assets/style.sass (Bulma v1.x module import override)
    └── /layouts/* (25+ template overrides)
```

### Customization Inventory

**Custom SCSS Files** (`/assets/styles/domains/`):
1. `custom.scss` - Site-wide overrides (P1 critical)
2. `patterns.scss` - Practice/concept page styling (P1 critical)
3. `ammerse.scss` - AMMERSE radar visualization (P2 important)
4. `glossary.scss` - Glossary page styling (P2 important)
5. `taxonomies.scss` - Tag/category pages (P2 important)
6. `toc.scss` - Table of contents styling (P3 minor)
7. `quotes.scss` - Blockquote styling (P3 minor)
8. `recommendations.scss` - Reading recommendations (P3 minor)
9. `images.scss` - Image display rules (P4 minimal)
10. `visualization.scss` - Diagram styling (P4 minimal)

**Custom Variables** (`/assets/styles/_settings.scss`):
- Brand palette (primary: #f39200, secondary: #1e75c0, dark: #1c3337)
- Spacing scale (14 custom values from 0.15rem to 4.5rem)
- Custom breakpoints (desktop: 1024px, tablet: 800px)
- Font stack (d-din, literta, Gill Sans, Open Sans)

**Layout Overrides** (`/layouts/`):
- Custom partials: 25+ files (navbar, hero, footer, pattern rendering, etc.)
- Base templates: `baseof.html`, `single.html` (modified)
- Shortcodes: Custom rendering logic
- Section templates: practices, concepts, primers, glossary, etc.

**Static Assets**:
- Custom fonts (d-din, littera)
- SVG diagrams and illustrations
- Hero images (WebP format)
- Brand logos

### Recent Changes Context

**Bulma Upgrade (Completed Nov 13, 2025):**
- Successfully migrated from v0.9.4 → v1.0.4
- Zero breaking changes to custom stylesheets
- Created `/assets/style.sass` to override theme's Bulma import
- All 10 custom domain stylesheets remain unchanged
- Build time: ~1.4s, 268 pages generated
- Stylelint: 0 errors

**Key Learning:** Custom stylesheets are already well-isolated from theme dependencies.

---

## Problem Statement

### Risks with Current Approach

1. **Maintenance Dependency**
   - hugo-fresh theme last updated 2021-2022 (effectively unmaintained)
   - Bulma upgrades require manual theme patching
   - Community support minimal for hugo-fresh
   - **Impact:** High effort for future dependency updates

2. **Reusability Constraints**
   - Theme customizations tightly coupled to this repository
   - Cannot easily apply PPP styling to other SDD knowledge bases
   - Requires duplicating customization work across projects
   - **Impact:** Reduced organizational efficiency

3. **Upgrade Friction**
   - Dependency collisions (e.g., DART Sass compatibility required manual intervention)
   - Difficult to adopt new Hugo features without theme updates
   - Custom overrides scattered across `/layouts/` and `/assets/`
   - **Impact:** Technical debt accumulation

4. **Performance Optimization Limits**
   - Cannot implement advanced asset bundling strategies
   - Limited control over critical CSS extraction
   - Automatic image optimization blocked by theme structure
   - Bundle size optimization requires deep theme modifications
   - **Impact:** Constrained performance ceiling

### Value Proposition

**A custom `pragmatic-penguin` theme would:**

✅ **Enable reuse** across multiple SDD knowledge repositories  
✅ **Eliminate dependency** on unmaintained hugo-fresh theme  
✅ **Simplify upgrades** to Hugo and Bulma versions  
✅ **Unlock optimization** capabilities (critical CSS, image processing, tree-shaking)  
✅ **Provide control** over HTML structure and semantic markup  
✅ **Support innovation** in visualization and interactive content

**Target Use Cases:**
- Additional SDD pattern libraries (security, architecture, etc.)
- Client knowledge bases using SDD branding
- Internal documentation sites with consistent styling
- Course materials and presentation sites

---

## Strategic Approach: Strangler Vine Pattern

### Pattern Overview

The Strangler Vine approach incrementally replaces legacy systems by:
1. **Isolating** the legacy system (make it a first-class dependency)
2. **Wrapping** functionality in new interfaces (theme abstraction layer)
3. **Migrating** features incrementally (component-by-component)
4. **Validating** continuously (ensure zero visual/functional regressions)
5. **Removing** legacy code only when replacement is proven stable

**Why This Approach:**
- Minimizes risk of catastrophic failures
- Allows rollback at any phase boundary
- Maintains production stability throughout
- Enables learning and adjustment based on real-world feedback
- Respects the "Easy to Change" principle from the knowledge base

### Risk Mitigation Strategy

**Testing Approach:**
- Visual regression testing at each phase
- Build validation after every change
- Hugo server smoke tests
- Lighthouse performance benchmarking
- Cross-browser testing (Chrome, Firefox, Safari)

**Rollback Plans:**
- Git branch per phase
- Checkpoint tagging before major changes
- Hugo module version pinning
- Configuration snapshots

**Success Criteria Per Phase:**
- Zero visual differences (pixel-perfect comparison)
- Build time ≤ current baseline (+/- 10%)
- All Hugo tests pass
- Stylelint reports 0 errors
- Lighthouse performance score maintained or improved

---

## Phase Breakdown

### Phase 0: Foundation and Preparation
**Duration Estimate:** 2-3 days  
**Risk Level:** Low  
**Effort:** Medium

**Objectives:**
- Establish vendor directory structure
- Document current theme dependencies
- Create testing baseline
- Set up parallel build environment

**Tasks:**
1. **Repository Setup**
   - [ ] Create `/themes/pragmatic-penguin/` directory structure
   - [ ] Initialize theme configuration (`theme.toml`)
   - [ ] Set up Hugo module structure for theme
   - [ ] Document directory conventions

2. **Baseline Documentation**
   - [ ] Audit all hugo-fresh dependencies (layouts, partials, assets)
   - [ ] Create visual regression baseline (screenshots of all page types)
   - [ ] Document current build pipeline
   - [ ] Map custom overrides to theme locations

3. **Testing Infrastructure**
   - [ ] Set up Percy or BackstopJS for visual regression
   - [ ] Create automated screenshot comparison workflow
   - [ ] Establish Lighthouse performance baseline
   - [ ] Document smoke test procedures

4. **Parallel Build Environment**
   - [ ] Configure dual-theme build (hugo-fresh vs. pragmatic-penguin)
   - [ ] Create comparison script
   - [ ] Set up local development toggle
   - [ ] Validate theme switching mechanism

**Deliverables:**
- `/themes/pragmatic-penguin/` skeleton
- Visual regression test suite
- Baseline performance report
- Theme dependency map
- Rollback documentation

**Validation:**
- Themes directory created and recognized by Hugo
- Visual test suite runs successfully
- Baseline screenshots captured for all major page types
- Documentation complete and peer-reviewed

**Assigned Agents:**
- **Bootstrap Bill:** Repository scaffolding and directory structure
- **Build Automation:** Testing infrastructure setup
- **Front-End Specialist:** Visual regression baseline creation

---

### Phase 1: Vendor and Isolate
**Duration Estimate:** 3-4 days  
**Risk Level:** Low-Medium  
**Effort:** Medium-High

**Objectives:**
- Create local copy of hugo-fresh theme
- Sever dependency on external hugo-fresh module
- Ensure 100% functional parity
- Establish theme as first-class dependency

**Tasks:**
1. **Theme Vendoring**
   - [ ] Clone hugo-fresh theme structure into `/themes/pragmatic-penguin/`
   - [ ] Copy all layouts, partials, and assets from hugo-fresh
   - [ ] Preserve original file structure initially
   - [ ] Document all copied files with source attribution

2. **Configuration Migration**
   - [ ] Update `config.yaml` to reference local theme
   - [ ] Remove `module.imports` for hugo-fresh
   - [ ] Preserve all theme parameters
   - [ ] Validate theme loading

3. **Dependency Reconciliation**
   - [ ] Keep Bulma as Hugo module dependency
   - [ ] Verify Bulma v1.0.4 compatibility
   - [ ] Update `/assets/style.sass` theme reference
   - [ ] Test SCSS compilation

4. **Functional Validation**
   - [ ] Build site with vendored theme
   - [ ] Compare against hugo-fresh baseline
   - [ ] Visual regression test (should be identical)
   - [ ] Performance benchmark comparison

**Deliverables:**
- Fully vendored theme in `/themes/pragmatic-penguin/`
- Updated Hugo configuration
- Validation report (visual + functional)
- Attribution documentation

**Validation:**
- Hugo build successful with local theme
- Pixel-perfect visual match to baseline
- Build time within 10% of baseline
- All pages render identically
- No console errors or warnings

**Assigned Agents:**
- **Bootstrap Bill:** Theme directory setup and file copying
- **Build Automation:** Configuration migration and validation
- **Front-End Specialist:** Visual regression validation

---

### Phase 2: Rebrand and Customize
**Duration Estimate:** 2-3 days  
**Risk Level:** Low  
**Effort:** Low-Medium

**Objectives:**
- Rename theme to reflect SDD branding
- Update metadata and documentation
- Apply SDD visual identity consistently
- Cut ties with upstream hugo-fresh

**Tasks:**
1. **Theme Rebranding**
   - [ ] Rename theme references from "fresh" to "pragmatic-penguin"
   - [ ] Update `theme.toml` metadata (name, description, author)
   - [ ] Create theme README.md with usage instructions
   - [ ] Update LICENSE file for theme

2. **Asset Organization**
   - [ ] Reorganize theme assets by domain (base, components, layouts, utilities)
   - [ ] Update SCSS import paths
   - [ ] Consolidate custom variables into theme
   - [ ] Document asset structure

3. **Configuration Cleanup**
   - [ ] Remove unused theme parameters from `config.yaml`
   - [ ] Document required vs. optional configuration
   - [ ] Create example configuration file
   - [ ] Update theme defaults

4. **Documentation**
   - [ ] Write theme installation guide
   - [ ] Document customization points
   - [ ] Create changelog (initial version)
   - [ ] Add contribution guidelines

**Deliverables:**
- Rebranded theme with SDD identity
- Theme documentation (README, installation guide)
- Example configuration file
- Updated Hugo configuration

**Validation:**
- Theme builds under new name
- All references updated correctly
- Documentation complete and accurate
- Visual output unchanged from Phase 1

**Assigned Agents:**
- **Front-End Specialist:** Asset reorganization and branding
- **Scribe:** Documentation creation
- **Lexical Analyst:** Style guide compliance review

---

### Phase 3: Migrate Custom Overrides (Iterative)
**Duration Estimate:** 5-7 days  
**Risk Level:** Medium  
**Effort:** High

**Objectives:**
- Move custom SCSS from `/assets/` into theme
- Migrate layout overrides from `/layouts/` into theme
- Maintain backward compatibility
- Validate incrementally per component

**Strategy:**
- Migrate in priority order (P1 → P2 → P3 → P4)
- One component domain at a time
- Test after each migration
- Keep repository-specific overrides separate from theme

**Tasks:**

**3.1: Critical Path (P1) - Days 1-3**
- [ ] Migrate `custom.scss` → `/themes/pragmatic-penguin/assets/scss/domains/custom.scss`
- [ ] Migrate `patterns.scss` → theme domains
- [ ] Move pattern layout templates (`/layouts/practices/`, `/layouts/concepts/`)
- [ ] Test practice and concept pages thoroughly
- [ ] Visual regression validation

**3.2: Important Components (P2) - Days 4-5**
- [ ] Migrate `ammerse.scss` → theme (AMMERSE visualization)
- [ ] Migrate `glossary.scss` → theme
- [ ] Migrate `taxonomies.scss` → theme
- [ ] Move corresponding layout templates
- [ ] Test glossary, AMMERSE radar, and taxonomy pages

**3.3: Minor Components (P3) - Day 6**
- [ ] Migrate `toc.scss`, `quotes.scss`, `recommendations.scss`
- [ ] Move supporting partials
- [ ] Batch test all minor components

**3.4: Minimal Impact (P4) - Day 7**
- [ ] Migrate `images.scss`, `visualization.scss`
- [ ] Final cleanup of `/assets/` directory
- [ ] Remove unused repository-level overrides

**3.5: Integration and Refinement**
- [ ] Consolidate SCSS imports in theme
- [ ] Optimize build pipeline
- [ ] Update theme documentation for customization points
- [ ] Create example override patterns

**Deliverables:**
- All custom SCSS integrated into theme
- All layout overrides moved to theme
- Clean `/assets/` and `/layouts/` directories (repository-specific only)
- Updated theme documentation
- Migration report with before/after analysis

**Validation:**
- Visual regression tests pass for all components
- Build time maintained or improved
- Stylelint 0 errors
- All page types render correctly
- Repository-level configuration still works

**Assigned Agents:**
- **Front-End Specialist:** SCSS migration and component styling
- **Bootstrap Bill:** File organization and directory management
- **Build Automation:** Continuous integration validation
- **Lexical Analyst:** Documentation updates

---

### Phase 4: Optimization and Enhancement
**Duration Estimate:** 3-4 days  
**Risk Level:** Medium  
**Effort:** Medium

**Objectives:**
- Remove unused Bulma components (tree-shaking)
- Implement critical CSS extraction
- Optimize asset bundling
- Enable automatic image processing

**Tasks:**
1. **CSS Optimization**
   - [ ] Audit Bulma component usage
   - [ ] Create custom Bulma build (only required modules)
   - [ ] Implement critical CSS inline strategy
   - [ ] Configure async loading for non-critical CSS
   - [ ] Measure bundle size reduction

2. **Image Processing Pipeline**
   - [ ] Configure Hugo's image processing
   - [ ] Implement responsive image srcset generation
   - [ ] Set up WebP conversion with fallbacks
   - [ ] Enable lazy loading for below-fold images
   - [ ] Test on all page types

3. **Asset Bundling**
   - [ ] Implement fingerprinting for cache busting
   - [ ] Configure asset compression (minification)
   - [ ] Set up CSS/JS concatenation
   - [ ] Optimize font loading strategy
   - [ ] Test resource loading performance

4. **Performance Validation**
   - [ ] Run Lighthouse audits
   - [ ] Measure Core Web Vitals (LCP, FCP, CLS)
   - [ ] Compare against baseline
   - [ ] Target: 90%+ Lighthouse score
   - [ ] Document performance improvements

**Deliverables:**
- Optimized theme with reduced bundle size
- Critical CSS implementation
- Image processing pipeline
- Performance improvement report
- Optimization documentation

**Validation:**
- Bundle size reduced by 20%+ target
- LCP < 1.2s (improved from 1.5s baseline)
- Lighthouse score ≥ 90%
- Visual rendering unchanged
- All images properly optimized

**Assigned Agents:**
- **Front-End Specialist:** CSS optimization and performance tuning
- **Build Automation:** Asset pipeline configuration
- **Architect:** Performance trade-off analysis and documentation

---

### Phase 5: Repository Extraction (Future Scope)
**Duration Estimate:** 2-3 days  
**Risk Level:** Low-Medium  
**Effort:** Medium

**Objectives:**
- Extract theme into standalone repository
- Set up theme as Hugo module dependency
- Maintain non-regression in original repository
- Enable theme reuse across projects

**Tasks:**
1. **Repository Creation**
   - [ ] Create new repository: `sddevelopment-be/hugo-theme-pragmatic-penguin`
   - [ ] Initialize with theme files from `/themes/pragmatic-penguin/`
   - [ ] Set up proper LICENSE (likely MIT or Apache 2.0)
   - [ ] Create comprehensive README
   - [ ] Initialize Git history

2. **Hugo Module Setup**
   - [ ] Configure theme as Hugo module
   - [ ] Create `go.mod` for theme
   - [ ] Set up semantic versioning (start at v0.1.0)
   - [ ] Document module usage

3. **Main Repository Migration**
   - [ ] Update `config.yaml` to use theme module
   - [ ] Add theme module to `go.mod`
   - [ ] Remove local `/themes/pragmatic-penguin/` directory
   - [ ] Test module import and build

4. **CI/CD Setup**
   - [ ] Configure GitHub Actions for theme repository
   - [ ] Set up automated tests on theme changes
   - [ ] Implement release workflow
   - [ ] Create versioning strategy

5. **Documentation**
   - [ ] Write theme usage guide
   - [ ] Document configuration options
   - [ ] Create customization examples
   - [ ] Add migration guide for users

**Deliverables:**
- Standalone theme repository with full history
- Hugo module configuration
- Main repository using theme as module
- CI/CD pipeline for theme
- Complete theme documentation

**Validation:**
- Main repository builds with theme module
- Visual output identical to Phase 4
- Theme can be imported by other projects
- Automated tests pass
- Documentation complete

**Assigned Agents:**
- **Build Automation:** Repository setup and CI/CD
- **Bootstrap Bill:** Module configuration and structure
- **Scribe:** Documentation creation
- **Curator:** Cross-repository consistency review

---

## Agent Assignment Strategy

### Collaboration Model

The theme extraction project leverages SDD's multi-agent system with clear responsibility boundaries:

```
┌─────────────────┐
│ Project Planner │ (Coordination, dependency mapping)
└────────┬────────┘
         │
    ┌────┴─────────────────────────────────┐
    │                                      │
┌───▼──────────┐                    ┌─────▼────────┐
│ Architect    │                    │ Frontend     │
│ (Trade-offs, │◄──────────────────►│ (Components, │
│  ADRs)       │                    │  styling)    │
└───┬──────────┘                    └─────┬────────┘
    │                                      │
    │         ┌──────────────┐            │
    └────────►│ Bootstrap    │◄───────────┘
              │ Bill         │
              │ (Scaffolding)│
              └──────┬───────┘
                     │
         ┌───────────┴──────────┬──────────────┐
         │                      │              │
    ┌────▼──────┐      ┌────────▼─────┐  ┌────▼──────┐
    │ Build     │      │ Scribe       │  │ Lexical   │
    │ Automation│      │ (Docs)       │  │ Analyst   │
    │ (CI/CD)   │      └──────────────┘  │ (Style)   │
    └───────────┘                        └───────────┘
```

### Agent Responsibilities by Phase

| Phase | Primary Agent | Supporting Agents | Deliverable |
|-------|--------------|-------------------|-------------|
| **0: Foundation** | Bootstrap Bill | Build Automation, Frontend | Scaffolding + Tests |
| **1: Vendor** | Bootstrap Bill | Build Automation, Frontend | Vendored Theme |
| **2: Rebrand** | Frontend | Scribe, Lexical | Branded Theme |
| **3: Migrate** | Frontend | Bootstrap Bill, Build Auto | Integrated Customizations |
| **4: Optimize** | Frontend | Architect, Build Auto | Performance Improvements |
| **5: Extract** | Build Automation | Bootstrap Bill, Scribe | Standalone Repository |

### Handoff Protocol

Each phase follows this handoff pattern:

1. **Initiation:** Project Planner validates prerequisites and approves start
2. **Execution:** Primary agent executes tasks with supporting agent assistance
3. **Validation:** Build Automation runs automated tests
4. **Review:** Architect reviews trade-offs; Lexical reviews documentation
5. **Closure:** Scribe documents outcomes; Project Planner approves next phase

### Communication Standards

**Status Updates:**
- Daily status notes in `/planning/AGENT_TASKS.md`
- Blockers surfaced immediately via issue labels
- Phase completion reports in `/docs/collaboration/`

**Decision Capture:**
- Architectural decisions → ADR format (Architect)
- Technical choices → Inline documentation (Frontend)
- Process learnings → Retrospective notes (Scribe)

---

## Risk Assessment

### High-Priority Risks

**Risk 1: Visual Regressions During Migration**
- **Probability:** Medium
- **Impact:** High (user-facing)
- **Mitigation:** 
  - Comprehensive visual regression testing
  - Per-component validation
  - Pixel-perfect screenshot comparison
  - Rollback plan at each phase boundary
- **Contingency:** Revert to last stable phase checkpoint

**Risk 2: Build Time Degradation**
- **Probability:** Low-Medium
- **Impact:** Medium (developer experience)
- **Mitigation:**
  - Performance benchmarking after each change
  - Build time budget: ≤ 10% increase
  - Asset optimization in Phase 4
- **Contingency:** Optimize pipeline or delay optimization phase

**Risk 3: Theme Configuration Breaking Changes**
- **Probability:** Low
- **Impact:** High (breaking production builds)
- **Mitigation:**
  - Maintain backward compatibility
  - Incremental configuration migration
  - Comprehensive testing before extraction
  - Version pinning for dependencies
- **Contingency:** Maintain compatibility shim in repository

### Medium-Priority Risks

**Risk 4: Lost Customization Context**
- **Probability:** Medium
- **Impact:** Medium (maintainability)
- **Mitigation:**
  - Thorough documentation during migration
  - Code comments for custom solutions
  - ADRs for architectural decisions
- **Contingency:** Reverse-engineer from git history

**Risk 5: Hugo/Bulma Version Lock-In**
- **Probability:** Low
- **Impact:** Medium (future upgrades)
- **Mitigation:**
  - Version ranges in module configuration
  - Compatibility testing matrix
  - Regular dependency updates
- **Contingency:** Pin to known-good versions

**Risk 6: Specialist Agent Availability**
- **Probability:** Low
- **Impact:** Medium (timeline delays)
- **Mitigation:**
  - Clear agent assignment up front
  - Documented handoff protocols
  - Parallel track options
- **Contingency:** Project Planner can execute with reduced efficiency

---

## Next Steps and Scope Boundaries

### Immediate Next Steps (Within Scope)

**After Plan Approval:**
1. **Review and Refinement** (0.5 days)
   - Stakeholder review of this vision document
   - Gather feedback and adjust approach
   - Finalize agent assignments
   - Approve to proceed

2. **Phase 0 Kickoff** (1 day)
   - Bootstrap Bill: Create theme skeleton
   - Build Automation: Set up visual regression tests
   - Frontend: Capture baseline screenshots
   - Document current state

3. **Phase 1 Execution** (3-4 days)
   - Vendor hugo-fresh theme
   - Validate functional parity
   - Document vendored structure

### Explicitly Out of Scope

**Not Included in This Initiative:**

❌ **Complete UI/UX redesign** - Theme preserves existing visual design  
❌ **New feature development** - Focus is extraction, not enhancement (except optimizations in Phase 4)  
❌ **Multi-theme support** - Repository will use single theme  
❌ **Theme marketplace publication** - Focus on SDD internal reuse  
❌ **Automated theme updates** - Manual version management initially  
❌ **Third-party theme support** - Pragmatic Penguin only  
❌ **Dynamic theming (dark mode, etc.)** - Future consideration  
❌ **Component library exports** - Theme is Hugo-specific

### Deferred for Future Consideration

**Post-Extraction Enhancements:**
- Dark mode support
- Additional color scheme variants
- Component library documentation site
- Theme preview/demo site
- Automated dependency update workflow
- Community contribution guidelines
- Theme plugin architecture

### Decision Gates

**Proceed/No-Go Checkpoints:**

1. **After Phase 0:** Decide if baseline testing is sufficient
2. **After Phase 1:** Validate vendored theme before rebrand
3. **After Phase 3:** Assess if optimization phase is needed now or later
4. **After Phase 4:** Determine timeline for extraction to separate repo

Each gate requires:
- Technical validation (tests pass)
- Stakeholder approval (meets requirements)
- Resource confirmation (agents available for next phase)

---

## Success Metrics

### Technical Metrics

**Build Quality:**
- ✅ Hugo build completes successfully
- ✅ Zero SCSS compilation errors
- ✅ Stylelint reports 0 errors
- ✅ All Hugo tests pass
- ✅ Visual regression tests pass (100% pixel match)

**Performance:**
- ✅ Build time ≤ baseline + 10% (currently ~1.4s)
- ✅ CSS bundle size reduction ≥ 20% (Phase 4)
- ✅ Lighthouse performance score ≥ 90% (Phase 4)
- ✅ LCP < 1.2s (improved from 1.5s)
- ✅ First Contentful Paint maintained < 0.8s

**Maintainability:**
- ✅ Theme fully documented
- ✅ Customization points clearly defined
- ✅ Zero dependencies on hugo-fresh
- ✅ Clean separation: theme vs. repository-specific code
- ✅ Semantic versioning established

### Organizational Metrics

**Reusability:**
- ✅ Theme can be imported as Hugo module
- ✅ Configuration documented with examples
- ✅ Standalone repository functional
- ✅ No repository-specific hard-coding in theme

**Knowledge Transfer:**
- ✅ Complete theme usage documentation
- ✅ Customization guide written
- ✅ ADRs capture key decisions
- ✅ Migration lessons documented

**Risk Reduction:**
- ✅ Zero visual regressions introduced
- ✅ Rollback capability maintained
- ✅ Hugo/Bulma upgrade path clarified
- ✅ Technical debt reduced

---

## Envisioned Extraction to Separate Repository

### Post-Extraction Architecture

```
┌──────────────────────────────────────────────────┐
│ sddevelopment-be/hugo-theme-pragmatic-penguin    │
│ (Standalone Theme Repository)                    │
│                                                  │
│ /layouts          Theme templates                │
│ /assets           SCSS, JS, fonts                │
│ /static           Theme-specific static files    │
│ theme.toml        Theme metadata                 │
│ go.mod            Hugo module config             │
│ README.md         Usage documentation            │
│ LICENSE           Open source license            │
└───────────────────┬──────────────────────────────┘
                    │ (Hugo module import)
                    │
    ┌───────────────▼────────────────────────────┐
    │ sddevelopment-be/penguin-pragmatic-patterns│
    │ (Content Repository)                        │
    │                                             │
    │ /content          Practices, concepts, etc. │
    │ /data             Glossary, bibliography    │
    │ /static           Content-specific images   │
    │ config.yaml       Site configuration        │
    │ go.mod            Imports theme module      │
    └─────────────────────────────────────────────┘
```

### Versioning Strategy

**Semantic Versioning (SemVer):**
- **v0.x.x** - Initial development, breaking changes allowed
- **v1.0.0** - Stable release, backward compatibility guaranteed
- **v1.x.x** - Feature additions, no breaking changes
- **v2.0.0+** - Major changes with migration guide

**Module Pinning in Content Repo:**
```go
// go.mod
module patterns

require (
    github.com/sddevelopment-be/hugo-theme-pragmatic-penguin v1.2.3
)
```

**Update Strategy:**
- Patch updates (1.2.3 → 1.2.4): Automatic (bug fixes)
- Minor updates (1.2.x → 1.3.0): Manual review (new features)
- Major updates (1.x.x → 2.0.0): Planned migration with testing

### Maintenance Model

**Theme Repository Responsibilities:**
- Core styling and layout templates
- Bulma/Hugo compatibility
- Performance optimizations
- Cross-browser support
- Security updates
- Documentation

**Content Repository Responsibilities:**
- Content-specific overrides (minimal)
- Site configuration
- Custom shortcodes (content-specific)
- Local static assets
- Content authoring and curation

### Non-Regression Strategy Post-Extraction

**Continuous Integration:**
1. **Theme Repository CI:**
   - Automated tests on every commit
   - Visual regression suite (baseline theme)
   - Build validation against multiple Hugo versions
   - Lighthouse performance benchmarks
   - Semantic release automation

2. **Content Repository CI:**
   - Build with pinned theme version
   - Visual regression against content baseline
   - Hugo test suite execution
   - Performance validation
   - Content validation (frontmatter, links)

**Update Workflow:**
```
1. Theme repository merges change → CI runs
2. Theme version tagged (e.g., v1.3.0)
3. Content repo updates theme dependency in go.mod
4. Content repo CI validates with new theme version
5. If pass: merge; If fail: create issue in theme repo
6. Repeat until compatibility achieved
```

**Regression Prevention:**
- Visual regression tests in both repositories
- Automated compatibility matrix (Hugo versions × theme versions)
- Changelog review process
- Beta testing period for major changes

### Reuse Enablement

**Theme Customization Points:**
- Brand colors via CSS variables
- Typography settings
- Spacing scale
- Breakpoint configuration
- Component enable/disable flags
- Layout variants

**Example New Project Setup:**
```yaml
# New project config.yaml
module:
  imports:
    - path: github.com/sddevelopment-be/hugo-theme-pragmatic-penguin

params:
  # Override brand colors
  brand:
    primary: "#007acc"
    secondary: "#ff6600"
  
  # Enable/disable components
  features:
    ammerse: false  # Not needed for this project
    glossary: true
    
  # Custom navigation
  navbar:
    - title: "Getting Started"
      url: /getting-started/
```

**Migration Assistance:**
- Theme includes migration script
- Documented examples for common customizations
- Template project repository as reference
- Community support (if open-sourced)

---

## Appendices

### A. Current Hugo-Fresh Dependency Analysis

**Direct Dependencies:**
```
hugo-fresh v1.0.0
├── Layouts (25+ files used)
├── Partials (35+ files, 15 overridden)
├── Assets (minimal, mostly overridden)
└── Static (fonts, icons - some used)
```

**Overridden Files (Must Migrate):**
- `/layouts/_default/baseof.html`
- `/layouts/partials/navbar.html`
- `/layouts/partials/hero.html`
- `/layouts/partials/footer.html`
- 20+ other partials

**Used As-Is (Can Adapt):**
- Basic section templates
- RSS templates
- Sitemap templates
- 404 page template

### B. SCSS Architecture Vision

**Proposed Theme Structure:**
```
/themes/pragmatic-penguin/assets/scss/
├── _config.scss           # Bulma overrides, theme variables
├── base/
│   ├── _reset.scss        # Normalize/reset
│   ├── _typography.scss   # Font rules
│   └── _layout.scss       # Grid, containers
├── components/
│   ├── _buttons.scss      # Button variants
│   ├── _cards.scss        # Card layouts
│   ├── _navigation.scss   # Navbar, footer
│   └── _hero.scss         # Hero sections
├── domains/
│   ├── _patterns.scss     # Practice/concept pages
│   ├── _ammerse.scss      # AMMERSE radar
│   ├── _glossary.scss     # Glossary styling
│   └── _taxonomies.scss   # Tag/category pages
├── utilities/
│   ├── _spacing.scss      # Spacing helpers
│   ├── _colors.scss       # Color utilities
│   └── _helpers.scss      # Misc utilities
└── main.scss              # Main import orchestrator
```

### C. Performance Baseline (Pre-Optimization)

**Lighthouse Desktop Audit (Nov 2025):**
- Performance: 86%
- Accessibility: 100%
- Best Practices: 95%
- SEO: 100%

**Key Metrics:**
- First Contentful Paint: 0.8s
- Largest Contentful Paint: 1.5s
- Speed Index: 1.3s
- Total Blocking Time: minimal
- Cumulative Layout Shift: minimal

**Asset Sizes:**
- Main CSS bundle: 687 KB
- Custom CSS: ~15 KB
- Total static files: 689 files
- Build time: 1.4s

**Optimization Targets (Phase 4):**
- CSS bundle: 550 KB (-20%)
- LCP: 1.2s (-0.3s)
- Performance Score: 90%+

### D. Reference Material

**Hugo Theme Documentation:**
- [Hugo Theme Components](https://gohugo.io/hugo-modules/theme-components/)
- [Hugo Module Configuration](https://gohugo.io/hugo-modules/configuration/)
- [Hugo Asset Pipeline](https://gohugo.io/hugo-pipes/)

**Bulma Documentation:**
- [Bulma v1.x Customization](https://bulma.io/documentation/customize/)
- [Bulma Sass Sources](https://github.com/jgthms/bulma/tree/master/sass)

**Strangler Pattern:**
- [Martin Fowler: Strangler Fig Application](https://martinfowler.com/bliki/StranglerFigApplication.html)
- [Pattern: Strangler Vine](https://sddevelopment.be/patterns) (internal knowledge base)

**Related SDD Documentation:**
- `/docs/collaboration/BULMA_UPGRADE_COMPLETE.md` (recent upgrade context)
- `/docs/collaboration/FRONTEND_OPTIMIZATION_PLAN.md` (performance goals)
- `/docs/collaboration/EXECUTIVE_SUMMARY.md` (project overview)

---

## Conclusion

This vision document outlines a **cautious, test-driven, incremental approach** to extracting the highly customized hugo-fresh theme into a standalone, reusable `pragmatic-penguin` theme. The strangler vine pattern ensures continuous production stability while gradually replacing legacy dependencies.

**Key Principles:**
- ✅ **Safety First:** Visual regression testing at every step
- ✅ **Incremental Progress:** One component at a time
- ✅ **Reversibility:** Rollback capability maintained
- ✅ **Clarity:** Every decision documented
- ✅ **Reusability:** Theme designed for multi-project use

**Expected Outcomes:**
- Maintenance burden reduced (no hugo-fresh dependency)
- Upgrade friction eliminated (direct Bulma control)
- Performance optimized (20%+ bundle reduction, 90%+ Lighthouse)
- Reuse enabled (theme as Hugo module)
- Technical debt reduced (clean separation of concerns)

**Total Estimated Effort:**
- Phase 0-4 (In-repo extraction): 15-21 days
- Phase 5 (Separate repository): 2-3 days
- **Total:** 17-24 days (single developer, full-time)

**Next Action:** Stakeholder review and approval to proceed with Phase 0.

---

## Appendix E: GitHub Issue Structure and Tracking

### Issue Hierarchy Overview

This epic should be tracked using a three-level hierarchy following SDD organizational standards:

```
Epic: Custom Theme Extraction (Pragmatic Penguin)
├── Feature: Phase 0 - Foundation and Preparation
│   ├── Task: Create theme directory structure
│   ├── Task: Set up visual regression testing infrastructure
│   ├── Task: Create baseline screenshots
│   └── Task: Configure parallel build environment
├── Feature: Phase 1 - Vendor and Isolate
│   ├── Task: Clone hugo-fresh theme structure
│   ├── Task: Update configuration to use local theme
│   ├── Task: Verify Bulma compatibility
│   └── Task: Run functional validation tests
├── Feature: Phase 2 - Rebrand and Customize
│   ├── Task: Rename theme references
│   ├── Task: Reorganize theme assets
│   ├── Task: Update configuration and documentation
│   └── Task: Validate branding consistency
├── Feature: Phase 3 - Migrate Custom Overrides
│   ├── Task: Migrate P1 critical SCSS (custom.scss, patterns.scss)
│   ├── Task: Migrate P2 important components (ammerse, glossary, taxonomies)
│   ├── Task: Migrate P3 minor components (toc, quotes, recommendations)
│   ├── Task: Migrate P4 minimal components (images, visualization)
│   └── Task: Integration and refinement
├── Feature: Phase 4 - Optimization and Enhancement
│   ├── Task: CSS optimization and tree-shaking
│   ├── Task: Image processing pipeline setup
│   ├── Task: Asset bundling configuration
│   └── Task: Performance validation and benchmarking
└── Feature: Phase 5 - Repository Extraction
    ├── Task: Create standalone theme repository
    ├── Task: Configure Hugo module setup
    ├── Task: Update main repository to use theme module
    └── Task: Set up CI/CD for theme repository
```

### Recommended Labels by Work Type

**Epic Level:**
- `epic` - Primary classification
- `type: enhancement` - Strategic improvement
- `human-review-required` - Requires stakeholder approval at phase gates

**Feature Level:**
- `feature` - Primary classification
- `agent-driven` OR `mixed-collaboration` - Based on primary executor
- Risk level: Add appropriate risk indicator in description
- Milestone: Associate with project milestone (e.g., "Theme Extraction v1.0")

**Task Level:**
- `task` - Primary classification
- `agent-driven` - For tasks executed primarily by automated agents
- `mixed-collaboration` - For tasks requiring human + agent collaboration
- `human-review-required` - For validation tasks requiring human judgment

### Issue Creation Recommendations

**Epic Issue (Create First):**
- Template: `.github/ISSUE_TEMPLATE/00-epic.yml`
- Title: `Epic: Custom Theme Extraction - Pragmatic Penguin`
- Goal: Extract hugo-fresh customizations into standalone, reusable SDD-branded theme
- Tasks: Link to 5 feature issues (one per phase)

**Feature Issues (Create per Phase):**
- Template: `.github/ISSUE_TEMPLATE/01-feature.yml`
- Title Format: `Feature: Phase X - [Phase Name]`
- Example: `Feature: Phase 0 - Foundation and Preparation`
- Parent Epic: Link to epic issue
- Objective: Copy from vision document phase objectives
- Deliverables: List concrete outputs from vision document
- Acceptance Criteria: Copy validation section from vision document
- Effort/Risk: Use estimates from vision document
- Assigned Agents: Copy from vision document

**Task Issues (Create as Needed):**
- Template: `.github/ISSUE_TEMPLATE/02-task.yml`
- Title Format: `Task: [Specific Work Item]`
- Example: `Task: Set up visual regression testing infrastructure`
- Parent Feature: Link to feature issue
- Description: Detailed task description from vision document
- Steps: Break down implementation if complex
- Acceptance Criteria: Specific validation points
- Validation Steps: How to verify completion

### Milestone Strategy

**Recommended Milestones:**
1. **Theme Extraction - Planning** (Epic + initial features)
2. **Theme Extraction - Foundation** (Phase 0 complete)
3. **Theme Extraction - Core Implementation** (Phases 1-3 complete)
4. **Theme Extraction - Optimization** (Phase 4 complete)
5. **Theme Extraction - Launch** (Phase 5 complete, theme published)

### Agent vs Human Work Separation

**Agent-Driven Tasks (Label: `agent-driven`):**
- File copying and directory structure creation
- SCSS migration and compilation
- Automated testing execution
- Documentation generation from templates
- Build configuration updates

**Human-Review-Required Tasks (Label: `human-review-required`):**
- Phase gate approvals
- Visual regression validation (initial review)
- Strategic decision points
- Final acceptance testing
- Documentation narrative review

**Mixed-Collaboration Tasks (Label: `mixed-collaboration`):**
- Custom component migration (agent executes, human validates)
- Performance optimization (agent implements, human reviews trade-offs)
- Configuration changes (agent proposes, human approves)
- Documentation writing (agent drafts, human refines)

### Issue Creation Workflow

**Manual Creation (Recommended for Epic and Features):**
1. Go to repository Issues tab
2. Click "New Issue"
3. Select appropriate template (Epic or Feature)
4. Fill in all required fields from vision document
5. Add labels according to recommendations above
6. Assign to milestone if applicable
7. Create issue

**Automated Task Creation (If Supported):**
- Tasks can be created programmatically if GitHub CLI or API is available
- Consider creating tasks on-demand as features progress
- Avoid creating all tasks upfront to maintain flexibility

### Linking Strategy

**Use GitHub Linking Syntax:**
- In epic: List all feature issues with `- [ ] #123` checkbox syntax
- In features: Reference parent epic with `Part of #[epic-number]`
- In tasks: Reference parent feature with `Part of #[feature-number]`
- Cross-reference: Use `Related to #[number]` for dependencies

**Example Epic Task List:**
```markdown
## Features

- [ ] #201 Phase 0 - Foundation and Preparation
- [ ] #202 Phase 1 - Vendor and Isolate
- [ ] #203 Phase 2 - Rebrand and Customize
- [ ] #204 Phase 3 - Migrate Custom Overrides
- [ ] #205 Phase 4 - Optimization and Enhancement
- [ ] #206 Phase 5 - Repository Extraction
```

### Progress Tracking

**Epic Level:**
- Track overall initiative progress
- Update as features complete
- Use GitHub project board if available

**Feature Level:**
- Track task completion percentage
- Update acceptance criteria checkboxes
- Report blockers or scope changes

**Task Level:**
- Update with progress comments
- Link to PRs that implement the task
- Mark complete when all acceptance criteria met

### Example Issue Creation Order

**Week 1 (Planning):**
1. Create Epic issue
2. Create Feature issues for Phases 0-2
3. Create initial tasks for Phase 0

**As Work Progresses:**
4. Create remaining Feature issues (Phases 3-5) when Phase 1 nearing completion
5. Create tasks for next phase when current phase is 70% complete
6. Maintain 1-2 phases ahead in planning

### Vision Document Maintenance

**Keep Vision as Source of Truth:**
- Vision document remains in `docs/collaboration/` for lineage and traceability
- Issues reference vision document sections
- Update vision document if scope or approach changes
- Version vision document (add "Last Updated" dates for major revisions)

**Synchronization:**
- Vision document is detailed reference
- Issues are actionable work items
- Issues can deviate from vision if needed (document in issue)
- Major deviations should update vision document

### Metrics and Reporting

**Track These Metrics:**
- Features completed / Total features
- Tasks completed / Total tasks  
- Effort spent vs. estimated
- Risks encountered and mitigated
- Scope changes and impact

**Report At:**
- Phase completion
- Weekly standup (if applicable)
- Epic completion
- Retrospective

---

**Document Owner:** Project Planner  
**Collaborating Agents:** Architect, Frontend, Bootstrap Bill, Build Automation  
**Next Review:** After Phase 0 completion  
**Last Updated:** 2025-11-14
