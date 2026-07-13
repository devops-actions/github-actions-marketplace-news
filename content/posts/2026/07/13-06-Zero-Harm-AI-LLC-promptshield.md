---
title: PromptShield AI Security
date: 2026-07-13 06:13:47 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## What's Changed

## PromptShield AI Security v1.0.6

This release adds optional AI-mode support for `zero-harm-ai-detectors` while preserving the current default heuristic behavior.

### What’s new

- added `ai-mode` input to the GitHub Action
- added `--ai-mode` flag to the CLI
- PromptShield now enables AI mode by constructing `AIConfig()` for `zero-harm-ai-detectors` when requested
- default behavior remains unchanged: if `ai-mode` is not enabled, PromptShield continues to use heuristic mode
- improved compatibility so existing detector integrations and tests continue to work in default mode

### Usage

GitHub Action:

```yaml
- uses: Zero-Harm-AI-LLC/promptshield@v1
  with:
    ai-mode: true
