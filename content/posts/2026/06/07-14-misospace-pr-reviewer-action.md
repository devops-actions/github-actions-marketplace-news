---
title: Miso PR Review
date: 2026-06-07 14:54:25 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.1.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.1.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

## What's Changed

### Features
* **feat: add built-in CI status check before reviewing** — waits for CI checks to pass (or fail fast) before starting review (#98)
* **feat: add review_scope input with incremental/full detection** — incremental scope avoids re-reviewing unchanged parts; verdict safety guards against false approvals (#c598ae6, #0f94431, #3e93b5c)
* **feat: add review markdown sanitizer** — neutralizes upstream PR/issue refs in review text to prevent misleading cross-links (#57f7a12)
* **feat: cleanup superseded native PR reviews** — auto-cleans stale native reviews on re-review for non-comment publish modes (#996c6c1)
* **feat: add metadata helper module** — shared review scope tracking and metadata markers (#969549d)

### Fixes
* **fix: preserve standards file in full when truncating review corpus** — `.ai/standards*` content is always kept intact during large-diff truncation (#b8a2e37)
* **fix: make standards file authoritative in final review prompt** — standards file content is prioritized above generic system prompt instructions (#d1c5308)
* **fix: expand glob patterns in standards_file_candidates** — now supports patterns like `.agents/*` for flexible file discovery (#da24b95)
* **fix: correct CI checks polling to use GitHub Checks API statuses** — properly reads `check_run` and `check_suite` instead of commit statuses (#00aa24e)
* **fix: derive review_result from actual verdict in metadata marker** — metadata now reflects true LLM verdict instead of hardcoded value (#4b3cfff)
* **fix: pass last_review_result to resolve_review_scope** — fixes incremental review detection for subsequent reviews (#ceda98f)
* **fix: harden gh_api endpoint validation** — rejects path traversal, dot-segments, and unexpected paths via regex allowlist (#8f7ffda)
* **fix: restore comment_marker input** — with action/README consistency test to prevent drift (#2795110)
* **fix: make tests hermetic against ambient env and missing tools** — tests no longer fail due to local env differences (#902a6cf)
* **fix: handle empty STANDARDS_FILE in fallback message** — graceful handling when no standards file is found (#47c8b1d)
* **fix: respect tool_request_timeout_sec across tool harness helpers** — timeout now applies consistently to fetch_url and other helpers (#ac2fba6)
* **fix: fail closed when tool_min_successful_requests set but planner returns zero tools** — prevents silent passes with no tool execution (#3c3c93e)
* **fix: tighten git_grep error test and document env isolation safety** — more robust grep error handling (#4f90e86)
* **fix: inject enforcement reasons into Final Recommendation banner** — shows specific guardrail reasons in PR summary (#0148eb9)

### Performance
* **perf: add enrichment budget guardrails and per-section timing** — prevents runaway enrichment by capping per-section cost (#fb2dbe6)

### Refactors
* **refactor: extract shared publish helpers** — deduplicates publish logic across all three modes (#0bf4c52)
* **refactor: deduplicate tool harness execution paths** — consolidates tool harness into single path (#43579e0)
* **refactor: remove dead code and use shared metadata module** — cleanup and consolidation (#374d8a4)

### Tests & CI
* **test: add standards file resolution tests** — with glob expansion coverage and smoke test for standards survival on large diffs (#83c701f, #a2fb516)
* **test: add comprehensive review scope integration tests** — full coverage for incremental/full modes and verdict safety (#4aaec90, #d37d489)
* **test: add tool_max_requests parameter tests** — regression coverage for #103 (#28544a1)
* **test: add sanitizer tests** — 247-line test suite for review markdown sanitization (#247 lines)
* **test: add fetch_url timeout parameter coverage** — timeout propagation tests (#f150f71)
* **test: add verdict safety tests for incremental review approval guardrails** — ensures incremental mode blocks dangerous approvals (#70d6a0c)
* **test: update cleanup tests for publish_helpers refactoring** — keeps test coverage aligned with refactored code (#789991f)

### Documentation
* **docs: bring README up to date** — ci_status outputs, CI wait example, version pinning guidance (#be027be)
* **docs: add review_scope input documentation and incremental review guide** — comprehensive usage docs (#d37d489)
* **docs: tighten evidence provider trust documentation** — clarifies trust model for external evidence providers (#ce0eacf)

### Chores
* **chore: update action actions/checkout (v6.0.2 → v6.0.3)** — (#100)
* **chore: switch to native_review mode** — self-review consistency

**Full Changelog**: https://github.com/misospace/pr-reviewer-action/compare/v1.0.18...v1.1.0
