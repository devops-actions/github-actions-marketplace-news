---
title: ollama-action
date: 2025-12-22 05:30:35 +00:00
tags:
  - ai-action
  - GitHub Actions
draft: false
repo: https://github.com/ai-action/ollama-action
marketplace: https://github.com/marketplace/actions/ollama-action
version: v2.0.0
dependentsNumber: "22"
---


Version updated for **https://github.com/ai-action/ollama-action** to version **v2.0.0**.
- This action is used across all versions by **22** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ollama-action) to find the latest changes.

## Action Summary

The `ollama-action` GitHub Action allows users to run Ollama's large language models (LLMs) directly within GitHub Actions workflows. It automates tasks such as generating text-based responses to prompts by leveraging specific language models, making it useful for scenarios like automated documentation, question answering, or content generation. The action provides key capabilities such as customizable model selection, prompt input, and output retrieval for seamless integration into CI/CD pipelines.

## Release notes

## [2.0.0](https://github.com/ai-action/ollama-action/compare/v1.1.1...v2.0.0) (2025-12-22)

### ⚠ BREAKING CHANGES

* **action:** set action input `cache` default to true
* **action:** bump Node.js runtime from 20 to 24

### Performance Improvements

* **action:** default cache to true ([34a4030](https://github.com/ai-action/ollama-action/commit/34a403083dd54b66aa378dbeb64cdef6cb83765f))

### Build System

* **deps:** bump actions/cache from 4 to 5 ([#17](https://github.com/ai-action/ollama-action/issues/17)) ([a825720](https://github.com/ai-action/ollama-action/commit/a82572041f9d8462ce5e70565dbc2c1d7324d59f))
* **deps:** bump ai-action/setup-ollama from 1 to 2 ([#19](https://github.com/ai-action/ollama-action/issues/19)) ([c730764](https://github.com/ai-action/ollama-action/commit/c7307649ae9d15ee2562cbdcc5ad9cdb4ce7b5c7))
