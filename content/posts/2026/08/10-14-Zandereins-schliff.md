---
title: AGENTS.md Lint (Schliff)
date: 2026-08-10 14:14:20 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.11.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Schliff is a tool that scores the quality of AI instruction files, ensuring consistency and reliability across different environments. It uses an explicit, versioned rubric to provide deterministic quality scores, preventing degradation and providing reproducibility in model evaluation.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.11.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

Schliff is a tool that scores the quality of AI instruction files, ensuring consistency and reliability across different environments. It uses an explicit, versioned rubric to provide deterministic quality scores, preventing degradation and providing reproducibility in model evaluation.

## What's Changed

Patch release. No score changes, no exit-code changes, no new surface.

## Fixed

**The skill mesh no longer reports a skill as colliding with itself.** Installing the same skill in two places — `~/.claude/skills` plus a project-local copy, which is how schliff itself is distributed — produced two *critical* findings and cost 27 mesh-health points. The pair was never two skills competing for triggers; it is one skill at two paths. The remediation the mesh generated for it named the same skill on both sides of "narrow your scope to disambiguate", which nobody can act on.

**A duplicate skill name is now reported as what it is.** `duplicate_name` (severity `info`, no health penalty) lists every path the skill was found at — only one of them resolves, and the file does not say which.

**`doctor` shows mesh findings again after an upgrade.** Its incremental cache keys on skill *content*, and upgrading schliff changes no file on your disk — so the verdict computed by the previous version was returned indefinitely. The cache now carries a version stamp and discards verdicts written by different analysis logic. If you ran `doctor` on 8.11.0, this is the release that makes its output correct again.

**Full changelog:** https://github.com/Zandereins/schliff/compare/v8.11.0...v8.11.1
