---
title: Miso PR Review
date: 2026-07-04 14:29:40 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v2.1.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v2.1.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

## What's Changed
* chore: dead-code removal and dedup sweep by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/366
* fix(forgejo): structured gh api for GitHub comments, unified sticky-comment selection by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/376
* refactor(classifier): declarative rule tables for pr_kind and risk flags by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/377
* fix(security): derive fork-ness once, fail closed on degraded PR metadata by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/380
* fix(precheck): read prior-review metadata via JSON side-file, drop eval by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/378
* refactor(ci-gate): normalize external checks once in the platform seam by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/379
* test(redact): comprehensive secret-redaction coverage by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/381
* docs(verdict): pin the bash/Python verdict-turn contract with equivalence tests by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/385
* refactor(enrichment): extract run_enrichment core into pr_reviewer modules by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/386
* ci: enforce pytest coverage gate (baseline 76%, gate 72%) by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/382
* test(forgejo): unit-test _diff_positions in isolation by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/383
* test(env): hard gate on cross-block env binding drift in action.yml by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/384
* fix(platform): resolve platform once in the precheck; PLATFORM-aware _is_forgejo_mode by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/387
* fix(mcp): correct tool-name docs, log loop outcome, resolve separator aliases by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/390
* refactor(utils): consolidate env_int, DeadlineBudget, and compare summarization by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/391
* ci(github-action): update action misospace/pr-reviewer-action (v2.0.0 → v2.0.5) by @its-miso[bot] in https://github.com/misospace/pr-reviewer-action/pull/392
* docs(agents): replace stale saffron-lane label table with ad-hoc agent/<name> convention by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/393
* docs(release): document versioning policy; keep pre-releases off the floating major tag by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/394
* perf(native-loop): dedup verdict-turn corpus sections; collapse skipped-source boilerplate by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/395
* refactor(review): unify primary/fallback/smart model calls behind call_model_tier by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/396
* perf(context): parallelize advisory phases, fan out enrichment API calls, collapse repo-impact scans by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/397


**Full Changelog**: https://github.com/misospace/pr-reviewer-action/compare/v2.0.5...v2.1.0
