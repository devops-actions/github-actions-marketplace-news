---
title: UniDeploy AI DevOps Agent
date: 2026-06-28 22:10:20 +00:00
tags:
  - suryansh639
  - GitHub Actions
draft: false
repo: https://github.com/suryansh639/unideploy-action
marketplace: https://github.com/marketplace/actions/unideploy-ai-devops-agent
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suryansh639/unideploy-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unideploy-ai-devops-agent) to find the latest changes.

## What's Changed

First public release of the UniDeploy GitHub Action.

Run an AI DevOps agent directly in your CI/CD pipeline:
- Auto-diagnose failed builds and post the root cause as a PR comment
- Run saved playbooks: security-audit, cost-report, lambda-health, ssl-expiry
- Audit AWS / Azure / GCP infrastructure in plain English
- Bring Your Own Model (AWS Bedrock, Anthropic, OpenAI, Gemini)

Quick start:
  - uses: suryansh639/unideploy-action@v1
    with:
      api-key: ${{ secrets.UNIDEPLOY_API_KEY }}
      prompt: "Find the CI failure root cause and suggest a fix."

Get a free API key at https://unideploy.com

