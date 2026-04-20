---
title: ECR Public Cleanup
date: 2026-04-20 06:27:18 +00:00
tags:
  - deployport
  - GitHub Actions
draft: false
repo: https://github.com/deployport/ecr-public-cleanup-action
marketplace: https://github.com/marketplace/actions/ecr-public-cleanup
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/deployport/ecr-public-cleanup-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecr-public-cleanup) to find the latest changes.

## Action Summary

The "ECR Public Cleanup" GitHub Action automates the safe deletion of untagged images in Amazon ECR Public repositories, addressing the lack of native lifecycle policies provided by AWS. It prevents accidental deletion of critical components, such as per-architecture manifests linked to multi-architecture tags, ensuring repository integrity. Key capabilities include identifying orphaned images, preserving dependencies, and offering a dry-run mode for safe testing.

## What's Changed

First stable v1 release `uses: deployport/ecr-public-cleanup-action@v1`

