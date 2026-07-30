---
title: Cfx.re Escrow Upload
date: 2026-07-30 17:28:15 +00:00
tags:
  - rpr-development
  - GitHub Actions
draft: false
repo: https://github.com/rpr-development/cfx-escrow-action
marketplace: https://github.com/marketplace/actions/cfx-re-escrow-upload
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of uploading a FiveM resource to the Cfx.re Portal for escrow processing and attaching the escrowed zip to a GitHub Release. It uses Puppeteer and virtual WebAuthn for authentication, handles zipping based on `upload-config.json` or `fxmanifest.lua` rules, and optionally caches asset IDs using a PAT.
---


Version updated for **https://github.com/rpr-development/cfx-escrow-action** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cfx-re-escrow-upload) to find the latest changes.

## Action Summary

This GitHub Action automates the process of uploading a FiveM resource to the Cfx.re Portal for escrow processing and attaching the escrowed zip to a GitHub Release. It uses Puppeteer and virtual WebAuthn for authentication, handles zipping based on `upload-config.json` or `fxmanifest.lua` rules, and optionally caches asset IDs using a PAT.

## What's Changed

- fix: replace --clobber on release create with edit+upload fallback (8f2d41d)
- fix: run git log from GITHUB_WORKSPACE instead of action directory (095588b)
- feat: include git changelog and --clobber in GitHub release (317d006)
- feat: include version in escrowed zip filename (f5e0c94)
- security: wipe passkey credential from disk after use (191868c)
- fix: handle 409 conflicts and invalid escrow state on re-upload (803cfc4)
- fix: remove default changelog message from environment variable (64f51e7)
- fix: update actions/checkout to version 6 in release.yml (f98beb2)
- feat: implement changelog generation and enhance workflow_dispatch inputs in release.yml (3e17d1a)
- fix: extend timeout for asset processing to 3 hours in waitAndDownload function (b93ca2b)
