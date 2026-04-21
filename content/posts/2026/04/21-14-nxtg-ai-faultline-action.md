---
title: Faultline AI Trust & Safety Scanner
date: 2026-04-21 14:27:10 +00:00
tags:
  - nxtg-ai
  - GitHub Actions
draft: false
repo: https://github.com/nxtg-ai/faultline-action
marketplace: https://github.com/marketplace/actions/faultline-ai-trust-safety-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nxtg-ai/faultline-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/faultline-ai-trust-safety-scanner) to find the latest changes.

## Action Summary

The **Faultline AI Trust & Safety Scanner** is a GitHub Action designed to verify the integrity and compliance of AI-generated content during the CI pipeline process. It detects issues such as hallucinations, manipulations, and policy violations (e.g., GDPR, EU AI Act) by analyzing specified files and generating detailed security alerts and inline PR annotations for identified issues. This action helps automate AI content validation, ensuring safer and more reliable AI outputs before deployment.

## What's Changed

## Faultline AI Trust & Safety Scanner v1.0.0

Forensic AI output verification for your CI pipeline.

### What it does
- Scans AI-generated content for hallucination, manipulation, and policy violations
- Outputs SARIF to GitHub Code Scanning (inline PR annotations + Security tab alerts)
- EU AI Act Article 5/Annex III/Article 50 compliance detection
- Free mock mode — no API key required

### Usage
\`\`\`yaml
- uses: nxtg-ai/faultline-action@v1
  with:
    input: 'docs/ai-output.md'
    fail-on: 'high'
  env:
    GEMINI_API_KEY: \${{ secrets.GEMINI_API_KEY }}
\`\`\`

See [README](https://github.com/nxtg-ai/faultline-action#readme) for full documentation.
