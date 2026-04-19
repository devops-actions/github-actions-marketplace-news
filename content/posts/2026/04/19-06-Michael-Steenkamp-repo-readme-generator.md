---
title: AutoReadme AI
date: 2026-04-19 06:44:56 +00:00
tags:
  - Michael-Steenkamp
  - GitHub Actions
draft: false
repo: https://github.com/Michael-Steenkamp/repo-readme-generator
marketplace: https://github.com/marketplace/actions/autoreadme-ai
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Michael-Steenkamp/repo-readme-generator** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/autoreadme-ai) to find the latest changes.

## Action Summary

AutoReadme AI is a GitHub Action that automates the generation and maintenance of project README files by leveraging Large Language Models (LLMs) to analyze codebase changes and provide intelligent documentation updates. It eliminates the need for manual documentation updates by dynamically extracting code diffs, maintaining context through rolling-state memory, and automatically creating pull requests with updated READMEs. This action streamlines development workflows by saving time, ensuring documentation remains accurate, and reducing developer friction.

## What's Changed

Welcome to the first official major release of AutoReadme AI! This release stabilizes the core engine, establishes the zero-dependency architecture, and introduces robust handling for initializing brand-new projects. 

### ✨ Core Features
* **Zero-Dependency Engine:** Lightning-fast execution relying strictly on standard Python libraries.
* **Tiered LLM Routing:** Smart payload distribution between fast models (Gemini) and heavy models (OpenAI/Anthropic) based on character limits.
* **Rolling-State Memory:** Stateless architecture utilizing hidden HTML tags within the `README.md` to maintain context across commits.
* **Smart Git Diffing:** Automatic fallback to `--stat` summaries for massive architectural changes to prevent token limit breaches.

### 🐛 Bug Fixes & Improvements
* **Empty Repository Support:** Resolved an `IndexError` that caused the pipeline to crash on repositories without an existing `README.md`. The action now gracefully detects missing context and initializes a fresh AI state block from scratch.

### 🛠️ Usage
To use this version, ensure your workflow file targets the `v1` major tag so you automatically receive future non-breaking bug fixes:

uses: Michael-Steenkamp/repo-readme-generator@v1
with:
  gemini-api-key: ${{ secrets.GEMINI_API_KEY }}
