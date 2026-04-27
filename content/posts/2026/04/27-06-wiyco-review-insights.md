---
title: Review Insights
date: 2026-04-27 06:36:02 +00:00
tags:
  - wiyco
  - GitHub Actions
draft: false
repo: https://github.com/wiyco/review-insights
marketplace: https://github.com/marketplace/actions/review-insights
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/wiyco/review-insights** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/review-insights) to find the latest changes.

## Action Summary

This GitHub Action, **Review Insights**, analyzes pull request workflows to assess review workload distribution, merge outcomes, reviewer-author dynamics, and AI involvement. It automates the generation of detailed visual reports, such as heatmaps and trend charts, to identify review bottlenecks, workload imbalances, and AI influence on review and merge activity. By providing actionable insights into review patterns, it helps teams optimize collaboration and improve code review efficiency.

## What's Changed

## What's Changed
* feat: visualize human review burden by AI involvement by @wiyco in https://github.com/wiyco/review-insights/pull/12
* fix: honor the until cutoff in review analytics by @wiyco in https://github.com/wiyco/review-insights/pull/14
* fix: exclude traditional bot PRs from burden comparisons by @wiyco in https://github.com/wiyco/review-insights/pull/15
* fix: keep ghost diagonals in the Gini matrix domain by @wiyco in https://github.com/wiyco/review-insights/pull/16
* fix: reject invalid ISO 8601 date inputs by @wiyco in https://github.com/wiyco/review-insights/pull/17
* feat(action)!: make top reviewer reporting tie-aware by @wiyco in https://github.com/wiyco/review-insights/pull/18
* fix(action): require at least one successful output mode before setting outputs by @wiyco in https://github.com/wiyco/review-insights/pull/19
* chore(deps): bump vulnerable packages by @wiyco in https://github.com/wiyco/review-insights/pull/21
* fix: partial-data signaling for timed-out PR collection by @wiyco in https://github.com/wiyco/review-insights/pull/20
* fix: preserve review fetch limit warnings after observation-window filtering by @wiyco in https://github.com/wiyco/review-insights/pull/22
* docs: align project docs with current action behavior by @wiyco in https://github.com/wiyco/review-insights/pull/23
* test: restore full coverage across analysis, visualization, and main orchestration by @wiyco in https://github.com/wiyco/review-insights/pull/24
* fix: mark max-prs truncation as capped data by @wiyco in https://github.com/wiyco/review-insights/pull/25
* chore: enforce coverage thresholds in vitest by @wiyco in https://github.com/wiyco/review-insights/pull/27
* fix: harden PR comment ownership checks by @wiyco in https://github.com/wiyco/review-insights/pull/26
* fix: missing review fetch limit warnings in job summaries by @wiyco in https://github.com/wiyco/review-insights/pull/28
* fix: treat avgReviewsBeforeMerge as undefined without merges by @wiyco in https://github.com/wiyco/review-insights/pull/29
* fix: measure review rounds by reviewed revision by @wiyco in https://github.com/wiyco/review-insights/pull/30
* test: reach 100% coverage for fetcher and enforce it by @wiyco in https://github.com/wiyco/review-insights/pull/32
* feat!: detect reviewer-author bias with activity-adjusted residuals by @wiyco in https://github.com/wiyco/review-insights/pull/31
* fix(deps): address CVE-2026-39363 in Vite by @wiyco in https://github.com/wiyco/review-insights/pull/34
* docs: clarify HTML report KPI filtering by @wiyco in https://github.com/wiyco/review-insights/pull/33
* fix(stats): censor AI and size metadata in snapshots by @wiyco in https://github.com/wiyco/review-insights/pull/35
* Avoid causal claims in size stratification by @wiyco in https://github.com/wiyco/review-insights/pull/36
* fix(report): clarify p90 and approval count wording by @wiyco in https://github.com/wiyco/review-insights/pull/37
* docs: clarify statistical specification wording by @wiyco in https://github.com/wiyco/review-insights/pull/38
* fix(collect): constrain AI co-author trailers to one line by @wiyco in https://github.com/wiyco/review-insights/pull/39
* fix(format): enforce LF line endings by @wiyco in https://github.com/wiyco/review-insights/pull/40
* fix: align statistical reporting and threshold validation by @wiyco in https://github.com/wiyco/review-insights/pull/41
* docs: clarify review-burden statistical wording by @wiyco in https://github.com/wiyco/review-insights/pull/42
* chore: add octocov metric badges by @wiyco in https://github.com/wiyco/review-insights/pull/43
* ci: use GitHub App token for badge publishing by @wiyco in https://github.com/wiyco/review-insights/pull/44
* Revert "ci: use GitHub App token for badge publishing" by @wiyco in https://github.com/wiyco/review-insights/pull/45
* ci: pass app token to octocov action by @wiyco in https://github.com/wiyco/review-insights/pull/46
* chore(tsconfig): enable noUncheckedIndexedAccess by @wiyco in https://github.com/wiyco/review-insights/pull/47
* fix: align change request rate with observed reviews by @wiyco in https://github.com/wiyco/review-insights/pull/48
* chore(deps): update action dependencies by @wiyco in https://github.com/wiyco/review-insights/pull/49
* chore: add hardened workflow for action major tags by @wiyco in https://github.com/wiyco/review-insights/pull/50


**Full Changelog**: https://github.com/wiyco/review-insights/compare/v1.1.1...v2.0.0
