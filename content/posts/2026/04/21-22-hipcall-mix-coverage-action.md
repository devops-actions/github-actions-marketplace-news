---
title: Mix Coverage
date: 2026-04-21 22:01:42 +00:00
tags:
  - hipcall
  - GitHub Actions
draft: false
repo: https://github.com/hipcall/mix-coverage-action
marketplace: https://github.com/marketplace/actions/mix-coverage
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/hipcall/mix-coverage-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mix-coverage) to find the latest changes.

## Action Summary

This GitHub Action integrates with Elixir projects to parse `mix test.coverage` output, automate posting or updating sticky pull request comments with test coverage details, and enforce coverage thresholds at both total and per-module levels. It streamlines code review by providing actionable insights into coverage metrics, highlighting changed files, and ensuring consistent enforcement of coverage standards across multiple Elixir versions.

## What's Changed

Two fixes bundled into a single patch release.

### Pre-1.20 coverage format supported

The 1.20 release introduced a markdown-pipe coverage table (`| Percentage | Module |`). Older Elixir versions emit a plain `Percentage | Module` table without leading or trailing pipes. The parser now recognises both, so hex packages that test across Elixir 1.17–1.20 in the same workflow can use this action without per-version branching.

### Changed-files matching fixed for non-standard layouts

Two bugs in `include-changed-files: true`:

1. The `lib/` prefix strip required a leading slash, so paths starting directly with `lib/` (like `lib/my_app/account.ex`) weren't normalised.
2. Projects whose filesystem layout doesn't mirror their module namespace (e.g. `lib/my_app/account.ex` defining `MyApp.Data.Account`) never matched any module.

Matching now includes a basename fallback alongside the existing strict path comparison.


**Full diff:** https://github.com/hipcall/mix-coverage-action/compare/v1.0.0...v1.0.1

