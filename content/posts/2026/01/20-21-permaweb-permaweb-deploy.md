---
title: Permaweb Deploy
date: 2026-01-20 21:42:00 +00:00
tags:
  - permaweb
  - GitHub Actions
draft: false
repo: https://github.com/permaweb/permaweb-deploy
marketplace: https://github.com/marketplace/actions/permaweb-deploy
version: v3.2.0
dependentsNumber: "72"
---


Version updated for **https://github.com/permaweb/permaweb-deploy** to version **v3.2.0**.
- This action is used across all versions by **72** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/permaweb-deploy) to find the latest changes.

## Action Summary

The `permaweb-deploy` GitHub Action automates the deployment of web applications to the Arweave permaweb. It simplifies tasks such as uploading files or build folders, creating Arweave manifests, and updating Arweave Name Service (ArNS) records with transaction IDs. Key capabilities include fast and reliable uploads via Turbo SDK, on-demand payment integration, support for mainnet and testnets, and automated continuous deployment workflows, making it an efficient solution for managing decentralized web deployments.

## Release notes

## What's New

- **Per-file deduplication for folder uploads**: Only changed files are re-uploaded on subsequent deployments
- Deployment output now shows cache hits, total files, and uploaded file counts
- Fix snapshot workflow to skip changeset release PRs
