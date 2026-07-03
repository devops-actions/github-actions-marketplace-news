---
title: AGENTS.md Lint (Schliff)
date: 2026-07-03 22:02:31 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.4.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.4.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## What's Changed

## Added

- **`operational_coverage` dimension for AGENTS.md** (#83). Measures whether an AGENTS.md actually equips a coding agent to operate the repo: real setup/build/test commands (command-family classification, doc-wide, headings never gate) plus code-style / gotchas / PR directive sections with concrete code tokens. Surfaced in the CLI dimension table, the GitHub Action's PR comment, and accepted by the leaderboard submit API.

## Changed

- **BREAKING (scores): the AGENTS.md headline profile is now `structure 0.40 / operational_coverage 0.40 / efficiency 0.20`** (was 0.5/0.5). `efficiency` was a validated gameable proxy — a junk-fence-stuffed doc scored 92.5/A while the same real commands written inline scored 70.0/C. All AGENTS.md scores re-baseline (30-file corpus: mean 61.06, no file reaches S). SKILL.md / CLAUDE.md / .cursorrules / system-prompt scoring is **byte-identical** to 8.3.0.

## Security

- Fixed a ReDoS in the operational_coverage heading regex (quadratic on whitespace-only heading lines) **before it ever shipped** — found by a 75-agent adversarial review pass, together with a directive-gate gaming hole, a fence-state desync, and 12 command-recall bugs. Full record: `docs/specs/agents-md-operational-coverage.md` §11.

**Full changelog:** https://github.com/Zandereins/schliff/compare/v8.3.0...v8.4.0
