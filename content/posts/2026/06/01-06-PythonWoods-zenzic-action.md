---
title: Zenzic Documentation Quality Gate
date: 2026-06-01 06:48:59 +00:00
tags:
  - PythonWoods
  - GitHub Actions
draft: false
repo: https://github.com/PythonWoods/zenzic-action
marketplace: https://github.com/marketplace/actions/zenzic-documentation-quality-gate
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PythonWoods/zenzic-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zenzic-documentation-quality-gate) to find the latest changes.

## Action Summary

The Zenzic GitHub Action automates the enforcement of documentation quality and security standards in CI pipelines. It performs deterministic checks, including credential and path traversal validations, and integrates results directly into GitHub Code Scanning, pull request annotations, and the Security tab. Key capabilities include automated SARIF output, strict exit code handling for security incidents, and features like sovereign audit mode and version pinning for reproducible CI workflows.

## What's Changed

## What's new in v1.1.0

### New inputs & outputs
- **`guard-scan` input:** opt-in pre-flight that runs `zenzic guard scan` before the main quality gate.
- **`cap-exceeded` output:** exposes suppression-cap failures as a structured output for downstream workflow conditions.
- Sovereign Job Summary output for every critical non-zero exit code (exits 2 and 3).

### Runtime governance
- Wrapper now executes score governance checks (stamp + freshness) after `check all`.
- ADR-037 alignment: `release_name` in `.zenzic.toml` enforced as semantic version.
- ADR-089 alignment: all GitHub Actions dependencies pinned to immutable SHA-40.

### Security
- Exits 2 and 3 are explicitly documented as non-suppressible at the action boundary.
- Forwarding contract for security-related runtime flags enforced end-to-end.
- Inherited additive `brand_obsolescence` merge semantics from core.

### Core pin
- Pinned to **zenzic core v0.9.0**.

---

**Full changelog:** [CHANGELOG.md](https://github.com/PythonWoods/zenzic-action/blob/main/CHANGELOG.md)
