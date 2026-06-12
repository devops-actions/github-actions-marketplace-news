---
title: Miso PR Review
date: 2026-06-12 06:52:08 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.7
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.7**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Feature-bearing 1.2.x release (1.3.0 remains reserved for the native tool-calling work tracked in #197). No breaking changes; behavior is unchanged unless `ci_status_check: true`.

## Features

- **CI check results now feed the review corpus** (#230): when `ci_status_check: true`, the action already waited for CI to reach a terminal state — it now also folds the per-check outcomes (check name / status / conclusion, plus legacy commit statuses) into the review corpus as a **CI Check Results** section. The model cites real test/lint results instead of reporting them as "not verifiable from corpus".

  The action's own workflow run is excluded to avoid feedback loops, and the section is omitted when no external checks exist. No extra API calls — the data was already fetched for gating, just no longer discarded.

  The reviewer still **never runs the test suite itself** — executing untrusted PR code with the bot token stays forbidden. It consumes the results CI produced in its own sandbox.

With `ci_status_check` left at its default (`false`), output is byte-identical to v1.2.6.
