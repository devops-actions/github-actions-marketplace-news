---
title: Zenzic Documentation Quality Gate
date: 2026-06-07 06:32:18 +00:00
tags:
  - PythonWoods
  - GitHub Actions
draft: false
repo: https://github.com/PythonWoods/zenzic-action
marketplace: https://github.com/marketplace/actions/zenzic-documentation-quality-gate
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PythonWoods/zenzic-action** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zenzic-documentation-quality-gate) to find the latest changes.

## What's Changed

### Added

- `guard-scan` input: run `zenzic guard scan` before the main quality gate.
- `cap-exceeded` output: exposes suppression-cap failures for downstream workflow logic.
- Sovereign Job Summary output for every critical non-zero exit code.

### Changed

- Runtime governance parity: wrapper executes score governance checks after `check all`.
- ADR-037 alignment: `release_name` in `.zenzic.toml` set to semantic version form.
- ADR-089 alignment: GitHub Actions dependencies pinned to immutable SHA-40.
- Final Guard documentation aligned to the actual `just verify` recipe sequence.

### Security

- Explicitly documented non-suppressible action boundary for exits 2 and 3.
- Forwarding contract for security-related runtime flags is enforced end-to-end.
- Inherited governance semantics from core: additive `brand_obsolescence` merge behavior.
