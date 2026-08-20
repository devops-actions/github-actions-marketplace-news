---
title: Blueprint Pudim Code Reviewer
date: 2026-08-20 06:37:06 +00:00
tags:
  - luismr
  - GitHub Actions
draft: false
repo: https://github.com/luismr/blueprint-pudim-code-reviewer
marketplace: https://github.com/marketplace/actions/blueprint-pudim-code-reviewer
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `blueprint-pudim-code-reviewer` automates the process of reviewing pull request diffs using a swappable language model backend via LangGraph/LangChain's model abstraction. It supports three LLM providers: Anthropic, OpenAI, and Gemini, allowing users to choose their preferred model for code reviews. The action integrates with GitHub workflows, enabling developers to integrate AI-based code review into their CI/CD processes.
---


Version updated for **https://github.com/luismr/blueprint-pudim-code-reviewer** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blueprint-pudim-code-reviewer) to find the latest changes.

## Action Summary

The GitHub Action `blueprint-pudim-code-reviewer` automates the process of reviewing pull request diffs using a swappable language model backend via LangGraph/LangChain's model abstraction. It supports three LLM providers: Anthropic, OpenAI, and Gemini, allowing users to choose their preferred model for code reviews. The action integrates with GitHub workflows, enabling developers to integrate AI-based code review into their CI/CD processes.

## What's Changed

## Fixed

- **Raw JSON posted as review comment when LLM emits trailing commas** — some models occasionally append a trailing comma after the last field of an inline comment object (e.g. `"body": "...",\n}`), which is invalid JSON and causes `json.loads` to raise `JSONDecodeError`. `parse_review_output` then returns `None` and the full raw JSON blob is posted as an issue comment instead of a structured review. A `_sanitize_json` step now strips trailing commas before parsing so well-formed reviews are never silently discarded.
