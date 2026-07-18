---
title: slopscore-lint
date: 2026-07-18 14:34:49 +00:00
tags:
  - jman4162
  - GitHub Actions
draft: false
repo: https://github.com/jman4162/slopscore
marketplace: https://github.com/marketplace/actions/slopscore-lint
version: v0.8.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `slopscore` is an AI-slop linter that measures the density of formulaic, generic, low-specificity, and over-polished writing patterns in text. It reports per-dimension scores and evidence spans to help identify and fix these patterns, nudging writers toward clearer and more specific prose.
---


Version updated for **https://github.com/jman4162/slopscore** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slopscore-lint) to find the latest changes.

## Action Summary

`slopscore` is an AI-slop linter that measures the density of formulaic, generic, low-specificity, and over-polished writing patterns in text. It reports per-dimension scores and evidence spans to help identify and fix these patterns, nudging writers toward clearer and more specific prose.

## What's Changed

Two new detection axes, both conservative by default.

## `insight_signaling` — a new dimension
Pseudo-profundity tells that announce insight rather than contain it: "load-bearing assumption", "doing the real work", "the crux of the issue", "pressure-test the claim". Context-gated (literal "load-bearing wall" is not flagged) and mostly low/medium severity — density, not existence, is the tell. Distinct from the WP:AILEGACY puffery in `significance_inflation`. Rules-only (excluded from the ML `FEATURE_ORDER`), so no model retrain. Also adds antithesis variants to `parallelism` ("not merely X but Y", "less about X, more about Y", the non-'it' em-dash form, "both/and").

## Expanded `weasel_attribution` — the "fake evidence" axis
Impersonal-passive attribution ("it is widely believed", "sources say"), unearned-certainty reasoning smells ("Clearly,", "needless to say", "it goes without saying"), and hedge+vague-adjective ("somewhat successful"). Scored by default, high-precision.

## New `--broad` flag (also `[tool.slopscore] broad`)
An opt-in tier of higher-false-positive rules, off by default: rationalist/essayist jargon for `insight_signaling` (steelman, first principles) and bare quantifiers/hedges/intensifiers for `weasel_attribution` (many/very/may). Kept off the default score because those bare words have no discriminative power on the ESL/simple-English fairness slices — `--broad` is a self-editing highlighter, not an accusation. Deliberately excludes the hedges `human_writing_signals` rewards.

The JSON report gains an `insight_signaling` key in `dimensions`; `SCHEMA_VERSION` is 0.8.0. Fairness gate stays 0% on the plain/non-native slices with the default rules.

Full changelog: https://github.com/jman4162/slopscore/blob/main/CHANGELOG.md
