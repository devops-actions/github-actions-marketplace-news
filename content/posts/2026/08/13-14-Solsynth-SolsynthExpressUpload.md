---
title: Solsynth Express Upload
date: 2026-08-13 14:08:53 +00:00
tags:
  - Solsynth
  - GitHub Actions
draft: false
repo: https://github.com/Solsynth/SolsynthExpressUpload
marketplace: https://github.com/marketplace/actions/solsynth-express-upload
version: v2
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action, `SolsynthExpressUpload`, automates the process of uploading build artifacts to a specific version in DistributionCenter. It prepares an upload URL with the given release version, uploads the artifact to S3, computes its SHA-256 digest, and attaches it as an immutable artifact to the release. If the version does not exist, it creates a stable draft automatically. The action requires various inputs such as API base URL, product ID, API key, version, file path, platform, architecture, MIME type, and channel.
---


Version updated for **https://github.com/Solsynth/SolsynthExpressUpload** to version **v2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solsynth-express-upload) to find the latest changes.

## Action Summary

This GitHub Action, `SolsynthExpressUpload`, automates the process of uploading build artifacts to a specific version in DistributionCenter. It prepares an upload URL with the given release version, uploads the artifact to S3, computes its SHA-256 digest, and attaches it as an immutable artifact to the release. If the version does not exist, it creates a stable draft automatically. The action requires various inputs such as API base URL, product ID, API key, version, file path, platform, architecture, MIME type, and channel.

## What's Changed

**Full Changelog**: https://github.com/Solsynth/SolsynthExpressUpload/compare/v1.0.1...v2
