---
title: vibecheck-ai-slop
date: 2026-08-05 14:41:25 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.17.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  vibecheck is a tool that automates static code analysis to catch AI-generated code smells, such as hard-coded secrets, empty catch blocks, and SQL query concatenation. It provides over 40 rules to detect common issues in AI-generated codebases. The action runs locally and is zero-config, requiring no installation or API keys. It supports macOS, Linux, and standalone binaries for Python developers and can be run directly from the command line without Node.js or npm.
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.17.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## Action Summary

vibecheck is a tool that automates static code analysis to catch AI-generated code smells, such as hard-coded secrets, empty catch blocks, and SQL query concatenation. It provides over 40 rules to detect common issues in AI-generated codebases. The action runs locally and is zero-config, requiring no installation or API keys. It supports macOS, Linux, and standalone binaries for Python developers and can be run directly from the command line without Node.js or npm.

## What's Changed

Patch for a real defect in v1.17.0, found by dogfooding and a Codex review pass. **If you use the slop score, upgrade.**

## The score was flattering in diff mode

The score is findings per KLOC of a whole codebase. With `--diff` only changed lines are scanned, and the 1 KLOC floor then divides those findings by 1000.

I added an `eval()` and a `console.log` to this repo, making it strictly worse:

| mode | score |
|------|-------|
| `--diff --score` | **69 (B)** |
| full scan | **46 (C)** |

The diff-scoped number is *better*, on a change that made the code worse. A gate like `--diff --min-score 60` would have passed a commit adding `eval()` that the full codebase fails.

`--score`, `--min-score` and `--badge` now refuse to run with `--diff`, `--staged` or `--diff-stdin`. Use `--fail-on` and `--max-warnings` for pull requests, `--min-score` for the codebase.

Also closes a second hole: the empty-changeset early return ran before the score was computed, so `--diff --badge x.svg` silently wrote no file and exited 0.

## The v1.17.0 guard test was weaker than I said

I claimed it made recalibrating D50 without moving the bands fail the build. It didn't. Codex showed it still passed when D50 moved 30 → 20, and when C's floor moved 40 → 50.

It now asserts the actual design claim, that C spans the corpus interquartile range:

| mutation | v1.17.0 test | v1.17.1 test |
|----------|--------------|--------------|
| D50 30 → 20 | passed | **fails** |
| C floor 40 → 50 | passed | **fails** |
| revert to 90=A bands | fails | fails |

## computeScore guarded

It's exported. `computeScore([warn], undefined)` returned `NaN` graded F; `computeScore([warn], 1000, -30)` returned `107` graded A. Now clamped. Not reachable from the CLI.

376 tests, up from 373.
