---
title: SunsetPR AI Model Lifecycle Check
date: 2026-07-21 14:56:38 +00:00
tags:
  - synergia-yoshi
  - GitHub Actions
draft: false
repo: https://github.com/synergia-yoshi/sunsetpr-action
marketplace: https://github.com/marketplace/actions/sunsetpr-ai-model-lifecycle-check
version: v0.2.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The SunsetPR AI Model Lifecycle Check action automatically detects deprecated OpenAI, Anthropic, and Google Gemini model IDs and API surfaces in CI before their shutdown date. It reports the exact file and line, shutdown date, official replacement or migration path, confidence, and provider-owned documentation. The action is user-friendly and provides a structured table to the GitHub Actions Job Summary with a machine-readable report written to `.sunsetpr/report.json`.
---


Version updated for **https://github.com/synergia-yoshi/sunsetpr-action** to version **v0.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sunsetpr-ai-model-lifecycle-check) to find the latest changes.

## Action Summary

The SunsetPR AI Model Lifecycle Check action automatically detects deprecated OpenAI, Anthropic, and Google Gemini model IDs and API surfaces in CI before their shutdown date. It reports the exact file and line, shutdown date, official replacement or migration path, confidence, and provider-owned documentation. The action is user-friendly and provides a structured table to the GitHub Actions Job Summary with a machine-readable report written to `.sunsetpr/report.json`.

## What's Changed

## What changed

- Detects OpenAI Assistants API call sites and reports the official 2026-08-26 shutdown with the Responses API + Conversations API migration path.
- Detects OpenAI Videos API call sites and preserves the official 2026-09-24 shutdown without inventing a replacement.
- Resolves conservative single-use TypeScript model constants and legacy Gemini Python positional calls.
- Adds API findings to JSON, annotations, Job Summary, outputs, lifecycle pages, and the official-source monitor.

## Reproducible evidence

- Model-ID benchmark: 230/230 labeled positives detected; 0/230 labeled negatives flagged.
- Fixed-commit API sample: 56/56 labeled Assistants API call sites detected across 8 files in 4 licensed public repositories. This is a curated positive engineering sample, not a prevalence, recall, or false-positive estimate.
- Hosted Ubuntu packaging and self-run passed in GitHub Actions. CodeQL passed.

## Safety boundary

API redesigns remain report-only. The Action does not rewrite Assistants into Responses/Conversations and does not propose a Videos successor. Dynamic values are never classified as unaffected. The free Action remains read-only and sends no repository code to SunsetPR or an external AI model.

## Immutable install

```yaml
- uses: synergia-yoshi/sunsetpr-action@074b4e2aad0678075acad14d5e043e0ca788e77b # v0.2.0
```

Source integration is available for human review in draft PR #3; the immutable tag already points to the CI-verified Linux runtime.
