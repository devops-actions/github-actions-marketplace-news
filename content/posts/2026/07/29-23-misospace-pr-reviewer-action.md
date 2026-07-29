---
title: Miso PR Review
date: 2026-07-29 23:02:06 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v2.1.7
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  The action gathers PR metadata, diff context, linked issue context from PR-closing references and optional Linear issue context, linked sources, evidence provider output, tool harness output, image digest provenance, repository impact/history, and an optional standards file. It returns a structured verdict and markdown review body and can publish the result as a sticky comment or a native GitHub review.
  
  The action supports both local models and cloud fallbacks. It uses rule-based risk flags and required checklists to keep small models focused and honest. The action routes boring PRs to a cheap model and escalates scary ones automatically. It provides structured findings with severity-tagged findings, optional line-anchored inline comments, and a severity-gated verdict policy. The action is token-saving by design with unchanged-diff skip, incremental re-reviews, and carry-forward of unresolved findings.
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v2.1.7**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## Action Summary

The action gathers PR metadata, diff context, linked issue context from PR-closing references and optional Linear issue context, linked sources, evidence provider output, tool harness output, image digest provenance, repository impact/history, and an optional standards file. It returns a structured verdict and markdown review body and can publish the result as a sticky comment or a native GitHub review.

The action supports both local models and cloud fallbacks. It uses rule-based risk flags and required checklists to keep small models focused and honest. The action routes boring PRs to a cheap model and escalates scary ones automatically. It provides structured findings with severity-tagged findings, optional line-anchored inline comments, and a severity-gated verdict policy. The action is token-saving by design with unchanged-diff skip, incremental re-reviews, and carry-forward of unresolved findings.

## What's Changed

## What's Changed
* ci(github-action): update action misospace/pr-reviewer-action (v2.1.5 → v2.1.6) by @its-miso[bot] in https://github.com/misospace/pr-reviewer-action/pull/433
* Feat/linear issue context by @phorrr in https://github.com/misospace/pr-reviewer-action/pull/434
* Fix file descriptor leak: use context manager for open() calls by @itsmiso-ai in https://github.com/misospace/pr-reviewer-action/pull/440
* Extend sensitive-file blocklist to cover common credential paths by @itsmiso-ai in https://github.com/misospace/pr-reviewer-action/pull/441
* fix(forgejo): submit approvals with native state by @phorrr in https://github.com/misospace/pr-reviewer-action/pull/435
* docs(forgejo): note create_native_review is Forgejo-mode only by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/442

## New Contributors
* @phorrr made their first contribution in https://github.com/misospace/pr-reviewer-action/pull/434

**Full Changelog**: https://github.com/misospace/pr-reviewer-action/compare/v2.1.6...v2.1.7
