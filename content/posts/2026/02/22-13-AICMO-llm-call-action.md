---
title: LLM Call
date: 2026-02-22 13:24:56 +00:00
tags:
  - AICMO
  - GitHub Actions
draft: false
repo: https://github.com/AICMO/llm-call-action
marketplace: https://github.com/marketplace/actions/llm-call
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/AICMO/llm-call-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-call) to find the latest changes.

## Action Summary

The **LLM Call Action** is a reusable GitHub Action that automates the process of sending a prompt and data to a large language model (LLM) and returning a cleaned, parsed output. It simplifies provider authentication, supports multiple LLM providers, and eliminates runtime dependencies, making it a flexible, provider-agnostic building block for custom AI workflows. This action is ideal for users who need precise control over prompts, data, and output in CI/CD pipelines without being locked into specific vendor workflows.

## Release notes

## What's changed

- Rewrote README with personal Claude Code OAuth token as the primary recommended flow
- Added step-by-step token setup instructions
- Added usage policy note (personal use per Anthropic ToS — business use is user's responsibility)
- All scenario examples now use `claude_code_oauth_token`
- Added API key fallback mention and mixed-provider example
