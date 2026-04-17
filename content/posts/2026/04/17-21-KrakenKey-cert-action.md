---
title: KrakenKey TLS Certificate
date: 2026-04-17 21:57:30 +00:00
tags:
  - KrakenKey
  - GitHub Actions
draft: false
repo: https://github.com/KrakenKey/cert-action
marketplace: https://github.com/marketplace/actions/krakenkey-tls-certificate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KrakenKey/cert-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/krakenkey-tls-certificate) to find the latest changes.

## Action Summary

The KrakenKey Cert Action automates the issuance, renewal, and downloading of TLS certificates directly within GitHub Actions workflows, leveraging the `krakenkey-cli` binary. It addresses the growing need for automated certificate management in CI/CD pipelines due to shrinking certificate lifetimes under industry standards. Key capabilities include generating certificates, managing expirations, and ensuring secure integration with the KrakenKey API.

## What's Changed

## KrakenKey TLS Certificate Action v1.0.0

Issue, renew, or download TLS certificates from KrakenKey in your CI/CD pipeline.

### Usage

```yaml
- uses: krakenkey/cert-action@v1
  with:
    api-key: ${{ secrets.KRAKENKEY_API_KEY }}
    domain: 'example.com'
```

### Features

- Issue new TLS certificates with automatic key + CSR generation
- Renew existing certificates
- Download previously issued certificates
- Supports RSA-2048/4096 and ECDSA-P256/P384 key types
- Configurable polling and timeout for async issuance
- SHA-256 checksum verification of CLI binary
- Certificate metadata exposed as action outputs

See [README.md](https://github.com/KrakenKey/cert-action#readme) for full documentation.

## What's Changed
* fix: escape secrets expression in action.yml description by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/1
* chore: pin GitHub Actions to commit SHAs by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/2
* Chore/pin action versions by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/3
* fix: save CLI archive with original filename for checksum verification by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/4
* Bugfix/integration test by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/5
* Bugfix/integration test by @krakenhavoc in https://github.com/KrakenKey/cert-action/pull/6

## New Contributors
* @krakenhavoc made their first contribution in https://github.com/KrakenKey/cert-action/pull/1

**Full Changelog**: https://github.com/KrakenKey/cert-action/commits/v1.0.0
