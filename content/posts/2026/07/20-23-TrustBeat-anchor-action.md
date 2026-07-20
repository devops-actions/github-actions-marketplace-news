---
title: TrustBeat Anchor — qualified EU timestamps
date: 2026-07-20 23:07:29 +00:00
tags:
  - TrustBeat
  - GitHub Actions
draft: false
repo: https://github.com/TrustBeat/anchor-action
marketplace: https://github.com/marketplace/actions/trustbeat-anchor-qualified-eu-timestamps
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action anchors release artifacts with an eIDAS-qualified timestamp, providing court-grade evidence of artifact existence and integrity. It supports batch processing, secure file hashing, and independent verification through Merkle inclusion proofs and RFC 3161 tokens. The action is designed for use in CI/CD pipelines to ensure regulatory compliance and legal evidence generation without relying on a self-run Timestamping Authority (TSA).
---


Version updated for **https://github.com/TrustBeat/anchor-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustbeat-anchor-qualified-eu-timestamps) to find the latest changes.

## Action Summary

This GitHub Action anchors release artifacts with an eIDAS-qualified timestamp, providing court-grade evidence of artifact existence and integrity. It supports batch processing, secure file hashing, and independent verification through Merkle inclusion proofs and RFC 3161 tokens. The action is designed for use in CI/CD pipelines to ensure regulatory compliance and legal evidence generation without relying on a self-run Timestamping Authority (TSA).

## What's Changed

**Legal proof of *when*, in one YAML block.** Anchor your CI artifacts with an eIDAS-**qualified** timestamp — the only kind *presumed valid in court* across all 27 EU member states (eIDAS Art. 41). Audit-grade evidence for NIS2 / DORA, with no QTSP contract.

```yaml
- name: Anchor release artifacts
  uses: TrustBeat/anchor-action@v1
  with:
    api-key: ${{ secrets.TRUSTBEAT_API_KEY }}
    files: |
      dist/*.tar.gz
```

Free tier — 100 anchors/month, no card: **[trustbeat.eu/register](https://trustbeat.eu/register)**.

### What it does
- ⚖️ **Court-grade evidence** — qualified timestamps from EU Trusted List providers, not a self-run TSA
- 🛡️ **NIS2 / DORA audit evidence** — prove artifacts, SBOMs and reports existed unmodified at a point in time
- 🔒 **Nothing leaves your runner** — SHA-256 computed locally; only the 64-hex digest is transmitted
- 🔍 **Independently verifiable** — Merkle inclusion proof + RFC 3161 token, verifiable offline without trusting TrustBeat

> **Not a signing tool.** Sigstore/Cosign prove *who* built an artifact; TrustBeat proves *when* it existed, with EU legal standing. The two compose.

### Inputs
`api-key` (required), `files` (required), plus optional `description`, `client-ref`, `wait`, `api-url`. See the [README](https://github.com/TrustBeat/anchor-action#inputs).

### Outputs
`results` (JSON array of `{file, hash, id, verify_url, badge_url}`) and `ids`.

Pure bash + curl composite action. MIT licensed.

