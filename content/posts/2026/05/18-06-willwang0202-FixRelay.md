---
title: FixRelay
date: 2026-05-18 06:33:28 +00:00
tags:
  - willwang0202
  - GitHub Actions
draft: false
repo: https://github.com/willwang0202/FixRelay
marketplace: https://github.com/marketplace/actions/fixrelay
version: v0.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/willwang0202/FixRelay** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fixrelay) to find the latest changes.

## Action Summary

FixRelay is a GitHub Action that processes security scanner outputs (e.g., SARIF) to generate concise pull request (PR) risk summaries and actionable AI-driven fix prompts. It automates the evaluation of PR merge risks by scoring findings based on deterministic rules, creating reports and tasks in both human-readable and machine-readable formats. This helps streamline security reviews and remediation efforts by providing clear insights and ready-to-use fix instructions directly within the CI pipeline.

## What's Changed

## What's New

### Direction 1: Fix Outcome Feedback Loop

After a fix PR merges, compare the new scanner run against the baseline to know exactly what changed.

**New subcommand:** `fixrelay compare-outcome`

```bash
# After fix PR merges, re-run the scanner and compare:
fixrelay compare-outcome \
  --previous base-run/summary.json \
  --current fix-run/summary.json \
  --fail-on-new-severity low \
  --out-dir outcome-out
```

Writes `fix-outcome.json` classifying every finding as **resolved**, **persisted**, or **new**. Exits 1 if a regression appears (new finding meets the severity threshold), 0 if clean.

```json
{
  "resolvedCount": 2,
  "persistedCount": 1,
  "newCount": 0,
  "gate": { "failOnNewSeverity": "low", "triggered": false }
}
```

### Direction 2: Pre-commit Hook Gate

Block commits with high/critical findings before they ever reach a PR — scanning only staged files (seconds, not minutes).

```bash
# Install once per repo:
fixrelay hook install --fail-on high

# Uninstall:
fixrelay hook uninstall

# Called automatically by the hook on every commit:
fixrelay hook check --fail-on high
```

**Key properties:**
- Scans only staged files → fast (no full-repo scan)
- Fails open: exits 0 with a warning if Semgrep is not installed (CI remains source of truth)
- Respects `git config core.hooksPath`
- Refuses to overwrite non-FixRelay hooks without `--force`
- Bypass once: `git commit --no-verify`

## CLI Changes

`bin/fixrelay.js` now uses a proper subcommand router:

```
fixrelay generate         # unchanged
fixrelay compare-outcome  # new
fixrelay hook install     # new
fixrelay hook uninstall   # new
fixrelay hook check       # new
```

## Test Coverage

149 tests (was 81). All pass.
