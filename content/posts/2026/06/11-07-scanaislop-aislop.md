---
title: aislop — AI Code Quality Gate
date: 2026-06-11 07:20:30 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-ai-code-quality-gate
version: v0.12.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.12.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-ai-code-quality-gate) to find the latest changes.

## What's Changed

aislop v0.12.0 adds a terminal-native agent workflow for scanning, repairing, and reviewing AI-generated code without leaving your local checkout.

## Highlights

- Added `aislop agent` for provider-aware repair sessions from the terminal.
- Added agent session, monitor, apply, watch, stop, and provider commands.
- Added live session state with edited files, score targets, token usage, and review steps.
- Improved terminal output, command suggestions, scoped scans, and rule impact metadata.
- Calibrated scoring so low-impact style signals are softer while real findings stay visible.
- Improved Python and Go dependency/import detection to reduce noisy false positives.

## Fixes

- Fixed agent worktree diffs so staged and untracked files are included correctly.
- Fixed monitor debounce handling so stable changes trigger the settled scan/repair cycle.
- Fixed telemetry coverage, subdirectory scope handling, monitor stop behavior, and installer stability.
- Fixed zero-debounce monitor mode so `--debounce 0` reacts immediately to the first changed snapshot.

## Validation

- 144 test files passing
- 1,276 tests passing
- Self-scan score: 100/100
- 0 diagnostics
- `npm pack --dry-run` verified `aislop@0.12.0` with 26 files
