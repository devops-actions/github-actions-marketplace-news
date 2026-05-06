---
title: Jankurai
date: 2026-05-06 15:05:59 +00:00
tags:
  - jeppsontaylor
  - GitHub Actions
draft: false
repo: https://github.com/jeppsontaylor/Jankurai
marketplace: https://github.com/marketplace/actions/jankurai
version: v0.8.10
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jeppsontaylor/Jankurai** to version **v0.8.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jankurai) to find the latest changes.

## Action Summary

Jankurai is a repository management tool designed to audit and enforce coding standards for AI-assisted workflows, ensuring auditable and reproducible merge decisions. It identifies and addresses issues like CI/tooling failures, security risks, secret sprawl, and generated code drift by generating human- and agent-readable reports, proof artifacts, and adoption guidance. Its key capabilities include repository-wide analysis, configurable adoption levels, and integration with CI pipelines to maintain code quality and prevent regressions.

## What's Changed


### Added

- Added default audit inventory exclusion for `tips/`, plus user-configurable `[scan] excluded_paths` entries in `agent/audit-policy.toml`.
- Added bounded score history commands: `jankurai history latest/export/compact/restore`, plus bounded audit retention and optional mirror sink support.
- Added May 6 public-repository paper evidence, score tables, and a README score table for the `v0.8.8` Marketplace action release.
- Added accepted-baseline ratchet scaffolding and strict scoring-integrity smoke tests for fail-closed audit decisions.

### Changed

- Routed `jankurai score trend` through the shared score-history loader and added stable score-history entry/export schemas.
- Bumped the auditor/action package release to `0.8.10`; standard compatibility remains `0.8.0` and report schema remains `1.5.0`.
- Hardened CI scoring order, required proof/security evidence, SHA-pinned Actions usage, SARIF upload, and badge source routing for release readiness.
- Fixed the isolated empty-repository ratchet regression so `decision.ratchet.score_delta` is always emitted, including `--no-score-history` runs.
- Prepared the `v0.8.10` GitHub Marketplace action release for the hardened scoring-integrity lane.
- Scoped crates.io publication out of this Marketplace release until the proof crates are published first.


Release evidence:
- Green `jankurai` workflow on main: https://github.com/jeppsontaylor/Jankurai/actions/runs/25419934072
- Marketplace packaging branch: `marketplace/v0.8.10`
- Tag points at the Marketplace packaging commit, which removes only `.github/workflows/jankurai.yml`.

