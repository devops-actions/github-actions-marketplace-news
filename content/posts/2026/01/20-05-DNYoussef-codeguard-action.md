---
title: GuardSpine CodeGuard
date: 2026-01-20 05:37:50 +00:00
tags:
  - DNYoussef
  - GitHub Actions
draft: false
repo: https://github.com/DNYoussef/codeguard-action
marketplace: https://github.com/marketplace/actions/guardspine-codeguard
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/DNYoussef/codeguard-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardspine-codeguard) to find the latest changes.

## Action Summary

GuardSpine CodeGuard is a GitHub Action designed to automate code governance by analyzing pull request changes, assigning risk tiers (L0-L4), and generating cryptographically verifiable evidence bundles. It ensures audit readiness by providing detailed proof of what was reviewed, risk assessments, and approvals, addressing gaps in traditional GitHub approval tracking. This action supports audit frameworks like SOC 2, HIPAA, and PCI-DSS, offering independent verification of evidence and enhancing the traceability and security of code reviews.

## Release notes

## GuardSpine CodeGuard v1.0.0

AI-aware code governance with cryptographically verifiable evidence bundles.

### Features

- **Risk Classification (L0-L4)**: Automatic risk tier assignment based on file patterns and content analysis
- - **Evidence Bundles**: Hash-chained JSON bundles for audit trails
- - **Diff Postcard**: PR comments showing risk tier, drivers, and findings
- - **Evidence Mappings**: Pre-built rule sets for SOC 2, HIPAA, and PCI-DSS audit support
- - **SARIF Integration**: Export findings to GitHub Security tab
### AI Provider Support

- **OpenRouter** (100+ models): Claude, GPT-4, Gemini, Llama
- - **Anthropic Direct**: Claude API
- - **OpenAI Direct**: GPT API
- - **Ollama**: Local/on-prem AI for air-gapped environments
### Quick Start

```yaml
- uses: DNYoussef/codeguard-action@v1
-   with:
-     github_token: ${{ secrets.GITHUB_TOKEN }}
- ```
See [README](https://github.com/DNYoussef/codeguard-action#readme) for full documentation.
