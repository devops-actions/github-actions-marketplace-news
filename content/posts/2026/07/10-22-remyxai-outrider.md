---
title: Remyx Outrider
date: 2026-07-10 22:47:37 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.15
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.15**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Closes REMYX-195 with a mode-aware pre-PR fidelity gate and lands the `lead-content` input for spec-driven dispatches beyond arXiv paper implementations.

## Mode-aware fidelity gate

The pre-PR fidelity gate now routes by the coding session's cited implementation mode instead of applying one strict method-vs-diff comparison to every output:

- **Mode 1 (direct port)** — existing strict reference-vs-diff, plus `self_review['scoped_out']` items are cross-referenced against the Coverage matrix so deliberately-cut components don't fabrication-flag.
- **Mode 2 (adapted port)** — audit prompt is augmented with `self_review['substitutions']` so Claude treats named auxiliary swaps as defensible deviations, not needs-judgment. Core-mechanism deltas still strict.
- **Mode 3 (inspired experiment)** — method-vs-diff comparison replaced with an insight-preservation check that validates the paper's `reframed_insight` is embodied in the diff, the module docstring cites the paper honestly as inspired-not-ported, and the code path actually implements the insight.

New self-review schema fields:
- `mode_cited` — free-text; classified to mode-1/2/3
- `substitutions` — Mode 2 only; auxiliary swaps
- `reframed_insight` — Mode 3 only; the paper's insight being drawn on

Pre-v1.7.14 self-reviews without `mode_cited` default to Mode 1 semantics — backward-compatible.

## lead-content input

New optional workflow input `lead-content` that replaces the paper's `suggested_experiment` slot in SPEC.md with caller-provided verbatim content. Both preflight and the coding session reason against the lead's scoped framing instead of the paper's full contribution — which is what the caller wants when converting a prior Outrider Issue (or an internal design doc, RFC, engineering brief) to a Draft PR.

Turns Outrider from arXiv-paper-implementation into any-spec-to-PR — and the mode-aware fidelity gate now handles the Mode-3 outputs that spec-driven dispatches naturally produce.

## README

- Opening rewritten around the 10× validation pain-point + a concrete deployment claim (schedule or dispatch as GitHub Action)
- Cost section folded into a new "Model backends" table with Opus-vs-GLM comparison and a routing heuristic
- Manual install workflow YAML fixed: obsolete `pin-method` input → correct `pin-arxiv` + `search-method` + `publish` inputs
- Examples rewritten with explicit Match: / Shape: labels; ~40% shorter each

## Tests

871 passing (11 new fidelity mode-routing tests).
