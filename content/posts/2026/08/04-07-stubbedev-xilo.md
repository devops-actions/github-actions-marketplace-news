---
title: xilo-nix-cache
date: 2026-08-04 07:10:31 +00:00
tags:
  - stubbedev
  - GitHub Actions
draft: false
repo: https://github.com/stubbedev/xilo
marketplace: https://github.com/marketplace/actions/xilo-nix-cache
version: v1.0.12
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The xilo action is a self-hosted Nix binary cache that uses pure-Go SQLite to store and serve binaries efficiently. It features:
  - Never stalls on concurrent pushes due to a single writer goroutine.
  - Multi-tenant support with personal accounts, organizations, and optional self-registration offers.
  - A cachix-style admin dashboard for managing caches, tokens, users, and accounts.
  - Instant token revocation and content-addressed chunked deduplication (FastCDC).
  - Support for storing chunks on local disk or any S3-compatible bucket.
  - Scalability through PostgreSQL as a backend storage system.
---


Version updated for **https://github.com/stubbedev/xilo** to version **v1.0.12**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xilo-nix-cache) to find the latest changes.

## Action Summary

The xilo action is a self-hosted Nix binary cache that uses pure-Go SQLite to store and serve binaries efficiently. It features:
- Never stalls on concurrent pushes due to a single writer goroutine.
- Multi-tenant support with personal accounts, organizations, and optional self-registration offers.
- A cachix-style admin dashboard for managing caches, tokens, users, and accounts.
- Instant token revocation and content-addressed chunked deduplication (FastCDC).
- Support for storing chunks on local disk or any S3-compatible bucket.
- Scalability through PostgreSQL as a backend storage system.

## What's Changed

**Full Changelog**: https://github.com/stubbedev/xilo/compare/v1...v1.0.12
