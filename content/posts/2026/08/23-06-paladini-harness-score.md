---
title: Harness Score
date: 2026-08-23 06:01:52 +00:00
tags:
  - paladini
  - GitHub Actions
draft: false
repo: https://github.com/paladini/harness-score
marketplace: https://github.com/marketplace/actions/harness-score
version: v1.6.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Harness Score automates the assessment and improvement of AI coding harnesses across various tools, providing a maturity level, detailed breakdown of performance across six dimensions, and actionable recommendations for fixing issues. It ensures that AI agents are reliable by measuring their context files, rules, skills, hooks, sensors, and guardrails.
---


Version updated for **https://github.com/paladini/harness-score** to version **v1.6.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harness-score) to find the latest changes.

## Action Summary

Harness Score automates the assessment and improvement of AI coding harnesses across various tools, providing a maturity level, detailed breakdown of performance across six dimensions, and actionable recommendations for fixing issues. It ensures that AI agents are reliable by measuring their context files, rules, skills, hooks, sensors, and guardrails.

## What's Changed

## Fixed

- Detect Google Cloud Build configurations under cloudbuild/**/*.yml and cloudbuild/**/*.yaml for CI-01, CI-02, and CI-03.
- Preserve deterministic filesystem-based CI discovery and evidence reporting.
- Document the detection across the English, Portuguese, Spanish, Chinese, and Hindi guides.

## Contributors

Thanks to [@gabrielcaiana](https://github.com/gabrielcaiana) for reporting #53 and providing the reproducible Cloud Build pipeline.

This release resolves #53.
