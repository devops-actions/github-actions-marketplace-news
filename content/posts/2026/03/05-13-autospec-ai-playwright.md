---
title: AutoSpec AI - E2E Test Generator
date: 2026-03-05 13:30:29 +00:00
tags:
  - autospec-ai
  - GitHub Actions
draft: false
repo: https://github.com/autospec-ai/playwright
marketplace: https://github.com/marketplace/actions/autospec-ai-e2e-test-generator
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/autospec-ai/playwright** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/autospec-ai-e2e-test-generator) to find the latest changes.

## Action Summary

AutoSpec AI is a GitHub Action designed to automate the generation of Playwright end-to-end tests by analyzing code changes and using an AI-powered workflow to produce production-quality tests that align with the existing test style. It eliminates the manual effort of writing tests by automatically detecting code changes, planning test cases, generating test scripts, and submitting them via pull requests. Key features include support for API mock generation, visual regression testing, failure trace integration, and compatibility with multiple LLM providers for enhanced flexibility.

## Release notes

## What's changed

- **Fix:** Support OpenAI reasoning models (o1, o3-mini, o4-mini, gpt-5.x) by using `max_completion_tokens` instead of `max_tokens` and omitting `temperature` for these models

Previously, AutoSpec would fail when configured with reasoning models because they require different API parameters than standard chat models.
