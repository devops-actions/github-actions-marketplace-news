---
title: Assayward Supply-Chain Verify
date: 2026-06-24 14:41:47 +00:00
tags:
  - sns45
  - GitHub Actions
draft: false
repo: https://github.com/sns45/assayward-action
marketplace: https://github.com/marketplace/actions/assayward-supply-chain-verify
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sns45/assayward-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/assayward-supply-chain-verify) to find the latest changes.

## What's Changed

Composite GitHub Action that gates CI with `assayward verify` — evaluate a
container image's supply-chain evidence (Sigstore signature, SLSA provenance,
CycloneDX SBOM, OpenVEX) and SPIFFE workload identity against a trust policy.
The step exits non-zero on a policy `deny`, failing the job.
