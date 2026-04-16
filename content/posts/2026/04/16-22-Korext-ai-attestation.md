---
title: AI Attestation
date: 2026-04-16 22:13:07 +00:00
tags:
  - Korext
  - GitHub Actions
draft: false
repo: https://github.com/Korext/ai-attestation
marketplace: https://github.com/marketplace/actions/ai-attestation
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Korext/ai-attestation** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-attestation) to find the latest changes.

## Action Summary

AI Attestation is a GitHub Action and CLI tool designed to track and document the use of AI-generated code within a repository. It automates the detection of AI coding tools, the amount of AI-generated code, and whether it has undergone governance scanning, producing a standardized `.ai-attestation.yaml` file for transparency and compliance purposes. The tool identifies AI contributions using various detection methods and supports a wide range of popular AI development tools.

## What's Changed

Initial release. Track and attest AI generated code in your repository.

Features:
- Detects 11 AI coding tools from git history
- Creates .ai-attestation.yaml with tool breakdown
- Git hook for automatic tracking
- Dynamic badges for README
- Report pages at oss.korext.com
- GitHub Action for CI policy enforcement
- Works without any governance engine
- Spec released under CC0 (public domain)
