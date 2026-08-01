---
title: Run Godlint
date: 2026-08-01 22:17:04 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Godlint is an executable engineering constitution that automates the enforcement of rules across Rust, TypeScript, JavaScript, and Python repositories. It provides guardrails for AI coding agents to catch architectural drift before generated code reaches review, share boundaries and thresholds across a polyglot repository, enforce deterministic policy locally and in CI, account for accountable exceptions with expiring suppressions, and ensure local compliance without dependencies on external LLMs.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

Godlint is an executable engineering constitution that automates the enforcement of rules across Rust, TypeScript, JavaScript, and Python repositories. It provides guardrails for AI coding agents to catch architectural drift before generated code reaches review, share boundaries and thresholds across a polyglot repository, enforce deterministic policy locally and in CI, account for accountable exceptions with expiring suppressions, and ensure local compliance without dependencies on external LLMs.

## What's Changed

### Added

- `ci/stale-action-refs` — makes full commit pins reviewable without network access. It reports a pin
  without an inline version label at warning, and reports repository-proven contradictions at the
  configured severity when the same action and SHA carry different labels or the same action and label
  name different SHAs. A single leading `v` is normalised before comparing, because `v4.6.2` and
  `4.6.2` name the same release and reporting them as a contradiction would spend the rule's only
  asset — that it speaks when a label lies. `allow-in` removes paths from reporting and comparison.
  The rule deliberately cannot verify that a label names the pinned commit; zizmor's online
  `stale-action-refs` and `ref-version-mismatch` audits cover that external check.
- `ci/no-silenced-failure` — reports checks that cannot make a workflow fail: literal
  `continue-on-error: true` settings and scripts ending `|| true`, `; exit 0`, or `|| exit 0`. A
  same-job read of `steps.<id>.outcome` or `.conclusion` proves a deliberate soft step and stays
  silent. Corpus-common `continue-on-error` and `|| true` findings are capped at warning; explicit
  exit-zero endings stay at the configured severity.

### Changed

- `ci/no-monolithic-job` raises the `recommended@1` step limit from 7 to 20, the p90 of 231 jobs
  across 94 workflows in nine widely used repositories. The former limit came from this repository
  alone and reported 36% of real jobs. Raising it also made this repository's own `release.yml`
  exemption unnecessary, which is what confirmed the number was wrong rather than the workflow.
- `ci/no-inline-script` keeps its limit of 8 after the same measurement — across 981 real scripts it
  is p85, and 15% exceed it — so the number is now corpus-backed rather than repository-derived.
- A condition written without braces is read as an expression by every rule that reads conditions.
  GitHub treats an `if:` as an expression whether or not it is wrapped in `${{ … }}`, so
  `ci/bot-conditions` was missing the idiomatic spelling entirely and `ci/no-silenced-failure`'s
  escape hatch did not open for it. Both now share one reader.

### Fixed

- `style/no-comments` no longer reports a returned string literal as a docstring. The check confirmed
  the string was the first thing in a block but never that the string *was* the statement, so a Python
  function whose first statement returned a literal — `return "active"` — was reported as a comment at
  error under `recommended@1`. A real docstring, including a module docstring, still reports. Found by
  writing deliberately bad Python to probe for rules Godlint is missing.
- A declared drift in `.github/accepted-drift.md` survives the merge that lands it, so a pull request
  that deliberately relaxes a rule no longer has to be re-declared on every subsequent branch.
- `validate-pull-request.py` runs its change-scoped checks whether or not `--release-line` is passed,
  and fails when it cannot find a release line to compare against. Only CI passed the flag, so a local
  run reported one fewer check than CI ran and printed that all of them passed — including, on one
  branch, the check that then failed the pull request.

