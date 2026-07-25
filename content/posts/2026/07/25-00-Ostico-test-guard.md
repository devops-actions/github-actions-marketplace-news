---
title: Test Adequacy Guard
date: 2026-07-25 00:24:59 +00:00
tags:
  - Ostico
  - GitHub Actions
draft: false
repo: https://github.com/Ostico/test-guard
marketplace: https://github.com/marketplace/actions/test-adequacy-guard
version: v1.10.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Test-Guard automates the task of ensuring that code changes are adequately covered by tests. It uses diff coverage, heuristic matching across multiple languages, and AI-powered evaluation to ensure that every modified file has corresponding tests or is trivially untestable. The action provides a single pass/fail verdict based on these evaluations, helping developers quickly identify whether their PR has sufficient testing.
---


Version updated for **https://github.com/Ostico/test-guard** to version **v1.10.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-adequacy-guard) to find the latest changes.

## Action Summary

Test-Guard automates the task of ensuring that code changes are adequately covered by tests. It uses diff coverage, heuristic matching across multiple languages, and AI-powered evaluation to ensure that every modified file has corresponding tests or is trivially untestable. The action provides a single pass/fail verdict based on these evaluations, helping developers quickly identify whether their PR has sufficient testing.

## What's Changed

Patch release. **If you use a jest/istanbul `clover.xml`, v1.10.0 did not deliver its own fix — upgrade to this.**

## The bug

v1.10.0 taught Test-Guard to read the coverage report directly, so a file with no *executable* changed lines (type declarations, interface members, doc comments) would pass instead of failing with **"not in coverage report."** For jest reports, that check still failed.

Clover reporters disagree about which attribute holds the qualified path:

```xml
<!-- jest / istanbul -->
<file name="types.ts" path="/home/runner/work/app/app/src/bruno/types.ts">

<!-- PHPUnit -->
<file name="/var/www/app/lib/AuthCookie.php">
```

The presence check read `name=`, which is right for PHPUnit but yields a bare basename under jest. `is_in_report()` then refused to match it — deliberately, since a bare basename would otherwise match a same-named file in an unrelated directory. Net effect: a file sitting in the report at **100%** was still reported as un-instrumented.

## The fix

The Clover presence extractor now reads **both** `name=` and `path=` from every `<file>` and lets `is_in_report()` pick whichever is qualified. Path-prefix detection and Clover rewriting are untouched, so nothing else changes.

Diagnosed and verified against a real failing CI artifact, not a synthetic fixture: `is_in_report("src/bruno/types.ts")` returns `True`, Layer 1 returns PASS and short-circuits, and Layer 3's shortcut returns SKIP where it previously returned FAIL. A path genuinely absent from the report still fails, so real instrumentation gaps are still caught.

Regression tests now pin both reporter shapes.

## Upgrading

No configuration changes. Users on `@v1` get this automatically on the next run. If you added an exclude entry to work around a declaration-only file, you can drop it.

**Full changelog:** https://github.com/Ostico/test-guard/compare/v1.10.0...v1.10.1
