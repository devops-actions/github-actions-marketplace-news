---
title: ReviewGate
date: 2026-07-28 22:55:05 +00:00
tags:
  - LVTD-LLC
  - GitHub Actions
draft: false
repo: https://github.com/LVTD-LLC/reviewgate
marketplace: https://github.com/marketplace/actions/reviewgate
version: v0.1.13
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ReviewGate is an open-source GitHub Action that automates PR reviews by running model calls from OpenRouter within a CI environment. It provides a visible confidence score, one canonical summary comment, and structured JSON artifact for decision-making. ReviewGate does not repair code or take over merge decisions but focuses on maintaining high-quality pull requests by identifying and flagging issues at various severity levels.
---


Version updated for **https://github.com/LVTD-LLC/reviewgate** to version **v0.1.13**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewgate) to find the latest changes.

## Action Summary

ReviewGate is an open-source GitHub Action that automates PR reviews by running model calls from OpenRouter within a CI environment. It provides a visible confidence score, one canonical summary comment, and structured JSON artifact for decision-making. ReviewGate does not repair code or take over merge decisions but focuses on maintaining high-quality pull requests by identifying and flagging issues at various severity levels.

## What's Changed

## Highlights

- Added first-class maintainer rereviews through the exact `@reviewgate review` command.
- ReviewGate now owns paginated exact-PR, exact-workflow, current-head run selection and idempotent rerun feedback.
- Added the documented single-workflow `mode: rereview` installation path without PR checkout or model credentials in the command job.

## Required rereview permissions

Grant the command job `actions: write`, `pull-requests: write`, and `issues: write`. Keep permissions job-scoped; the rereview job does not need `contents` access, checkout, or `OPENROUTER_API_KEY`.

## Migration and rollback

Replace repository-specific `issue_comment` discovery scripts with `LVTD-LLC/reviewgate@v0` using `mode: rereview` and `review_workflow: reviewgate.yml`. Existing `pull_request` reviews remain unchanged. To roll back, pin the rereview step to the previously validated action SHA or temporarily remove only the `issue_comment` rereview job; the normal review job continues independently.
## What's Changed
* Add Astro site and CapRover deployment by @gregagi in https://github.com/LVTD-LLC/reviewgate/pull/33
* [Docs] Recommend V0 Action Install Channel by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/34
* [ReviewGate] Reduce Install Review Noise by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/35
* [ReviewGate] Include PR Metadata in Review Prompts by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/32
* [CI] Disable ReviewGate PR Trigger by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/37
* [Docs] Group Changelog Entries by Date by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/36
* [ReviewGate] Support Skill-Backed Review Angles by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/38
* [Docs] Expand README Documentation by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/39
* [Site] Redesign ReviewGate Landing Page by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/40
* Initialize ReviewGate Astro SEO sprint by @gregagi in https://github.com/LVTD-LLC/reviewgate/pull/41
* [ReviewGate] Add First-Class Rereview Support by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/42
* [ReviewGate] Fix Rereview Permission Contract by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/43


**Full Changelog**: https://github.com/LVTD-LLC/reviewgate/compare/v0.1.12...v0.1.13
