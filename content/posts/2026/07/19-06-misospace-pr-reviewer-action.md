---
title: Miso PR Review
date: 2026-07-19 06:36:40 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v2.1.5
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automatically reviews pull requests using a language model, providing detailed feedback on the code changes and potential risks. It uses OpenAI-compatible models or local models hosted on platforms like llama.cpp, vLLM, LiteLLM, or Anthropic to generate comments and decide if further action is needed for security or risk classification. The action supports CI checks, structured findings with severity tagging, and can publish reviews as sticky comments or native GitHub reviews. It optimizes token usage through incremental review processing and safe defaults, ensuring a seamless AI-driven PR review process.
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v2.1.5**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## Action Summary

This GitHub Action automatically reviews pull requests using a language model, providing detailed feedback on the code changes and potential risks. It uses OpenAI-compatible models or local models hosted on platforms like llama.cpp, vLLM, LiteLLM, or Anthropic to generate comments and decide if further action is needed for security or risk classification. The action supports CI checks, structured findings with severity tagging, and can publish reviews as sticky comments or native GitHub reviews. It optimizes token usage through incremental review processing and safe defaults, ensuring a seamless AI-driven PR review process.

## What's Changed

## What's Changed
* ci(github-action): update action misospace/pr-reviewer-action (v2.1.3 → v2.1.4) by @its-miso[bot] in https://github.com/misospace/pr-reviewer-action/pull/417
* fix(review): preserve forced verdict safety by @joryirving in https://github.com/misospace/pr-reviewer-action/pull/422


**Full Changelog**: https://github.com/misospace/pr-reviewer-action/compare/v2.1.4...v2.1.5
