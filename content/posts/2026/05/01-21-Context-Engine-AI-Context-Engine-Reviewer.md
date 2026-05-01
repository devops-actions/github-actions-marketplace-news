---
title: Context Engine Reviewer
date: 2026-05-01 21:51:25 +00:00
tags:
  - Context-Engine-AI
  - GitHub Actions
draft: false
repo: https://github.com/Context-Engine-AI/Context-Engine-Reviewer
marketplace: https://github.com/marketplace/actions/context-engine-reviewer
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Context-Engine-AI/Context-Engine-Reviewer** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/context-engine-reviewer) to find the latest changes.

## Action Summary

The **Context Engine Reviewer** GitHub Action is an AI-powered tool that automates the review of pull requests by providing high-quality inline comments, a concise PR overview, and incremental reviews for updated commits. It solves the problem of manual code review by leveraging large language models (LLMs) to batch and analyze diffs, support multiple AI providers, and handle large diffs efficiently. Key capabilities include dry-run support, customizable review settings, and integration with various LLM platforms such as OpenAI, Anthropic, and AWS Bedrock.

## What's Changed

## v1 Release Notes

  Initial public release of Context Engine Reviewer.

  - GitHub PR review action with inline comments, overview summaries, batching,
    retries, and comment upserts.
  - Local dry-run CLI for testing real PR reviews before posting to GitHub.
  - Provider support for OpenAI, Anthropic, Google, AWS Bedrock, and Z.AI glm-5.
  - Enhanced custom_mode reviewer path retained for deeper senior-engineer analysis.
  - Node 24 runtime, latest dependency stack, and zero known npm audit vulnerabilities.
  - AGPL-3.0 licensed
