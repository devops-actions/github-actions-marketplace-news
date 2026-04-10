---
title: PromptShield AI Security
date: 2026-04-10 22:00:05 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## Action Summary

PromptShield AI Security is a GitHub Action that automates the detection of AI-specific security risks in pull requests by scanning code changes for vulnerabilities such as prompt injection, secrets exposure, PII leaks, and unsafe usage of large language models (LLMs). It provides actionable feedback through GitHub Actions annotations, generates detailed reports (JSON, Markdown, SARIF), and supports reviewer-style PR feedback workflows. This tool helps teams proactively identify and mitigate security risks associated with integrating AI and LLMs into their codebases.

## What's Changed

## What's Changed

This release updates PromptShield to use `zero-harm-ai-detectors` v0.2.9.

### Dependency Update
- Upgraded `zero-harm-ai-detectors` from `0.2.8` to `0.2.9`
- Updated both:
  - `requirements.txt`
  - `requirements-lock.txt`

### Packaging
- Refreshed the hash-locked dependency entry so the GitHub Action continues to install correctly with `--require-hashes`

### Why This Matters
This keeps PromptShield aligned with the latest detector-library improvements and ensures GitHub Action runs use the newest published detector behavior.

## Compatibility

Repositories using `Zero-Harm-AI-LLC/promptshield@v1` will receive this update once the `v1` tag points to this release.

