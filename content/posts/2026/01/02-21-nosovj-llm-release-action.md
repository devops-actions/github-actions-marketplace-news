---
title: LLM Release Action
date: 2026-01-02 21:17:22 +00:00
tags:
  - nosovj
  - GitHub Actions
draft: false
repo: https://github.com/nosovj/llm-release-action
marketplace: https://github.com/marketplace/actions/llm-release-action
version: v1.3.1
dependentsNumber: "?"
---


Version updated for **https://github.com/nosovj/llm-release-action** to version **v1.3.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-release-action) to find the latest changes.

## Action Summary

The **LLM Release Action** is a GitHub Action that analyzes commit history to recommend semantic version bumps and generate audience-specific changelogs, solving the challenge of manually determining version updates and creating tailored release notes. It automates tasks like detecting breaking changes, categorizing updates, and producing changelogs in multiple languages, tones, and formats for diverse stakeholders, ensuring clear and relevant communication. Additionally, it handles large input data efficiently, supports multi-repo consolidation, and provides insights on model usage for cost monitoring.

## Release notes

# v1.3.1

## Fixes

- **Changelog generation reliability improvements**
  
  Resolved an issue where the changelog generator would hallucinate content when Phase 1 categorization didn't align with Phase 2 audience preset sections. The bug occurred when changes were categorized as 'docs' or 'other' but the developer preset lacked these sections, causing all changes to be filtered out. The fix adds missing 'docs' and 'other' sections to the developer preset, implements a guard to skip LLM calls when no changes remain after filtering, and clarifies the distinction between PUBLIC and internal changes in breaking change detection. Includes regression tests to prevent empty changes scenarios. ([current](https://github.com/nosovj/llm-release-action/commit/current))
