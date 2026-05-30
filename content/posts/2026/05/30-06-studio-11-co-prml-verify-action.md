---
title: PRML Verify
date: 2026-05-30 06:31:48 +00:00
tags:
  - studio-11-co
  - GitHub Actions
draft: false
repo: https://github.com/studio-11-co/prml-verify-action
marketplace: https://github.com/marketplace/actions/prml-verify
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/studio-11-co/prml-verify-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prml-verify) to find the latest changes.

## Action Summary

The **PRML Verify GitHub Action** automates the verification of Pre-Registered Machine Learning (PRML) manifests in CI pipelines. It ensures the integrity and reproducibility of machine learning evaluation claims by validating tamper-evident SHA-256 hashes, blocking merges if claims are altered, regressed, or not properly locked. Additionally, it supports optional public anchoring of manifests for enhanced transparency and accountability.

## What's Changed

## Added
- **`manifest` mode** — verifies a PRML manifest's SHA-256 (hash/tamper) via the `falsify` reference CLI, and evaluates the predicate when `observed` is set. The genuine PRML-manifest verifier (exit 0 PASS · 3 TAMPER · 10 FAIL). Pin with `expected-hash` or commit the `.prml.sha256` sidecar. New `observed` input.

## Changed
- Default `falsify-version` bumped `0.1.4` → `0.3.0`. As of falsify 0.3.0 the `falsify` command is the PRML manifest CLI; the workflow engine is `falsify-engine` (same install).
- `guard` / `verdict` / `lock` modes now invoke `falsify-engine` — behavior unchanged for existing consumers.

## Notes
- Non-breaking for `@v1` consumers (`@v1` is untouched). `@v2` is opt-in. To stay on the old layout, pin `falsify-version: 0.1.4`.
