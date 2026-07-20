---
title: cowork-harness
date: 2026-07-20 22:57:43 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  cowork-harness is a headless test harness for Claude Cowork skills that reproduces its observable runtime contract across many scenarios, without using the locked Desktop app. It supports both headless and CI environments by providing different fidelity tiers with varying requirements such as running inside Docker or Lima, and supports various platforms including macOS Apple Silicon and Linux.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

cowork-harness is a headless test harness for Claude Cowork skills that reproduces its observable runtime contract across many scenarios, without using the locked Desktop app. It supports both headless and CI environments by providing different fidelity tiers with varying requirements such as running inside Docker or Lima, and supports various platforms including macOS Apple Silicon and Linux.

## What's Changed


### Added

- **`critique` now accepts the `skill` flags a graded run needs — starting with uploads.** A skill whose
  whole job is "here is a document, analyze it" (cap table, pitch deck, financial model, transcript) could
  not be critiqued at all: there was no way to attach the file, so the agent was asked to analyze a
  document that was never there and then asked what confused it — you harvested a finding about the test
  rig. `--upload`, `--folder`, `--plugin`, `--marketplace`/`--enable` (all repeatable), `--model` and
  `--allow-missing-capability` now reach **both** spawned turns; that is forced, not stylistic, because
  those paths are part of the session-origin key the reflection turn's `--resume` recomputes. `--label`,
  `--timeout`, `--answer`/`--answer-policy`, `--on-unanswered` and the decider flags reach the graded turn
  only. `--answer`/`--answer-policy` make **gated** skills critiquable for the first time — the inner spawn
  has no TTY, so an unscripted gate previously killed the task turn before anything could be graded.
  Anything that cannot work is refused **with its reason** rather than silently ignored:
  `--session-id`/`--resume`, the `--repeat` family, `--ablate-skill`, and the rendering/preview flags.
- **`critique --prompt-file <path>`** — read the probe verbatim from a file, so a probe containing quotes,
  `$` or newlines does not have to survive shell parsing.
- **"Attached inputs" evidence section** — upload filenames and sizes, plus connected-folder mount names,
  never content. Without it the evaluator could not tell "the agent said there was no file, and correctly
  so" from a confabulation.
- **One source of truth for the `skill` flag surface** (`src/run/skill-flag-surface.ts`), where each flag's
  critique disposition is a **required** field, plus a parity guard that fails CI when a new `skill` flag
  arrives without one. The old hand-rolled subset drifted silently — this repo's recurring bug shape.

### Changed

- **Repeating a single-valued `critique` flag is now a usage error (exit `2`) instead of silent
  last-wins.** `--upload`, `--folder`, `--plugin`, `--marketplace`, `--enable` and `--answer` accumulate —
  repeating them is how you pass several. Everything else is single-valued, and `--prompt a --prompt b`
  silently discarding a probe you typed is the class of no-op this command refuses on principle. Boolean
  flags may still be repeated harmlessly. Documented in `critique --help` and
  [docs/critique.md](./docs/critique.md).

### Fixed

- **`critique --dotenv <path>` was documented but unreachable** (shipped that way in 1.5.0). The
  misplaced-global guard rejected the token after any subcommand, and the `--dotenv=x` form that slipped
  past it then hit critique's exact-match parser as "unknown flag". `critique` is now exempt from the guard
  (`--run-dir` still has no per-command meaning and stays rejected everywhere), and a missing file fails
  fast with critique's own error instead of surfacing later as an instrument-failure diagnostic.



## What's Changed
* release: 1.6.0 — critique skill-flag parity by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/58


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.5.0...v1.6.0
