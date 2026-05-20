---
title: KrakenKey TLS Certificate
date: 2026-05-20 07:02:01 +00:00
tags:
  - KrakenKey
  - GitHub Actions
draft: false
repo: https://github.com/KrakenKey/cert-action
marketplace: https://github.com/marketplace/actions/krakenkey-tls-certificate
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KrakenKey/cert-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/krakenkey-tls-certificate) to find the latest changes.

## Action Summary

The KrakenKey Cert Action is a GitHub Action designed to automate the issuance, renewal, and downloading of TLS certificates directly within CI/CD workflows. It addresses the growing need for automated certificate management as certificate lifetimes decrease, ensuring seamless certificate handling without manual intervention. By integrating the `krakenkey-cli` tool, this action simplifies secure certificate management, enabling tasks like CSR generation, certificate issuance, and auto-renewal with minimal configuration.

## What's Changed

## What's Changed

- Add full certificate chain support: new `chain-path` and `fullchain-path` inputs write intermediate and full chain PEMs alongside the leaf certificate
- New action outputs: `chain-path` and `fullchain-path` expose absolute paths to the saved chain files
- Document chain download inputs/outputs and certificate chain section in README

**Full Changelog**: https://github.com/KrakenKey/cert-action/compare/v1.0.0...v1.1.0
