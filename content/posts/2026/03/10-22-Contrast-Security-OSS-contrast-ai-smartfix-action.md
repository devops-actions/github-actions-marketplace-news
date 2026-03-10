---
title: Contrast AI SmartFix
date: 2026-03-10 22:04:55 +00:00
tags:
  - Contrast-Security-OSS
  - GitHub Actions
draft: false
repo: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action
marketplace: https://github.com/marketplace/actions/contrast-ai-smartfix
version: v1.0.13
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action** to version **v1.0.13**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contrast-ai-smartfix) to find the latest changes.

## Action Summary

Contrast AI SmartFix is a GitHub Action that automates the remediation of vulnerabilities identified by Contrast Assess using AI-powered tools. It generates Pull Requests with proposed fixes, integrating seamlessly into developer workflows and reducing manual effort. The action supports multiple coding agents, including an internal SmartFix agent and third-party AI tools like GitHub Copilot and Claude Code, to deliver accurate, context-aware vulnerability fixes.

## Release notes

## Contrast AI SmartFix Release
SmartFix is an AI-powered agent that automatically generates code fixes for vulnerabilities identified by Contrast Assess. It integrates into your developer workflow via GitHub Actions, creating Pull Requests (PRs) with proposed remediations.

Please see our README here: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action.

## v1.0.13 Highlights:
This version includes multiple library upgrades and prompt improvements.

## What's Changed
* AIML-430: Fail action with accurate error messages for 409 responses by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/101
* AIML-458: Dependency upgrades (staged) by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/102
* AIML-458: Stage 2 — boto3 1.38.19 → 1.42.48 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/103
* AIML-458: Stage 3 — litellm 1.77.5 → 1.81.10 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/104
* AIML-458: Stage 4 — uv 0.7.15 → 0.10.2 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/105
* AIML-458: Stage 5a — google-adk 1.10.0 → 1.15.0 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/106
* AIML-458: Stage 5b — google-adk 1.15.0 → 1.20.0 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/107
* AIML-458: Stage 5c — google-adk 1.20.0 → 1.25.0 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/108
* AIML-458: Stage 6 — Python 3.11 → 3.13 in CI/CD and action by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/109
* AIML-458: Stage 7 — @modelcontextprotocol/server-filesystem 2025.11.25 → 2026.1.14 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/110
* Verify GitHub PR data to detect stale responses during incidents by @Alex-Contrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/114
* AIML-482: Add repository directory tree to Fix and QA agent user prompts by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/112
* AIML-495: Add smartfix-scenario-test script and Claude Code skill by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/116
* AIML-493: Notify backend when agent produces no code changes by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/117
* AIML-493: Add NO_CODE_CHANGED failure category by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/118
* AIML-526: Rollback google-adk to 1.15.0 — fix Contrast LLM session validation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/120
* AIML-522: Detect PR creation permission error and log actionable guidance by @dougj-contrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/119
* AIML-493: Add MEDIUM to the default vulnerability_severities by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/115
* AIML-534 Release candidate v1.0.13 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/121


**Full Changelog**: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/compare/v1...v1.0.13
