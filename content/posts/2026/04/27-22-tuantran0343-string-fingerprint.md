---
title: Hash String
date: 2026-04-27 22:01:29 +00:00
tags:
  - tuantran0343
  - GitHub Actions
draft: false
repo: https://github.com/tuantran0343/string-fingerprint
marketplace: https://github.com/marketplace/actions/hash-string
version: 1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/tuantran0343/string-fingerprint** to version **1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hash-string) to find the latest changes.

## Action Summary

The **Hash String** GitHub Action generates a deterministic, 64-character HMAC-SHA256 hash of a given string using a secret salt. It is designed to anonymize sensitive data, ensure data integrity, or create reproducible identifiers within CI/CD pipelines. This action is cryptographically secure, requires no external runtime dependencies, and ensures that identical inputs yield consistent outputs while maintaining security through a salted hashing mechanism.

## What's Changed

## Hash String Action — v1.0.2

Initial release of the `string-fingerprint` GitHub Action.

### What it does
Computes an HMAC-SHA256 fingerprint of any string using a secret salt, and exposes the hex-encoded result as a workflow output.

### Inputs
| Name | Required | Description |
|------|----------|-------------|
| `value` | ✅ | The string to hash |
| `salty` | ✅ | Salt used as the HMAC secret key |

### Outputs
| Name | Description |
|------|-------------|
| `hashed` | Hex-encoded HMAC-SHA256 result |

### Usage example
```yaml
- uses: tuantran0343/string-fingerprint@1.0.2
  id: fingerprint
  with:
    value: ${{ github.sha }}
    salty: ${{ secrets.HASH_SALT }}

- run: echo ${{ steps.fingerprint.outputs.hashed }}

**Full Changelog**: https://github.com/tuantran0343/string-fingerprint/commits/1.0.0

**Full Changelog**: https://github.com/tuantran0343/string-fingerprint/compare/1.0.1...1.0.2
