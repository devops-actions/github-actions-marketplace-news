---
title: PromptShield AI Security
date: 2026-04-07 06:15:14 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## Action Summary

PromptShield AI Security is a GitHub Action designed to identify AI-specific security risks in pull requests by scanning code changes for vulnerabilities such as prompt injection, secrets exposure, PII leaks, and unsafe usage of large language models (LLMs). It automates the detection of these issues, provides actionable feedback through GitHub Actions annotations, and supports output formats like JSON, Markdown, and SARIF for integration into development workflows. This tool enhances code review processes by helping teams mitigate risks associated with integrating AI systems.

## What's Changed

## What's Changed

This release fixes PromptShield's integration with `zero-harm-ai-detectors` and improves detector-backed findings for prompt-related risks.

### Fixes
- Switched PromptShield to use the detector library's real public API: `detect(..., targets=...)`
- Fixed detector integration so `zero-harm-ai-detectors` is actually invoked in production runs
- Updated detector routing:
  - `DetectTarget.SECRET` for API key and secret checks
  - `DetectTarget.PII | DetectTarget.HARMFUL` for other detector-backed text checks

### Improvements
- Prompt logging analysis can now produce detector-backed findings when logged prompt-related content contains detected sensitive values
- Improved sample/test patterns to align with `zero-harm-ai-detectors` matching behavior
- Preserved existing heuristic findings while adding detector-backed enrichment where appropriate

### Validation
- Added and updated unit tests for:
  - detector API integration
  - target selection behavior
  - prompt logging detector-backed findings
- Verified with:
  - `pytest tests/test_detector_rules.py tests/test_scan_pr.py`

## Compatibility

Repositories using `Zero-Harm-AI-LLC/promptshield@v1` will receive this update once the `v1` tag points to this release.

