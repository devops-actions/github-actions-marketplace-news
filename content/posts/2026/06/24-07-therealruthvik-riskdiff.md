---
title: riskdiff
date: 2026-06-24 07:02:37 +00:00
tags:
  - therealruthvik
  - GitHub Actions
draft: false
repo: https://github.com/therealruthvik/riskdiff
marketplace: https://github.com/marketplace/actions/riskdiff
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/therealruthvik/riskdiff** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/riskdiff) to find the latest changes.

## What's Changed

Local, zero-config risk scanner for git diffs. Run it in CI to block risky changes before merge:

  ```yaml
  - uses: therealruthvik/riskdiff@v0.4.0
    with:
      fail-on: high   # low | medium | high

  What's new in 0.4.0
  - Calibrated defaults — ~60% fewer false positives on real repos
  - Ignores generated/vendored/minified/lockfile/example files by default
  - Smarter secrets (skips placeholders/env refs) and dangerous calls (no more self.model.eval() false hits)
  - --no-fail for report-only runs
  - husky / lefthook / lint-staged recipes, SECURITY.md, trust badges

  No LLM. No API key. No backend. No telemetry. Zero dependencies.
