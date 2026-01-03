---
title: LLM Release Action
date: 2026-01-03 13:10:47 +00:00
tags:
  - nosovj
  - GitHub Actions
draft: false
repo: https://github.com/nosovj/llm-release-action
marketplace: https://github.com/marketplace/actions/llm-release-action
version: v1.4.0
dependentsNumber: "?"
---


Version updated for **https://github.com/nosovj/llm-release-action** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-release-action) to find the latest changes.

## Action Summary

The LLM Release Action is a GitHub Action designed to automate semantic versioning and changelog generation using Large Language Models (LLMs). It analyzes commit history to suggest appropriate version bumps, detects breaking changes, and consolidates changes for clarity. Additionally, it generates audience-specific, multi-language changelogs tailored for developers, customers, executives, and other stakeholders, streamlining release management and communication.

## Release notes

# v1.4.0

## Features

### Context Files System

Load project documentation files (CONTEXT.md, API.md, etc.) to help distinguish between public and internal APIs during changelog generation. Use the new `context_files` input to specify which documentation files to include.

**Key capabilities:**
- Automatic map/reduce summarization for large documentation files
- 56 default exclusions for common directories (node_modules, .git, etc.)
- Staleness detection to identify undocumented areas of your codebase
- Helps improve accuracy of public API change detection

[b476a0e](https://github.com/nosovj/llm-release-action/commit/b476a0e5)

### Structured Diff Analysis

Parse unified diffs into structured change representations using the new `analyze_diffs` input. This feature improves version bump accuracy by providing better context about the nature and scope of code changes.

**Benefits:**
- More accurate semantic version bump recommendations
- Better understanding of change impact across your codebase
- Structured data format for programmatic analysis

[b476a0e](https://github.com/nosovj/llm-release-action/commit/b476a0e5)
