---
title: AgentScan-cli
date: 2026-08-11 14:24:10 +00:00
tags:
  - thesfb
  - GitHub Actions
draft: false
repo: https://github.com/thesfb/agentscan-action
marketplace: https://github.com/marketplace/actions/agentscan-cli
version: v1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The AgentScan Action automates the security scanning of AI agent skills before they are run in GitHub Actions workflows. It uses a deterministic local scanner to identify and report potential security issues such as shell commands, network calls, secrets, licenses, and obfuscation. The action helps prevent risky skills from being deployed by failing the build when it detects findings at or above a specified severity threshold, while still printing all findings in the log for review.
---


Version updated for **https://github.com/thesfb/agentscan-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentscan-cli) to find the latest changes.

## Action Summary

The AgentScan Action automates the security scanning of AI agent skills before they are run in GitHub Actions workflows. It uses a deterministic local scanner to identify and report potential security issues such as shell commands, network calls, secrets, licenses, and obfuscation. The action helps prevent risky skills from being deployed by failing the build when it detects findings at or above a specified severity threshold, while still printing all findings in the log for review.

## What's Changed

AgentScan is a local scanner for AI agent skills. Point it at any Claude Code, Codex, or OpenCode skill directory before you install. It shows what the skill does: permissions, network calls, secrets, license. A scan takes seconds and returns file:line evidence for every finding, so the verdict is yours. It never runs the skill. It never sends data.
