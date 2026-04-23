---
title: Arbiter SAST Triage by NemeaLabs
date: 2026-04-23 14:06:27 +00:00
tags:
  - NemeaLabs
  - GitHub Actions
draft: false
repo: https://github.com/NemeaLabs/arbiter
marketplace: https://github.com/marketplace/actions/arbiter-sast-triage-by-nemealabs
version: v1.3.6
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/NemeaLabs/arbiter** to version **v1.3.6**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/arbiter-sast-triage-by-nemealabs) to find the latest changes.

## Action Summary

Arbiter is a GitHub Action that automates AI-powered triage of security findings from static application security testing (SAST) tools. It processes SARIF output from any scanner, uses an AI model to classify issues (true positive, false positive, or needs review) with confidence and reasoning, and generates actionable reports as pull request comments. By streamlining vulnerability triage and optionally enforcing build gates for high-confidence issues, it enhances code scanning workflows and reduces manual effort.

## What's Changed

## What's new

New `TRIAGE_PROVIDER=openai` for any OpenAI-compatible endpoint — uses standard Bearer token auth instead of the Azure-specific `api-key` header.

### Use cases

| Endpoint | Config |
|----------|--------|
| GitHub Models | `AZURE_AI_ENDPOINT=https://models.inference.ai.azure.com` |
| Ollama (local) | `AZURE_AI_ENDPOINT=http://localhost:11434/v1` |
| Together AI | `AZURE_AI_ENDPOINT=https://api.together.xyz/v1` |

### GitHub Models example

```yaml
env:
  TRIAGE_PROVIDER:   openai
  AZURE_AI_ENDPOINT: https://models.inference.ai.azure.com
  AZURE_AI_API_KEY:  ${{ secrets.GITHUB_TOKEN }}   # PAT with models:read
  AZURE_AI_MODEL:    gpt-4o
```

The existing `azure` and `azure-openai` providers are unchanged.
