---
title: Patch Docker Image
date: 2026-04-22 21:25:48 +00:00
tags:
  - qasimnauman
  - GitHub Actions
draft: false
repo: https://github.com/qasimnauman/patch-docker-image
marketplace: https://github.com/marketplace/actions/patch-docker-image
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qasimnauman/patch-docker-image** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patch-docker-image) to find the latest changes.

## Action Summary

The **patch-docker-image** GitHub Action automates vulnerability scanning, patching, and verification for Node.js and Python container images. It ensures that targeted fixable CVEs are fully remediated by scanning the base image, applying OS and package-level patches, re-scanning for vulnerabilities, and failing the process if issues remain. This action provides a reliable way to enforce vulnerability-free container builds, improving security outcomes in CI/CD pipelines.

## What's Changed

Improved documentation for public GitHub Action and CLI usage, clarified image and Dockerfile input resolution, and cleaned up generated report artifacts to keep the repository lean. No runtime patching logic changes.

Release Notes

- Expanded and simplified README guidance for setup, inputs, security, troubleshooting, artifacts, and exit codes.
- Clarified how image source selection works in both registry and Dockerfile flows.
- Removed large generated vulnerability report samples from tracked content.
- Removed a redundant local workflow template to reduce confusion.
- No breaking changes for existing public action consumers.

Marketplace Compliance Updates

- Added end-user policy documents for Marketplace readiness:
  - [EULA](https://github.com/qasimnauman/patch-docker-image/blob/main/EULA.md)
  - [Privacy Policy](https://github.com/qasimnauman/patch-docker-image/blob/main/PRIVACY.md)
  - [Support Policy](https://github.com/qasimnauman/patch-docker-image/blob/main/SUPPORT.md)
- Updated [README](https://github.com/qasimnauman/patch-docker-image/blob/main/README.md) with a Marketplace Compliance Documents section.
- No runtime patching logic changes; this update is documentation and compliance focused.
