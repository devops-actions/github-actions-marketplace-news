---
title: x402 Surface Check
date: 2026-05-16 21:26:21 +00:00
tags:
  - TateLyman
  - GitHub Actions
draft: false
repo: https://github.com/TateLyman/x402-surface-check-action
marketplace: https://github.com/marketplace/actions/x402-surface-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/TateLyman/x402-surface-check-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/x402-surface-check) to find the latest changes.

## Action Summary

The **x402 Surface Check Action** is a GitHub Action that automates the validation and analysis of payment-related HTTP `402 Payment Required` endpoints, manifests, OpenAPI specifications, and resource catalogs. It identifies issues such as missing payment headers, CORS preflight compatibility, declared-price mismatches, and metadata leakage, ensuring readiness for payment agent or wallet integration without sending sensitive data or performing paid calls. This action streamlines the process of verifying compliance and security for payment surfaces in systems you own or are authorized to review.

## What's Changed

Initial Marketplace release for the x402 Surface Check GitHub Action.

Runs x402-surface-check from GitHub Actions with no payment headers, wallet signatures, API keys, or paid calls. Supports x402 manifests, OpenAPI specs, resource catalogs, MPP headers, direct paid endpoint checks, and strict-cache mode for no-payment 402 challenge cache policy review.

Writes Markdown or JSON reports for launch review and CI evidence.

Use `TateLyman/x402-surface-check-action@v1` for the stable major-version reference.
