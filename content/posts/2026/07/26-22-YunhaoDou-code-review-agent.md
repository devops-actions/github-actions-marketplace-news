---
title: YunhaoDou Code Review Agent
date: 2026-07-26 22:19:26 +00:00
tags:
  - YunhaoDou
  - GitHub Actions
draft: false
repo: https://github.com/YunhaoDou/code-review-agent
marketplace: https://github.com/marketplace/actions/yunhaodou-code-review-agent
version: v1.0.1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The code-review-agent automates the process of reviewing PRs by fetching diffs, running tests, and identifying issues using the Tool Use feature (defaulting to DeepSeek but also supports Anthropic). It ensures that each tool call is limited to 15 per PR and monitors token usage to prevent excessive costs. The agent posts focused review comments directly in GitHub PRs, including inline and top-level comments based on identified issues.
---


Version updated for **https://github.com/YunhaoDou/code-review-agent** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/yunhaodou-code-review-agent) to find the latest changes.

## Action Summary

The code-review-agent automates the process of reviewing PRs by fetching diffs, running tests, and identifying issues using the Tool Use feature (defaulting to DeepSeek but also supports Anthropic). It ensures that each tool call is limited to 15 per PR and monitors token usage to prevent excessive costs. The agent posts focused review comments directly in GitHub PRs, including inline and top-level comments based on identified issues.

## What's Changed

Rename the action to `YunhaoDou Code Review Agent` — the previous name `Code Review Agent` collided with an existing Marketplace/user/org name. No functional changes from v1.0.0.
