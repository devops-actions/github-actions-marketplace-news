---
title: Mipiti Verify
date: 2026-03-25 13:43:30 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.10.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.10.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions using the Mipiti platform, ensuring that security controls remain up-to-date and effective. It streamlines CI/CD workflows by integrating assertion checks into pipelines, leveraging AI models for comprehensive validation and enabling automated reporting of verification status. Key capabilities include verifying all or specific models, detecting regressions, and supporting advanced integrations with Tier 2 AI providers such as OpenAI.

## Release notes

## Mipiti Verify v0.10.0

Docker-based GitHub Action for verifying security controls against Mipiti threat models in CI.

### Usage

```yaml
- uses: Mipiti/mipiti-verify@cc4315ef0cd56ea3c249e5a7d80da32425b0e532 # v0.10.0
  with:
    api-key: ${{ secrets.MIPITI_API_KEY }}
    all: true
    tier2-provider: openai
    tier2-model: gpt-4o-mini
    tier2-api-key: ${{ secrets.OPENAI_API_KEY }}
```

### Changes since v0.9.1

- **Docker-based GitHub Action** — faster and isolated (no pip install on every run)
- **Reverify by default** — all assertions re-checked on every run to catch regressions
- **Tier 2 skips are warnings** — no provider configured emits warnings, not errors
- **New inputs**: `all`, `reverify`, `dry-run`, `concurrency`
