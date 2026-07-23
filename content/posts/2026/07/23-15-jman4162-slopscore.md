---
title: slopscore-lint
date: 2026-07-23 15:22:35 +00:00
tags:
  - jman4162
  - GitHub Actions
draft: false
repo: https://github.com/jman4162/slopscore
marketplace: https://github.com/marketplace/actions/slopscore-lint
version: v0.8.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `slopscore` is a transparent linter that measures the density of formulaic, generic, low-specificity, and over-polished writing patterns in text. It reports per-dimension scores and evidence spans to help identify specific writing issues, encouraging clearer, more specific prose. The tool is designed as a prose linter rather than an AI detector for authorship, focusing on detecting common writing patterns that are characteristic of AI-generated or low-effort content.
---


Version updated for **https://github.com/jman4162/slopscore** to version **v0.8.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slopscore-lint) to find the latest changes.

## Action Summary

`slopscore` is a transparent linter that measures the density of formulaic, generic, low-specificity, and over-polished writing patterns in text. It reports per-dimension scores and evidence spans to help identify specific writing issues, encouraging clearer, more specific prose. The tool is designed as a prose linter rather than an AI detector for authorship, focusing on detecting common writing patterns that are characteristic of AI-generated or low-effort content.

## What's Changed

Adds a structural-metaphor tell to `insight_signaling` — a class a human reader caught that both linters (and a curated grep) missed.

## What's new
`insight_signaling` now flags anatomical/structural metaphors for an organizing principle:
- **Noun-of-noun** ("the spine of the argument", "the backbone of the piece") — `INSIGHT_STRUCTURAL_METAPHOR`.
- **Copular** ("The spine is the same evidence...") — `INSIGHT_STRUCTURAL_COPULA`.

Both are context-gated: the noun-of-noun form requires a prose/argument noun, and the copular form gates its complement to abstract nouns — so literal senses (lumbar spine, backbone network, construction/React scaffolding, book spine, "a column of vertebrae", "a fiber-optic link") do not fire. Bare "through-line" (legitimate in film/writing) is `--broad`-only.

Ships with literal-negative unit tests (the real guard for this rule class). The JSON report shape is unchanged; `SCHEMA_VERSION` stays 0.8.0.

Full changelog: https://github.com/jman4162/slopscore/blob/main/CHANGELOG.md
