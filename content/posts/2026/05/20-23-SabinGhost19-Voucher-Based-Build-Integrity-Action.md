---
title: VBBI Voucher Attestor
date: 2026-05-20 23:14:56 +00:00
tags:
  - SabinGhost19
  - GitHub Actions
draft: false
repo: https://github.com/SabinGhost19/Voucher-Based-Build-Integrity-Action
marketplace: https://github.com/marketplace/actions/vbbi-voucher-attestor
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SabinGhost19/Voucher-Based-Build-Integrity-Action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vbbi-voucher-attestor) to find the latest changes.

## Action Summary

The **VBBI Voucher Attestor** GitHub Action automates the creation of a voucher for build integrity by processing an ordered list of build steps, applying HMAC chaining, computing a Merkle root, and attaching the result as a Cosign attestation. It streamlines secure build verification by ensuring traceability and compliance with established integrity levels, such as SLSA. The action supports both local and HashiCorp Vault-based HMAC key management for enhanced security.

## What's Changed

## 1.0.0 (2026-05-20)

### Features

* **supply-chain:** RFC 6962 Merkle + Audit-mode + webhook + CEL + VEX + KubeArmor + GUAC ([9672ae9](https://github.com/SabinGhost19/Voucher-Based-Build-Integrity-Action/commit/9672ae9f21b359875a22a2f9ccf43c3b9cc4e9f0))

