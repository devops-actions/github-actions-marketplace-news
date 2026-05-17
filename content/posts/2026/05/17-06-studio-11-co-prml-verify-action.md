---
title: PRML Verify
date: 2026-05-17 06:26:55 +00:00
tags:
  - studio-11-co
  - GitHub Actions
draft: false
repo: https://github.com/studio-11-co/prml-verify-action
marketplace: https://github.com/marketplace/actions/prml-verify
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/studio-11-co/prml-verify-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prml-verify) to find the latest changes.

## Action Summary

The PRML Verify GitHub Action automates the verification of Pre-Registered ML Manifest (PRML) commitments during CI workflows. It ensures the integrity and reproducibility of machine learning evaluation claims by detecting tampering, regression below predefined thresholds, or missing locked claims, and blocks merges in such cases. Additionally, it provides functionalities like validating PRML manifests, locking claims, and optionally anchoring them to a public registry for transparency and accountability.

## What's Changed

## New: `mode: schema-only`

Adds a fourth mode targeting repos that ship a single canonical PRML manifest at a known path and don't want the `.falsify/` tree workflow:

```yaml
- uses: actions/checkout@v6
- uses: studio-11-co/prml-verify-action@v1
  with:
    mode: schema-only
    manifest-path: claims/cv-screening.prml.yaml
    schema-version: v0.1   # or v0.2-rfc
```

Validates against the live JSON Schemas at https://spec.falsify.dev/schema/ — the same ones merged into the SchemaStore catalog. Exit codes: 0 PASS / 10 FAIL / 2 IO.

## New inputs

- `manifest-path` — required when `mode=schema-only`
- `schema-version` — `v0.1` (default, stable) or `v0.2-rfc` (open through 2026-05-22)

## Compatibility

Existing `guard` / `verdict` / `lock` modes, their inputs, outputs, and exit-code semantics are unchanged. v1 moving tag updated to point here.

## Pin

- `@v1` — moving tag, now v1.1.0
- `@v1.1.0` — exact pin
