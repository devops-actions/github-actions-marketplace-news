---
title: TrustSignal Verify Artifact
date: 2026-03-13 13:32:57 +00:00
tags:
  - TrustSignal-dev
  - GitHub Actions
draft: false
repo: https://github.com/TrustSignal-dev/TrustSignal-Verify-Artifact
marketplace: https://github.com/marketplace/actions/trustsignal-verify-artifact
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/TrustSignal-dev/TrustSignal-Verify-Artifact** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustsignal-verify-artifact) to find the latest changes.

## Action Summary

The `TrustSignal Verify Artifact` GitHub Action enables teams to verify the integrity of build artifacts within CI/CD workflows by hashing artifacts or validating precomputed SHA-256 digests. It generates signed verification receipts and metadata that can be used for tracking artifact provenance, ensuring integrity, and enabling downstream auditability. This action automates the process of artifact verification and receipt generation, simplifying secure and transparent artifact management in development pipelines.

## Release notes

Verify build artifacts and issue signed TrustSignal verification receipts.

Initial public release of the TrustSignal artifact verification GitHub Action.

This action verifies build artifacts using the TrustSignal API and issues a signed verification receipt.

Features:
• SHA-256 artifact verification
• Signed verification receipts
• GitHub workflow metadata capture
• Later integrity verification support

Inputs:
- api_base_url
- api_key
- artifact_path or artifact_hash
- source
- fail_on_mismatch

Outputs:
- verification_id
- status
- receipt_id
- receipt_signature
