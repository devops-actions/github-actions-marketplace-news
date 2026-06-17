---
title: LCOV Coverage Check
date: 2026-06-17 07:33:26 +00:00
tags:
  - pento
  - GitHub Actions
draft: false
repo: https://github.com/pento/lcov-coverage-check
marketplace: https://github.com/marketplace/actions/lcov-coverage-check
version: v3.1.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/pento/lcov-coverage-check** to version **v3.1.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lcov-coverage-check) to find the latest changes.

## What's Changed

### Fix: Baseline retrieval pages back through default-branch runs

The action found the baseline by inspecting only the **single most recent** successful default-branch run for the `lcov-baseline` artifact. But a successful run doesn't guarantee a baseline — the coverage job is often conditional (path filters, matrix skips, flaky reruns), so the latest run can complete without one while an older run still holds a perfectly valid baseline.

When that happened, the action silently fell back to summary-only mode: ratcheting wasn't enforced (`passed=true` hardcoded) and no PR comparison comment was posted. Coverage could regress behind a green check, intermittently, depending only on what the most recent default-branch commit happened to touch.

Retrieval now pages back through recent successful default-branch runs (newest first) and uses the first that still holds a non-expired `lcov-baseline[-<label>]` artifact, only falling back to summary-only mode when none of the inspected runs has one. Pagination follows the `Link: rel="next"` header (`per_page=100`, 50-page cap). (#15)

### Also

- Hardened the per-run artifact query so a transient failure (or malformed response) for one run skips that run and keeps paging, instead of aborting the whole search.
- `mktemp` calls now use a `${TMPDIR:-/tmp}/…` template, matching the rest of the codebase (portable; the previous bare `mktemp -d` ignored `$TMPDIR` on macOS).

No workflow changes needed. Existing setups pick up the fix automatically.

