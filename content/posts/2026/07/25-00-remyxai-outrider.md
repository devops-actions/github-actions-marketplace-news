---
title: Remyx Outrider
date: 2026-07-25 00:20:42 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.40
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Outrider is a GitHub Action that automates the process of evaluating new methods against an existing codebase. It helps teams validate and compare new implementations by scheduling or dispatching evaluations on demand, using Anthropic Opus or z.ai GLM-5.2 as model backends for cost-effective evaluation. The action provides draft PRs with self-reviews, issues when preflight, validators, or self-review routes the paper to discussion, a branch-only mode, and ensures no duplicate work by not re-recommending papers once referenced.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.40**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

Outrider is a GitHub Action that automates the process of evaluating new methods against an existing codebase. It helps teams validate and compare new implementations by scheduling or dispatching evaluations on demand, using Anthropic Opus or z.ai GLM-5.2 as model backends for cost-effective evaluation. The action provides draft PRs with self-reviews, issues when preflight, validators, or self-review routes the paper to discussion, a branch-only mode, and ensures no duplicate work by not re-recommending papers once referenced.

## What's Changed

Adds first-class support for `REVIEW.md` — a per-repo review-conventions file that Outrider threads into the drafter, fidelity audit, and convention pass on dispatch.

## Changes

- New `REVIEW.md` at repo root documenting this repo's own review conventions (#107)
- Reader + orientation-block threading: `_orient_review_conventions()` reads `REVIEW.md` (root wins over `.github/`) and inserts it as the highest-precedence signal in the orientation block, ahead of contributor guides (#108)
- Fidelity audit + convention patch prompts cross-check against `REVIEW.md`'s scope-stance and anti-pattern sections when present (#108)
- `docs/REVIEW-template.md` — starter template maintainers can copy into their repos (#108)
- 8 tests covering discovery, precedence, empty-file, truncation, orientation-block inclusion/omission (#108)

Silent info-level fallback when `REVIEW.md` is absent; no failure. Existing repos without a `REVIEW.md` see unchanged behavior.
