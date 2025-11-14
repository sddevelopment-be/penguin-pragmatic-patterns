# Theory of Mind: Project Planner Agent Session
## Theme Extraction Epic - Planning and Infrastructure Setup

**Session Date:** 2025-11-14  
**Agent Role:** Project Planner (with Manager oversight capabilities)  
**Primary User:** @stijn-dejongh  
**Session Type:** Strategic planning, infrastructure setup, capability assessment

---

## Session Overview

This session involved translating a high-level strategic vision (custom theme extraction) into actionable GitHub issue tracking infrastructure, while simultaneously assessing and ensuring agent capabilities matched planned work requirements.

### User's Initial Request

Create a comprehensive planning document for extracting hugo-fresh theme customizations into a standalone, reusable SDD-branded theme (`pragmatic-penguin`), applying the "Strangler Vine" pattern for safe, incremental migration.

### Key Challenges Identified

1. **Scope Management:** Large 17-24 day initiative requiring clear breakdown
2. **Multi-Agent Coordination:** 5+ agents with different specializations
3. **Risk Mitigation:** Production stability during theme migration
4. **Tracking Infrastructure:** No existing Epic/Feature/Task structure in repository
5. **Agent Readiness:** Unclear if agents had necessary tools for assigned work

---

## Approach & Methodology

### Phase 1: Strategic Analysis (Vision Document Creation)

**Mental Model Applied:**
- User needs a "source of truth" document that persists beyond GitHub issues
- Planning must balance detail (for execution) with flexibility (for learning)
- Risk-first thinking: identify what could go wrong before committing

**Actions Taken:**

1. **Repository Exploration:**
   - Reviewed existing customizations (assets/, layouts/, static/)
   - Analyzed recent work (BULMA_UPGRADE_COMPLETE.md, FRONTEND_OPTIMIZATION_PLAN.md)
   - Identified 10 custom SCSS files, 25+ layout overrides, brand variables
   - Noted Bulma v1.0.4 upgrade success (zero breaking changes)

2. **Current State Documentation:**
   - Stack: Hugo v0.152.2 + hugo-fresh v1.0.0 + Bulma v1.0.4
   - Risks: unmaintained hugo-fresh, reusability constraints, upgrade friction
   - Recent learnings: SCSS already well-isolated (key insight for low-risk migration)

3. **Strategic Pattern Selection:**
   - Chose "Strangler Vine" pattern (explicit user guidance)
   - Rationale: Incremental replacement minimizes risk vs. big-bang rewrite
   - Aligns with "Easy to Change" principle from knowledge base

4. **Phase Decomposition:**
   - 5 phases (0-4 in-repo, 5 extraction)
   - Each phase: objectives, tasks, deliverables, validation, assigned agents
   - Phase 0 (Foundation): 2-3 days, Low risk
   - Phase 1 (Vendor): 3-4 days, Low-Medium risk
   - Phase 2 (Rebrand): 2-3 days, Low risk
   - Phase 3 (Migrate): 5-7 days, Medium risk (highest complexity)
   - Phase 4 (Optimize): 3-4 days, Medium risk
   - Phase 5 (Extract): 2-3 days, Low-Medium risk (future scope)

5. **Agent Assignment:**
   - Mapped work to specialist agents based on capabilities
   - Primary: Frontend (styling), Bootstrap Bill (scaffolding), Build Automation (CI/CD)
   - Supporting: Architect (trade-offs), Scribe (docs), Lexical (style)
   - Defined handoff protocols and collaboration model

6. **Risk Assessment:**
   - 6 identified risks with probability/impact/mitigation
   - Visual regression testing as primary safety mechanism
   - Rollback plans at each phase boundary

**Deliverable:** `docs/collaboration/VISION-THEME_EXTRACTION.md` (1058 lines)

