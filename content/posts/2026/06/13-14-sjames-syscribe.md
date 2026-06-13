---
title: Validate Syscribe Model
date: 2026-06-13 14:41:21 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.26.10
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.26.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

## CI hardening + downstream-consumable action

### Composite action (`uses: sjames/syscribe@v0.26.10`)
- **Fixed** the bit-rotted invocation: the action ran `syscribe <path>` (no `-m`, no subcommand), which the current CLI rejects — external callers on a recent `version:` were hard-failing instead of validating. Now runs `syscribe -m <model-path> validate`.
- **Added** an `args:` passthrough input, so downstream repos can pass validation flags — notably MagicGrid:
  ```yaml
  - uses: sjames/syscribe@v0.26.10
    with:
      model-path: model_mg/
      args: '--profile magicgrid'
  ```
- Caller inputs are passed via `env:` (no shell injection); error/warning count parser rewritten for the `validate` output format.

### Tool Qualification workflow (`qual.yml`)
- Replaced the flat model loop with an ordered `"<model_dir>|<extra validate args>"` mapping. **`model_mg` now validates with `--profile magicgrid`**, so the MG### structural rules run and W307 is promoted to a gate failure — MagicGrid was previously unchecked in CI. Adding a model or per-model flags is now a one-line edit.

### Qualification model fixes
- Repaired 11 validation errors in `qual/TestCases/` that had left Tool Qualification red since v0.26.7 (scalar `verifies:` → list; missing gherkin `Feature:` headers; added gherkin blocks to the security/asset TCs). All five gated models validate clean; qualification suite passes 225/225.

### Maintenance
- Replaced the deprecated `serde_yaml` with the drop-in `serde_yaml_ng` 0.10.

**Moving tag:** `v0` now tracks the latest 0.x release — use `uses: sjames/syscribe@v0` to follow updates.

**Full Changelog**: https://github.com/sjames/syscribe/compare/v0.26.9...v0.26.10
