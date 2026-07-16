---
title: cowork-harness
date: 2026-07-16 14:41:18 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, cowork-harness, provides a scriptable, CI-friendly test harness to reproduce the observable runtime contract of Claude Cowork. It allows users to test their skills across many scenarios headless and in CI environments without relying on the locked Desktop app. The action supports different fidelity tiers, including replay mode for free demos, linting functionality with Python3, and live testing modes that require a running agent, token, and runtime environment. The summary highlights its main purpose, how it solves the need to test skills in various contexts, and the key capabilities it offers for developers.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action, cowork-harness, provides a scriptable, CI-friendly test harness to reproduce the observable runtime contract of Claude Cowork. It allows users to test their skills across many scenarios headless and in CI environments without relying on the locked Desktop app. The action supports different fidelity tiers, including replay mode for free demos, linting functionality with Python3, and live testing modes that require a running agent, token, and runtime environment. The summary highlights its main purpose, how it solves the need to test skills in various contexts, and the key capabilities it offers for developers.

## What's Changed


Minor: `analyze-skill` gains interactive-artifact write-back detection (static + an optional `--runtime`
headless-DOM confirmer), `lint` gains a container-only-key tier check, and the `doctor` JSON envelope is
frozen as a covered SPEC §12 surface. All additive.

### Added

- **`analyze-skill` now detects interactive-artifact write-backs lost under Cowork.** Alongside the
  existing `/sessions` path scan, it statically analyzes `.html/.htm/.js/.mjs/.ts/.jsx/.tsx/.py` sources
  under the target for a relative `fetch`/XHR/`sendBeacon`/`<form method=post>` write-back that silently
  fails under Cowork (the artifact is served from Cowork's own origin, so a relative write-back resolves
  non-ok and a page that doesn't check `resp.ok` shows a false "Saved"). Findings: `artifact-write-back-lost`
  (error — gates under `--strict`), `artifact-write-back-suspect` (advisory), and a separate top-level
  `analysisFailures` **could-not-verify** channel (a candidate that couldn't be parsed/analyzed) that
  always exits `3`, `--strict`-independent. A guard that isn't statically provable-truthy is `suspect`,
  never silently clean; the blanket `analyze-skill: ignore` marker does not silence artifact rules.
  Each `SkillFinding` now carries a `severity` (`error|advisory`); `--strict` gates on any error finding.
- **`analyze-skill --runtime`** — an optional headless-DOM confirmation that drives a materialized `.html`
  artifact in jsdom (stubbed network + synthetic user actions, run twice) to *observe* whether a relative
  write-back fires and is lost. Enrichment only (never changes the exit code); trusted-source scope. `jsdom`
  is an optional, dynamically-imported dependency — absent it reports "run `npm i jsdom` to enable".
- **`schema/doctor.json`** — the `doctor --output-format json` envelope is now a covered SPEC §12 surface
  (`oneOf` the completed-probe shape and the shared error envelope for every category). `doctor`'s normal
  JSON output is standardized through the shared envelope frame.
- **`lint` flags container-only assertion keys off-container** — `no_scratchpad_leak`/`present_files_called`
  on `fidelity: protocol|microvm|hostloop` is an ERROR, on `fidelity: cowork` a WARN, clean on `container`.



## What's Changed
* release: 1.1.0 — analyze-skill artifact write-back detection, lint tier check, doctor SPEC §12 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/50


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.1.0
