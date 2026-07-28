---
title: cowork-harness
date: 2026-07-28 22:32:52 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.13.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness GitHub Action is a scriptable, CI-friendly test harness that simulates Claude Cowork's observable runtime contract. It allows developers to run and test their skills in various scenarios, headless, and across multiple CI jobs without the limitations of the Desktop app. The action supports different tiers of execution: replay for free demos, lint for optional token-free validation, and live tiers requiring a Claude Desktop, token, and Docker or Lima runtime. It provides anInspectable output to inspect session behavior and limitations.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.13.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness GitHub Action is a scriptable, CI-friendly test harness that simulates Claude Cowork's observable runtime contract. It allows developers to run and test their skills in various scenarios, headless, and across multiple CI jobs without the limitations of the Desktop app. The action supports different tiers of execution: replay for free demos, lint for optional token-free validation, and live tiers requiring a Claude Desktop, token, and Docker or Lima runtime. It provides anInspectable output to inspect session behavior and limitations.

## What's Changed


### Fixed

- **`lint-skill`'s corpus check sized a smaller set than the ceiling it warns about, and could pass
  `--strict` on a corpus a critique would cut.** The evidence ceiling governs `SKILL.md` + `references/**`
  + `agents/<skill>.md` **combined**; the check summed only the first two. A multi-skill plugin whose
  SKILL.md and references sat in the INFO band while its `agents/<name>.md` carried the total past the
  ceiling reported INFO and **exited 0 under `--strict`** — a green gate on content that was already
  destined to be cut. The check now counts all three classes, resolving `<root>/agents/<name>.md` the same
  way `critique --skill <name>` does; a standalone skill (no `skills/` parent) is unaffected.

  Two clarifications that follow, because both were understated: every file under `references/` counts
  regardless of extension — the packager applies **no** extension filter, so JSON schemas and rule packs
  are part of your corpus — and the remaining approximation now errs in one direction only. The check
  skips staging's git-tracked filter, so an untracked reference inflates the figure and warns early
  rather than late. `corpusCuts` in the report remains the authority.

  Reported by a consumer, who caught it by measuring their own plugin against the new check on upgrade.



## What's Changed
* release: 1.13.2 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/89


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.13.1...v1.13.2
