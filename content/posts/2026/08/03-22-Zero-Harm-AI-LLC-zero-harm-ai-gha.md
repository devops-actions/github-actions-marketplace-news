---
title: zero-harm-ai-gha
date: 2026-08-03 22:31:30 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/zero-harm-ai-gha
marketplace: https://github.com/marketplace/actions/zero-harm-ai-gha
version: v1.0.7
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `zero-harm-ai-gha` detects AI-specific security risks in pull requests, such as prompt injection risk, secrets exposure, and unsafe LLM tool usage. It provides automated security checks to help developers prevent misuse of large language models (LLMs) by scanning code diffs before merge and emitting annotations for review. The action supports various output formats, including GitHub Actions annotations, JSON, Markdown, and SARIF.
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/zero-harm-ai-gha** to version **v1.0.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zero-harm-ai-gha) to find the latest changes.

## Action Summary

The GitHub Action `zero-harm-ai-gha` detects AI-specific security risks in pull requests, such as prompt injection risk, secrets exposure, and unsafe LLM tool usage. It provides automated security checks to help developers prevent misuse of large language models (LLMs) by scanning code diffs before merge and emitting annotations for review. The action supports various output formats, including GitHub Actions annotations, JSON, Markdown, and SARIF.

## What's Changed

## zero-harm-ai-gha v1.0.7

This release updates the GitHub Action branding and repository references to the new `zero-harm-ai-gha` name, and adds optional AI-mode support for `zero-harm-ai-detectors` while preserving the default heuristic behavior.

### What’s new

- renamed the GitHub Action display name to `zero-harm-ai-gha`
- updated README, workflow examples, sample repo references, and Marketplace-facing copy to match the new name
- updated sample workflow naming and findings artifact/output filenames
- added `ai-mode` input to the GitHub Action
- added `--ai-mode` flag to the CLI
- PromptShield’s detector integration now enables AI mode by constructing `AIConfig()` for `zero-harm-ai-detectors` when requested
- default behavior remains unchanged: if `ai-mode` is not enabled, detection continues to use heuristic mode

### Usage

GitHub Action:

```yaml
- uses: Zero-Harm-AI-LLC/zero-harm-ai-gha@v1
  with:
    ai-mode: true
