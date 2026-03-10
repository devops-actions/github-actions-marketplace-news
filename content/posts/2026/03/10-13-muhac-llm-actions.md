---
title: LLM in GitHub Actions
date: 2026-03-10 13:24:21 +00:00
tags:
  - muhac
  - GitHub Actions
draft: false
repo: https://github.com/muhac/llm-actions
marketplace: https://github.com/marketplace/actions/llm-in-github-actions
version: v2.0.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/muhac/llm-actions** to version **v2.0.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-in-github-actions) to find the latest changes.

## Action Summary

This GitHub Action allows users to run Hugging Face language models on a temporary vLLM server within a CI pipeline. It automates the process of deploying and performing inference with large language models directly in GitHub Actions, addressing tasks such as testing and model evaluation without requiring external infrastructure. Key capabilities include support for various model versions, handling private/public models, and optimizing resource usage within CI environments.

## Release notes

## What's Changed
* Switch vLLM deployment from source build to Docker by @muhac in https://github.com/muhac/llm-actions/pull/5
* Require model name to run workflow by @Copilot in https://github.com/muhac/llm-actions/pull/4


**Full Changelog**: https://github.com/muhac/llm-actions/compare/v1.0.3...v2.0.0
