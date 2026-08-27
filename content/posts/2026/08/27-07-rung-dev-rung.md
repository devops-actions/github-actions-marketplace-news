---
title: rung gate
date: 2026-08-27 07:54:08 +00:00
tags:
  - rung-dev
  - GitHub Actions
draft: false
repo: https://github.com/rung-dev/rung
marketplace: https://github.com/marketplace/actions/rung-gate
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:** The rung action automates AI agent verification by running the real thing, capturing its output, and creating a record that can be independently verified. It provides a way to ensure that changes are observed and verified, not just claimed as such. This enhances transparency in AI development and reduces the risk of errors or untested changes being deployed.
---


Version updated for **https://github.com/rung-dev/rung** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rung-gate) to find the latest changes.

## Action Summary

**Summary:** The rung action automates AI agent verification by running the real thing, capturing its output, and creating a record that can be independently verified. It provides a way to ensure that changes are observed and verified, not just claimed as such. This enhances transparency in AI development and reduces the risk of errors or untested changes being deployed.

## What's Changed

## rung 0.7.0

A fail-closed pass over the two places the gate and the witness were still willing to answer without evidence. Minor, not patch: two changes can newly block or newly exit non-zero.

### Changed (breaking)
- **A policy MUST declare `"version": 2`.** A missing, non-integer, or unknown version now blocks (exit 30). `version` was a known key that was never checked, so a policy from a future rung, or one with no version at all, gated to pass. The majors disagree about what the numbers mean (v1's rung ladder ran `0..4`, so `min_rung: 1` was permissive there and is the maximum here), and guessing is the one thing the gate does not do. A v1 policy gets its own regenerate message, as a v1 bundle already did. The version is validated **before** the unknown-key check: a policy from a later rung arrives carrying both a new version and new keys, and naming the unknown key sends you hunting a typo when the real answer is that the gate is too old.
- **`rung run --no-gate` exits 2** (cannot-evaluate), not 0. With `--no-gate` the runner resolves no policy, pins none, and runs no gate, so it reaches no verdict; previously a witnessed timeout wrote `verdict: blocked` into the bundle and still exited 0. `run.py` now contains no `EXIT_PASS` at all, so every 0 from `rung run` is a gate verdict rather than one the runner minted, pinned by a source check because the property is that no such code path exists.

### Changed
- **POSIX-only for the witness.** `rung run` kills the process **group**, which is what makes a kill cover a server's children, and that is POSIX. It now refuses other platforms up front with a named reason instead of failing later as a bare exit 2. `rung gate` and `rung attest` read and hash files, so they run anywhere Python does. Declared in the metadata rather than ported.

### Fixed
- **The skill's "smallest bundle that runs" example was schema-invalid**, omitting four required fields (`change.repo`, `change.s0`, `change.s1`, `claims[].claim`). It gate-passed while failing validation against the schema published at its own `$id`, and contradicted its own prose. The skill is copied into an agent's context, so that example is a bundle-writing instruction.
- The capture cap is derived from the gate's artifact cap instead of a second literal, and its comment corrected: the witness caps the sum of both channels, the gate caps each artifact.

### Added
- **Gate-pass now implies schema-valid for everything rung produces or ships**: the worked cases in `gate/cases/`, all three emitters (`run`, `run --diff`, `attest`), and every bundle example in the shipped docs, checked by the suite. This does not make the gate a validator: a hand-authored bundle can still gate-pass while schema-invalid.

18 tests added (243 total). Exit-code contract unchanged: `0` pass, `30` block, `2` usage / cannot-evaluate.

