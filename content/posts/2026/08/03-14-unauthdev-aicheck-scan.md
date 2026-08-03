---
title: aicheck-scan
date: 2026-08-03 14:56:22 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v1.1.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks if a PR ships an AI service with no authentication and fails the build if so. It uses a live probe to grade the AI stack and reports the results in SARIF format, providing fix cards for each exposed service. The action supports various installation methods including pip CLI, GitHub Actions, Docker, and a site scanner.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v1.1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

This GitHub Action checks if a PR ships an AI service with no authentication and fails the build if so. It uses a live probe to grade the AI stack and reports the results in SARIF format, providing fix cards for each exposed service. The action supports various installation methods including pip CLI, GitHub Actions, Docker, and a site scanner.

## What's Changed

Code QA fixes: dual-stack/IPv6 no longer silent grade-A; Chroma v1/v2 selected by success; filtered `--services` summaries no longer claim a clean estate.

Also: SARIF-with-findings exercised in selftest; trust/README version-check honesty; Gradio/Langflow fix cards in loop_qa crawl.

Install:
```yaml
uses: unauthdev/aicheck-scan@v1
```
or pin `@v1.1.4`.
