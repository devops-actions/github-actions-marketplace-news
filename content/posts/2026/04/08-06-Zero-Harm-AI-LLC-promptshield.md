---
title: PromptShield AI Security
date: 2026-04-08 06:21:09 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## Action Summary

**PromptShield AI Security** is a GitHub Action designed to detect AI-related security risks in pull requests by scanning code changes for issues like prompt injection vulnerabilities, secrets exposure, sensitive data leaks, and unsafe usage of language model (LLM) tools. It automates the process of identifying and reporting these risks, offering outputs such as GitHub Actions annotations, JSON, Markdown, and SARIF formats, as well as reviewer-style feedback for streamlined code reviews. By integrating with `zero-harm-ai-detectors`, it enhances security and compliance in workflows involving AI-driven systems.

## What's Changed

## What's Changed

This release improves PromptShield's detector-backed logging analysis and separates harmful-content findings from PII findings.

### Improvements
- Added `HARMFUL_IN_LOGGING_RISK` for harmful content detected in logged prompt or LLM-related content
- Kept `PII_IN_LOGGING_RISK` focused on PII-related detector output
- Kept `SECRET_IN_LOGGING_RISK` focused on secret and API-key detection
- Split handling of combined detector results so harmful content is no longer folded into PII logging findings

### Detector Integration
- PromptShield continues to call `zero-harm-ai-detectors` through its public `detect(..., targets=...)` API
- Uses:
  - `DetectTarget.SECRET` for secret and API key checks
  - `DetectTarget.PII | DetectTarget.HARMFUL` for non-secret detector-backed text checks
- Parses combined detector results into separate PromptShield finding categories

### Why This Matters
Previously, harmful-content signals could appear inside `PII_IN_LOGGING_RISK` source details. This release makes the findings clearer and more accurate by giving harmful logged content its own category.

### Validation
- Added and updated tests for:
  - harmful logging findings
  - target selection behavior
  - detector-backed logging findings for PII, secrets, and harmful content
- Verified with:
  - `pytest tests/test_detector_rules.py tests/test_scan_pr.py`

## Compatibility

Repositories using `Zero-Harm-AI-LLC/promptshield@v1` will receive this update once the `v1` tag points to this release.

