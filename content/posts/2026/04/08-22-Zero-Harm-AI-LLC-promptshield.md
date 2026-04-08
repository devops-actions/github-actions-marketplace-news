---
title: PromptShield AI Security
date: 2026-04-08 22:07:24 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## Action Summary

PromptShield AI Security is a GitHub Action that automatically scans pull requests for AI-specific security risks, such as prompt injection vulnerabilities, exposure of secrets or PII, unsafe use of large language models (LLMs), and improper handling of sensitive data. It automates the detection of potential issues in PR diffs, providing actionable feedback through annotations, JSON/Markdown reports, and reviewer-style comments to enhance code security and compliance. By integrating seamlessly into workflows, it helps teams proactively address AI-related risks during the development process.

## What's Changed

## What's Changed

This release updates PromptShield to use `zero-harm-ai-detectors` v0.2.8 which tighten up the detection of person and harmful data.

### Dependency Update
- Upgraded `zero-harm-ai-detectors` from `0.2.7` to `0.2.8`
- Updated both:
  - `requirements.txt`
  - `requirements-lock.txt`

### Packaging
- Refreshed the hash-locked dependency entry so the GitHub Action continues to install cleanly with `--require-hashes`

### Why This Matters
This release brings PromptShield onto the latest detector-library version for improved detector behavior and cleaner downstream findings in GitHub Action runs.

## Compatibility

Repositories using `Zero-Harm-AI-LLC/promptshield@v1` will receive this update once the `v1` tag points to this release.

