---
title: Zenzic Documentation Quality Gate
date: 2026-06-03 06:48:56 +00:00
tags:
  - PythonWoods
  - GitHub Actions
draft: false
repo: https://github.com/PythonWoods/zenzic-action
marketplace: https://github.com/marketplace/actions/zenzic-documentation-quality-gate
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PythonWoods/zenzic-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zenzic-documentation-quality-gate) to find the latest changes.

## What's Changed

# Zenzic Action v1.2.0

This release aligns the Action with Zenzic Core v0.9.1, adds new pipeline integration inputs/outputs, and hardens the security and compliance gates.

## What's Changed

### Added
- **`guard-scan` Input:** Run `zenzic guard scan` before the main quality gate to intercept credentials early.
- **`cap-exceeded` Output:** Exposes suppression-cap failures for downstream workflow/CI logic.
- **Sovereign Job Summary:** Produces GitHub Action Job Summary outputs for every critical non-zero exit code.

### Changed
- **Zenzic Core Pin:** Aligned and pinned the default Zenzic core engine version to `0.9.1`.
- **Runtime Governance Parity:** The wrapper script now executes score governance checks directly after running the checks.
- **ADR-089 Alignment:** GitHub Actions dependencies pinned to immutable SHA-40 hashes.
- **ADR-037 Alignment:** Unified formatting of release names to a standardized semantic form.
- Final Guard documentation aligned with the exact sequence of the `just verify` recipe.

### Security & Compliance
- Explicitly documented non-suppressible action boundaries for exit codes `2` and `3`.
- Enforced end-to-end forwarding contracts for security-related runtime flags.
- Inherited core governance semantics, including additive `brand_obsolescence` merge behavior.
- Cleaned up contributing and release files for REUSE licensing compliance.

---
*For more details, see the [Changelog](https://github.com/PythonWoods/zenzic-action/blob/main/CHANGELOG.md).*
