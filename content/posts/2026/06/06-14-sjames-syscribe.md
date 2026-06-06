---
title: Validate Syscribe Model
date: 2026-06-06 14:30:11 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

Opt-in product-line variability (GH #7–#11). The variability dimension stays dormant — and changes nothing about validation — unless the model declares a `FeatureDef` and links something to it.

## Highlights

- **Boolean `appliesWhen:`** — conditions any element (including a `TestCase`) on an expression over `FeatureDef` qualified names: `and` / `or` / `not` / parentheses. Bare-QName and list (AND) forms remain valid. `E209` checks every operand.
- **`TestCase` variant membership** is derived from `appliesWhen:` — a test runs in a `Configuration` iff its condition holds for that configuration's selections. There is no `runsIn` field.
- **`syscribe matrix [--json] [--tag]`** — Requirement × Configuration coverage grid (covered / gap / N-A); falls back to a flat view when no feature model is present.
- **`W015`** — per-`Configuration` coverage rule: a requirement active in a configuration with no covering in-config `TestCase`. Honours draft suppression; gate with `--deny W015`.
- **Generic `--tag` filter** — free-text `tags:` filtering across `list` and `matrix`, orthogonal to the feature model.
- `Configuration.features:` selection maps parse; `refs <CONF>` lists the TestCases that run in a configuration.

## Discoverability

Documented in format spec §9.10–9.11, the `syscribe spec validation` / `spec fields` browser, the CLI `--help`, and the LLM authoring prompt (`--agent-instructions`, Part 9b).

## Qualification

New `REQ-TRS-VAR-001..005` / `REQ-TRS-TAG-001` requirements with matching `TC-TRS-*` test cases, scripts, and fixtures. Full tool-qualification suite green (79/79).

**Full Changelog**: https://github.com/sjames/syscribe/compare/v0.3.0...v0.4.0
