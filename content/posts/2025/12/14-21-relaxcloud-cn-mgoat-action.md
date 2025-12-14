---
title: MGoat LLM Red Team
date: 2025-12-14 21:05:14 +00:00
tags:
  - relaxcloud-cn
  - GitHub Actions
draft: false
repo: https://github.com/relaxcloud-cn/mgoat-action
marketplace: https://github.com/marketplace/actions/mgoat-llm-red-team
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/relaxcloud-cn/mgoat-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mgoat-llm-red-team) to find the latest changes.

## Release notes

## MGoat Action v1

Automatically test your LLM applications for security vulnerabilities in your CI/CD pipeline.

### Features
- Multi-turn adversarial testing using GOAT methodology
- Support for multiple LLM providers
- Configurable attack strategies
- CI/CD integration with pass/fail based on ASR threshold

### Quick Start
```yaml
- uses: relaxcloud-cn/mgoat-action@v1
  with:
    goals: "Test model safety"
    attacker-api-key: ${{ secrets.OPENAI_API_KEY }}
```
