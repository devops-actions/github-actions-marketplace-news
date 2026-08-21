---
title: Provael VLA red-team
date: 2026-08-21 21:59:19 +00:00
tags:
  - provael
  - GitHub Actions
draft: false
repo: https://github.com/provael/provael
marketplace: https://github.com/marketplace/actions/provael-vla-red-team
version: v0.37.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Provael™ automates the red-teaming of Vision-Language-Action (VLA) robot policies through simulation. It evaluates policy success by running a series of attacks and measuring Attack Success Rate (ASR), providing an ASR-by-attack table, a pass/fail scorecard, and a SARIF report. The action is particularly useful for testing the robustness of VLA policies in various scenarios.
---


Version updated for **https://github.com/provael/provael** to version **v0.37.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/provael-vla-red-team) to find the latest changes.

## Action Summary

Provael™ automates the red-teaming of Vision-Language-Action (VLA) robot policies through simulation. It evaluates policy success by running a series of attacks and measuring Attack Success Rate (ASR), providing an ASR-by-attack table, a pass/fail scorecard, and a SARIF report. The action is particularly useful for testing the robustness of VLA policies in various scenarios.

## What's Changed


### Added

- **`provael doctor` — the command that answers "why did that not work here".** Twenty-six
  top-level commands and not one diagnosed an install. The first-run transcript shows the cold path
  is twenty seconds, so the install is not the problem; the SECOND run is, when someone reaches for
  `--policy smolvla` without the `[lerobot]` extra or for a keep-out suite with no calibration and
  gets an import error or a silent default instead of a diagnosis.

  One screen: Python and platform, installed version against PyPI (`--offline` skips the lookup),
  which policy backends are ready and which are `SCAFFOLDING_POLICIES` **with the reason each is
  scaffolding**, which suites actually import, whether `CALIBRATED_ZONES` is populated (it is not —
  it says so and points at issue #136), whether `PROVAEL_REQUIRE_CALIBRATED` is set, and the age of
  the freshness signal against `STALE_DAYS`. Nothing is inferred: a suite is reported importable
  only after being constructed, and "ready" explicitly does not claim a checkpoint is present.

- **Published JSON Schemas for the two artifacts third parties are asked to produce.**
  `schemas/report.v4.schema.json` and `schemas/leaderboard.v5.schema.json`. The tree carried three
  `$schema` keys and none described `report.json` or `leaderboard.json`, so an open submission queue
  with zero external rows was asking people to guess the shape. They are **generated from the
  pydantic models** (`scripts/gen_schemas.py`), not written from example files, so they describe the
  contract rather than today's artifacts; `tests/test_published_schemas.py` validates all 33
  committed artifacts against them, including schema-2 and schema-3 reports that predate the current
  model. A `vN` schema accepts `N` or lower and **refuses** anything higher, so a too-old tool says
  so rather than silently passing. Referenced from `CONTRIBUTING-leaderboard.md` with a
  `check-jsonschema` one-liner.

- **A measured result for `weight_integrity`, and a study page that leads with what it is not.**
  The family shipped with zero output. `results/weight_integrity_stub/` now holds the ladder as five
  shards plus an `aggregate.json` analysis, in the same shape as the ten-task suite — 750 episodes,
  both arms at every rung, benign control throughout. `docs/studies/weight-integrity-stub.md`
  publishes it with the caveat block **above** any number: stub backend, 64-parameter INT8 danger
  head, separation expected by construction, flips emulated with `Literal[True]`, and no
  corroboration of the architecture-dependence result it was built from.

  Gradient 50/50 at every rung; random 4/250; benign control 0/50 throughout. The interval is
  bootstrapped over the five **rungs**, not over episodes, because the rung is the unit of analysis
  — and n = 5 is stated rather than hidden. **No leaderboard row was added**, and the study page says
  why: the board is the real-policy board, a shared table asserts comparability, and this is not
  comparable to anything on it.

### Fixed

- **A stub run could reset the freshness badge, and briefly did.** Committing the study above put a
  `policy='stub'` execution manifest under `results/`, and `latest_measurement` — which scans
  committed runs — immediately reported "today". The badge would have gone from "11 days ago, red"
  to green with nothing re-measured.

  The stub satisfies the letter of the definition: it is a registered policy and the run does
  execute attacks against it. `docs/standards/last-measured.md` had already written this refusal
  down on 21 August with nothing in the code enforcing it. `watch.counts_as_measurement` now
  enforces it, `FIXTURE_POLICIES` names the backends that do not count, and the badge correctly
  reads **12 days, red**.

- **One family count, computed, everywhere.** Four surfaces disagreed simultaneously:
  `docs/attacks.md` opened with "**Fourteen** adversarial families", `docs/examples.md` said
  `full-sweep` "runs all 14", `docs/studies/action-envelope.md` called 14 "the **full adversarial
  registry**", and README said thirteen families lacked a real-model measurement while claiming
  twelve. The true numbers, each with its definition: **16** adversarial families (registry minus
  `baseline` and `control`), **18** total registered families, **38** adversarial attacks, **41**
  total registered attacks.

  `tests/test_counted_claims.py` enumerated phrase patterns, which is why it was green while all
  four were wrong — it checked the claims it was handed rather than the claims that exist. It now
  sweeps every `<number> … families` / `<number> … attacks` construction in README and `docs/**`,
  requiring each to be a registry-derived value or a **named subset** with a stated reason. The
  first version of the regex missed `**Fourteen**` because emphasis wraps the number; that hole is
  fixed and noted, since it would have skipped the exact claim the sweep was written for.

- **The README described a different run than the board publishes.** It said the board was "measured
  with **`provael 0.1.0`**" while the board and all ten shards say `0.32.0`; `0.1.0` is the
  `tool_version` of the superseded single-task run. `test_leaderboard_version_claim` already tied
  the board to its shards and passed throughout, because the README was never in the comparison. It
  is now. The paragraph also states, in the words of the file itself, that
  `leaderboard/method-equivalence.json` is *"a code-inspection argument, NOT a re-measurement."*

- The 0.36.0 coverage entry hardcoded "88% of 7,833 statements" three lines above a paragraph
  criticising hardcoded percentages. It is now explicitly a snapshot and points at the badge as the
  live figure, rather than being rewritten — the entry records what was measured on the day.


