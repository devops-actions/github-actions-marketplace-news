---
title: VisiHub Verify
date: 2026-03-03 13:34:23 +00:00
tags:
  - VisiGrid
  - GitHub Actions
draft: false
repo: https://github.com/VisiGrid/verify-action
marketplace: https://github.com/marketplace/actions/visihub-verify
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/VisiGrid/verify-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/visihub-verify) to find the latest changes.

## Action Summary

The **VisiHub Verify Action** automates the process of validating dataset integrity within a CI pipeline by publishing dataset snapshots to VisiHub. It performs integrity checks, computes structural differences, and provides cryptographically signed proofs to ensure data consistency and detect schema changes, helping to prevent errors from propagating through workflows. Key capabilities include content hashing, schema validation, diff analysis, and actionable results that can fail the pipeline if discrepancies are detected.

## Release notes

## VisiHub Verify v1.0.0

Publish dataset snapshots to VisiHub from your CI pipeline. Get integrity checks, structural diffs, and cryptographically signed proofs.

### Features

- **Integrity checks** — Row counts, column names, schema structure compared against previous revision
- **Structural diffs** — See exactly what changed (rows added/removed, columns added/removed/type-changed)
- **Signed proofs** — Ed25519 cryptographic proof for every verification, downloadable and independently verifiable
- **Control total assertions** — Assert expected sums, counts, or hashes on specific columns
- **Enforcement gates** — Block pipelines when required assertions fail
- **GitHub Actions summary** — Rich summary with diff details, assertion results, and proof links

### Quick start

```yaml
- uses: VisiGrid/verify-action@v1
  with:
    api_key: ${{ secrets.VISIHUB_API_KEY }}
    repo: acme/payments
    file_path: ./exports/ap_payments.csv
```

See the [README](https://github.com/VisiGrid/verify-action#readme) for full documentation and examples.
