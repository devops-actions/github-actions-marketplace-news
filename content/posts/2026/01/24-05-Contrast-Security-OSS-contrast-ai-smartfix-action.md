---
title: Contrast AI SmartFix
date: 2026-01-24 05:38:41 +00:00
tags:
  - Contrast-Security-OSS
  - GitHub Actions
draft: false
repo: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action
marketplace: https://github.com/marketplace/actions/contrast-ai-smartfix
version: v1.0.12
dependentsNumber: "3"
---


Version updated for **https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action** to version **v1.0.12**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contrast-ai-smartfix) to find the latest changes.

## Action Summary

Contrast AI SmartFix is a GitHub Action that automates the remediation of vulnerabilities identified by Contrast Assess using AI-powered code generation. It creates pull requests with proposed fixes, reducing manual effort and integrating seamlessly into developer workflows. The action supports multiple coding agents, including Contrast's SmartFix agent and third-party tools like GitHub Copilot, and offers advanced options such as configurable PR throttling and the ability to use a custom LLM for generating fixes.

## Release notes

## Contrast AI SmartFix Release
SmartFix is an AI-powered agent that automatically generates code fixes for vulnerabilities identified by Contrast Assess. It integrates into your developer workflow via GitHub Actions, creating Pull Requests (PRs) with proposed remediations.

Please see our README here: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action.

## v1.0.12 Highlights:
This version includes improvements to the GitHub Copilot coding agent support to account for recent changes in that product which change its feature branch naming strategy.

Also included are improved test coverage, more robust handling of LLM calls, and simplified `smartfix.yml` examples.


## What's Changed
* AIML-312: Add AI assistant prompt for SmartFix setup by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/89
* AIML-29: Implement exponential backoff retry for LLM calls by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/91
* AIML-123 git handler refactor by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/81
* AIML-321: Add validation for AWS Bedrock configuration by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/92
* AIML-321 refine bedrock config validation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/93
* AIML-313: simplify smartfix.yml job by @dougj-contrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/90
* [AIML-326] - Add test coverage for contrast_api by @Alex-Contrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/94
* AIML-337: Add command allowlist validation for build and format commands by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/95
* AIML-348: Improve test coverage from 51% to 71% (exceeds 70% target) by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/96
* AIML-245 & AIML-320: Fix Copilot PR detection and auth error handling by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/97
* AIML-245 & AIML-320: Update Claude Code documentation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/98
* Release candidate v1 0 12 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/100

## New Contributors
* @Alex-Contrast made their first contribution in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/94

**Full Changelog**: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/compare/v1...v1.0.12