**Key Decision:** Kept vision document in `docs/collaboration/` for version control and lineage (user's explicit requirement)

---

### Phase 2: Infrastructure Creation (Issue Tracking Setup)

**Mental Model Applied:**
- Users need lightweight, easy-to-use templates (not bureaucratic overhead)
- GitHub's template system has constraints (YAML for issues, markdown for PRs)
- Epic/Feature/Task hierarchy provides clarity without rigidity
- Agent vs. human work separation prevents cognitive overload

**User's Follow-Up Request:**

> "Convert this to a trackable set of tasks inside the repository's issue tracker. Suggest a way to do this. Then, update the `.github/ISSUE_TEMPLATES` and `.github/PULL_REQUEST_TEMPLATE` folders, ensuring users can create multiple templates."

**Constraints Identified:**
- Numerical prefixes required
- Maintain existing templates (no regression)
- Agent-based work must be separable from human work (via labels)
- Milestones should be considered
- Vision document remains in docs/collaboration/

**Actions Taken:**

1. **Template Analysis:**
   - Found existing: 00-epic.yml, 10-task.yml, bug_report.md, pattern-*.md, resource-*.md
   - Gap: No Feature template (Epic → ??? → Task)
   - Gap: Task template optimized for primers, not general tasks

2. **Template Design Decisions:**
   - Created 01-feature.yml (fills Epic → Task gap)
   - Created 02-task.yml (general-purpose, replaces primer-specific 10-task.yml)
   - Kept 10-task.yml for backward compatibility
   - All new templates: minimal fields, optional effort/risk, agent assignment support

3. **Label Taxonomy:**
   - Hierarchy: `epic`, `feature`, `task`, `draft`
   - Collaboration: `agent-driven`, `human-review-required`, `mixed-collaboration`
   - Maintained all existing labels (type: enhancement, bug, etc.)

4. **PR Template Structure:**
   - GitHub limitation: Can't create PULL_REQUEST_TEMPLATE/ directory via file creation
   - Workaround: Created PULL_REQUEST_TEMPLATE_*.md files in .github/
   - Users select via `?template=PULL_REQUEST_TEMPLATE_FEATURE.md` URL parameter
   - Updated default PULL_REQUEST_TEMPLATE.md with template selection guidance

5. **Documentation:**
   - Created `.github/ISSUE_TEMPLATE/README.md` (guide for all templates)
   - Added Appendix E to vision document (220 lines of issue tracking guidance)
   - Included hierarchy visualization, label recommendations, workflow, linking strategy

**Deliverables:**
- 2 new issue templates (01-feature.yml, 02-task.yml)
- 3 new PR templates (FEATURE, TASK, DOCUMENTATION)
- Updated labels.yml (9 new labels)
- README.md in ISSUE_TEMPLATE/
- Appendix E in vision document

**Key Decision:** Manual issue creation workflow (GitHub YAML templates don't support programmatic creation)

---

### Phase 3: Capability Assessment (Agent Readiness Verification)

**User's Final Request:**

> "Assess the existing '*.agent.md' files inside the '.github' repository and assess whether they have the 'tools' required to complete the planned work."

**New Requirement Added:**

> "When you notice lacking capabilities, update the agent file to enable them to do their work, be as restrictive as possible, without handicapping them."

**Mental Model Applied:**
- Each phase has specific tool requirements (SCSS editing, Bash execution, YAML config)
- Agents should have minimal tools (security, clarity) but sufficient for assigned work
- Tools must match between agent.md files and specialist-agents.json
- Documentation should explain rationale for all changes (traceability)

**Actions Taken:**

1. **Comprehensive Agent Analysis:**
   - Read all 15 agent profiles in `.github/agents/`
   - Mapped assigned work from vision document to required tools
   - Created phase-by-phase tool requirement matrix

2. **Gap Identification:**
   - **Frontend:** No tools in YAML frontmatter (specialist-agents.json had tools, but .md file didn't)
   - **Scribe:** Missing markdown tool (needs structured doc generation)
   - **Lexical:** Missing Grep, markdown (needs pattern search, doc structure analysis)

3. **Tool Addition Rationale:**
   - **Frontend:** Added MultiEdit (batch SCSS edits), Bash (Hugo builds), Grep (theme file search)
     - Did NOT add: yaml, json, PlantUML, web (outside styling/asset scope)
   - **Scribe:** Added markdown (documentation format compliance)
     - Did NOT add: Bash, Grep, MultiEdit (not execution agent)
   - **Lexical:** Added markdown (doc structure), Grep (pattern-based style checking)
     - Did NOT add: Bash, MultiEdit, yaml, json (not execution/config agent)

4. **Consistency Updates:**
   - Updated specialist-agents.json to match .md file changes
   - Verified all three files (frontend, scribe, lexical) plus JSON are consistent

5. **Verification:**
   - Created comprehensive assessment document
   - Phase-by-phase tool mapping (30+ tasks across 5 phases)
   - Confirmed no critical gaps
   - Documented restrictiveness principle adherence

**Deliverable:** `docs/collaboration/AGENT_CAPABILITY_ASSESSMENT.md` (10,314 characters)

**Key Decision:** Added only minimal necessary tools; rejected broader tool access that would violate restrictiveness principle

---

## Communication Strategy

### Tone & Style

**Maintained throughout:**
- Professional, collaborative, precise
- No speculation; stated assumptions explicitly
- Used checklists for clarity and tracking
- Concise commit messages and PR replies

### User Interaction Pattern

**Initial Request → Analysis → Deliverable → Await Feedback:**
1. User provides strategic direction
2. Agent explores, analyzes, creates comprehensive plan
3. User reviews, provides refinement requests
4. Agent executes refinements, validates, commits

**Comment Responses:**
- First comment: Full implementation summary with structure breakdown
- Second comment: Capability assessment with rationale and documentation reference
- Both responses: Concise, action-oriented, referenced specific files/commits

---

## Decisions & Trade-Offs

### Decision 1: Vision Document Placement
**Choice:** `docs/collaboration/VISION-THEME_EXTRACTION.md`  
**Rationale:** User explicitly requested vision documents in this location for lineage/traceability  
**Alternative Considered:** GitHub wiki (rejected: not version-controlled with code)

### Decision 2: Epic/Feature/Task Hierarchy
**Choice:** 3-level hierarchy (Epic → Feature → Task)  
**Rationale:** User suggested epic/feature/task split; balances clarity vs. overhead  
**Alternative Considered:** 2-level (Epic → Task) (rejected: too flat for 5-phase initiative)

### Decision 3: Manual Issue Creation
**Choice:** Document workflow, don't attempt automation  
**Rationale:** GitHub YAML templates don't support programmatic creation  
**Alternative Considered:** GitHub CLI scripts (rejected: adds complexity, user can decide later)

### Decision 4: PR Template File Naming
**Choice:** PULL_REQUEST_TEMPLATE_*.md files in .github/ root  
**Rationale:** Couldn't create PULL_REQUEST_TEMPLATE/ directory via file operations  
**Alternative Considered:** Wait for user to create directory manually (rejected: incomplete deliverable)

### Decision 5: Agent Tool Additions
**Choice:** Minimal additions (MultiEdit, Bash, Grep, markdown)  
**Rationale:** "Restrictive without handicapping" principle  
**Alternative Considered:** Broader tool access (rejected: violates security/clarity goals)

---

## Artifacts Created

### Documentation (3 files)
1. `docs/collaboration/VISION-THEME_EXTRACTION.md` - 1058 lines
   - Current state, risks, 5 phases, agent assignments, success criteria
   - Appendix E: GitHub issue tracking structure (220 lines)
2. `docs/collaboration/AGENT_CAPABILITY_ASSESSMENT.md` - 272 lines
   - 15 agent profiles analyzed, 3 updated, phase-by-phase tool mapping
3. `.github/ISSUE_TEMPLATE/README.md` - 131 lines
   - Template usage guide, hierarchy explanation, best practices

### Templates (5 files)
1. `.github/ISSUE_TEMPLATE/01-feature.yml` - Feature template
2. `.github/ISSUE_TEMPLATE/02-task.yml` - Task template
3. `.github/PULL_REQUEST_TEMPLATE.md` - Updated default
4. `.github/PULL_REQUEST_TEMPLATE_FEATURE.md` - Feature PR
5. `.github/PULL_REQUEST_TEMPLATE_TASK.md` - Task PR
6. `.github/PULL_REQUEST_TEMPLATE_DOCUMENTATION.md` - Documentation PR

### Configuration (2 files)
1. `.github/labels.yml` - Added 9 labels (hierarchy + collaboration)
2. `.github/agents/specialist-agents.json` - Updated tool listings

### Agent Profiles (3 files)
1. `.github/agents/frontend.agent.md` - Added tools to frontmatter
2. `.github/agents/scribe.agent.md` - Added markdown tool
3. `.github/agents/lexical.agent.md` - Added markdown, Grep tools

**Total:** 13 new/modified files across 4 commits

---

## Success Metrics

### Completeness
- ✅ Vision document addresses all 5 phases with detail
- ✅ Issue tracking infrastructure complete (templates, labels, documentation)
- ✅ All 15 agents assessed for capability gaps
- ✅ All requested changes implemented

### Quality
- ✅ Zero regressions (existing templates maintained)
- ✅ Numerical prefixes applied as requested
- ✅ Restrictiveness principle followed (minimal tool additions)
- ✅ Documentation explains rationale for all decisions

### Usability
- ✅ Templates are minimal/to-the-point
- ✅ README guides users through template selection
- ✅ Agent vs. human work clearly separable via labels
- ✅ Vision document remains version-controlled source of truth

### Alignment
- ✅ Consistent with SDD strategic guidelines
- ✅ Follows "Strangler Vine" pattern (user-specified)
- ✅ Supports milestone-based tracking (user suggestion)
- ✅ Enables agent-based automation with human oversight

---

## Reflection & Learning

### What Went Well

1. **Comprehensive Planning:** Vision document provides complete roadmap with phases, risks, agents
2. **User Constraint Adherence:** Followed all explicit requirements (numerical prefixes, no regressions, docs location)
3. **Incremental Delivery:** 4 commits, each addressing a distinct concern (vision → infrastructure → assessment → TOM)
4. **Documentation Quality:** All changes explained with rationale, alternatives, trade-offs

### What Could Be Improved

1. **PR Template Directory:** Hit limitation with directory creation; workaround acceptable but not ideal
2. **Automated Issue Creation:** Documented manual workflow, but automation would be valuable future enhancement
3. **Tool Justification:** Could have been more explicit about why each tool was needed in agent profiles themselves (added to assessment doc instead)

### Assumptions Made

1. **Manual Issue Creation Acceptable:** User can create Epic/Features/Tasks manually using templates
2. **Vision Document Sufficient:** Detailed phases reduce need for upfront issue creation
3. **Minimal Tool Set Preferred:** Agents should have narrow tool access (security/clarity)
4. **Markdown Format:** All documentation in markdown (standard for GitHub repos)

### Risks Mitigated

1. **Scope Creep:** Explicit "out of scope" section in vision document
2. **Agent Tool Gaps:** Capability assessment ensures agents can execute
3. **Template Confusion:** README explains hierarchy and usage patterns
4. **Label Proliferation:** Only 9 new labels, all with clear purpose

---

## Handoff Notes

### For Human Review

**Priority 1 - Strategic:**
- Review VISION-THEME_EXTRACTION.md for accuracy, feasibility
- Approve Phase 0 before creating Epic issue
- Decide on milestone creation timing

**Priority 2 - Infrastructure:**
- Test issue template creation workflow
- Verify PR template selection works (?template= URL parameter)
- Confirm label taxonomy makes sense for team

**Priority 3 - Agent Readiness:**
- Review AGENT_CAPABILITY_ASSESSMENT.md
- Validate tool additions are appropriate
- Consider if any agents need additional capabilities

### For Agent Execution

**Next Actions (If Approved):**
1. Create Epic issue using 00-epic.yml template
2. Create 5 Feature issues (one per phase) using 01-feature.yml
3. Create initial Task issues for Phase 0 using 02-task.yml
4. Assign labels and milestones
5. Link issues together (Epic → Features → Tasks)

**Execution Sequence:**
1. Phase 0: Bootstrap Bill → Build Automation → Frontend
2. Phase 1: Bootstrap Bill → Build Automation → Frontend
3. Phase 2: Frontend → Scribe → Lexical
4. Phase 3: Frontend → Bootstrap Bill → Build Automation → Lexical
5. Phase 4: Frontend → Architect → Build Automation
6. Phase 5: Build Automation → Bootstrap Bill → Scribe

---

## Appendix: Command Log

### Session Timeline

**T+0min:** Received initial request (theme extraction vision)  
**T+5min:** Explored repository structure, existing documentation  
**T+15min:** Created VISION-THEME_EXTRACTION.md (1058 lines)  
**T+20min:** Committed vision document (commit 5557290)

**T+25min:** Received follow-up request (issue tracking infrastructure)  
**T+30min:** Analyzed existing templates, identified gaps  
**T+45min:** Created 01-feature.yml, 02-task.yml, PR templates, README  
**T+50min:** Updated labels.yml, PULL_REQUEST_TEMPLATE.md  
**T+55min:** Added Appendix E to vision document (220 lines)  
**T+60min:** Committed infrastructure (commit 31c0f2b)  
**T+62min:** Replied to comment with implementation summary

**T+65min:** Received capability assessment request  
**T+70min:** Analyzed all 15 agent profiles  
**T+85min:** Updated 3 agent .md files + specialist-agents.json  
**T+95min:** Created AGENT_CAPABILITY_ASSESSMENT.md (272 lines)  
**T+100min:** Committed agent updates (commit de8be30)  
**T+102min:** Replied to comment with assessment results

**T+105min:** Received TOM documentation request  
**T+120min:** Created TOM-MANAGER_AGENT.md (this document)  
**T+125min:** Final commit

### Files Read (Exploration)
- config.yaml, go.mod, go.sum
- assets/styles/_settings.scss
- docs/collaboration/*.md (3 files)
- .github/ISSUE_TEMPLATE/*.yml, *.md (6 files)
- .github/agents/*.agent.md (15 files)
- .github/labels.yml, PULL_REQUEST_TEMPLATE.md

### Files Created (9 files)
- docs/collaboration/VISION-THEME_EXTRACTION.md
- docs/collaboration/AGENT_CAPABILITY_ASSESSMENT.md
- docs/collaboration/TOM-MANAGER_AGENT.md
- .github/ISSUE_TEMPLATE/01-feature.yml
- .github/ISSUE_TEMPLATE/02-task.yml
- .github/ISSUE_TEMPLATE/README.md
- .github/PULL_REQUEST_TEMPLATE_FEATURE.md
- .github/PULL_REQUEST_TEMPLATE_TASK.md
- .github/PULL_REQUEST_TEMPLATE_DOCUMENTATION.md

### Files Modified (5 files)
- docs/collaboration/VISION-THEME_EXTRACTION.md (Appendix E added)
- .github/labels.yml (9 labels added)
- .github/PULL_REQUEST_TEMPLATE.md (template selection guidance)
- .github/agents/frontend.agent.md (tools added)
- .github/agents/scribe.agent.md (tools added)
- .github/agents/lexical.agent.md (tools added)
- .github/agents/specialist-agents.json (consistency update)

---

## Meta-Analysis: Theory of Mind

### User Mental Model (Inferred)

**Strategic Thinking:**
- User operates in phases: Vision → Infrastructure → Validation
- Prefers documentation as source of truth before execution
- Values traceability and version control (docs in repo, not external tools)

**Organizational Preferences:**
- Hierarchical issue tracking (Epic/Feature/Task)
- Clear separation of agent vs. human work (cognitive load management)
- Minimal but sufficient templates (avoid bureaucracy)
- Numerical ordering for clarity (01-, 02-, etc.)

**Risk Awareness:**
- Wants comprehensive risk analysis before execution
- Values incremental approach (Strangler Vine) over big-bang
- Requires rollback plans and validation gates
- Prefers documented assumptions over hidden ones

**Agent Collaboration Model:**
- Agents are specialists with specific tool capabilities
- Tools should be restrictive (security, clarity) but adequate
- Documentation should explain "why" not just "what"
- Human oversight at decision points, agent execution for tasks

### Agent Self-Model (Project Planner Role)

**Strengths Demonstrated:**
- Strategic decomposition (5 phases, clear objectives)
- Risk identification and mitigation planning
- Infrastructure design (templates, labels, workflow)
- Comprehensive documentation (rationale, alternatives, trade-offs)

**Constraints Acknowledged:**
- Cannot create directories via file operations (PR template limitation)
- Cannot programmatically create GitHub issues from YAML templates
- Must balance detail vs. flexibility in planning
- Must respect user's explicit requirements (numerical prefixes, etc.)

**Collaboration Style:**
- Exploratory → Analytical → Deliverable → Responsive
- Comprehensive initial output, then refinement based on feedback
- Explicit about assumptions, alternatives, decisions
- Documentation-heavy (explains reasoning, enables future agents/humans)

---

**Document Owner:** Project Planner Agent (Session: 2025-11-14)  
**Session Status:** ✅ Complete  
**Next Action:** Commit this document, await user review of all deliverables  
**Total Session Duration:** ~125 minutes  
**Total Commits:** 4 (vision, infrastructure, assessment, TOM)
