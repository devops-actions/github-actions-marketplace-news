---
title: Contrast AI SmartFix
date: 2025-12-09 01:25:57 +00:00
tags:
  - Contrast-Security-OSS
  - GitHub Actions
draft: false
repo: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action
marketplace: https://github.com/marketplace/actions/contrast-ai-smartfix
version: v1.0.11
dependentsNumber: "3"
---


Version updated for **https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action** to version **v1.0.11**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contrast-ai-smartfix) to find the latest changes.

## Release notes

## Contrast AI SmartFix Release
SmartFix is an AI-powered agent that automatically generates code fixes for vulnerabilities identified by Contrast Assess. It integrates into your developer workflow via GitHub Actions, creating Pull Requests (PRs) with proposed remediations.

Please see our README here: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action.

## v1.0.11 Highlights:
This version introduces support for GitHub Enterprise Server Actions usage.

It also introduces a new config option value, `enable_anthropic_prompt_caching`.  This option controls enabling/disabling prompt caching for Anthropic bring-your-own LLM models (BYOLLM) as not all Anthropic model deployments support prompt caching.  The config value defaults to `true`, meaning that prompt caching is ON by default.

This also contains a bugfix for creating PRs with labels, which SmartFix does as it uses labels to associate PRs with Contrast vulnerabilities.  As of December 8, 2025, GitHub's GITHUB_TOKEN permissions changes cause the internal UPDATE mutation used by `gh pr   create --label` to fail with the error message, `github-actions[bot] does not have permission to update the pull request`.

## What's Changed
* AIML-249 improve flag off error message by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/79
* AIML-250 ghes server urls by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/82
* AIML-252 anthropic prompt caching config by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/83
* AIML-302 GHES environment changes by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/84
* AIML-307: fix: use separate label addition instead of gh pr create --label by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/87
* Release candidate v1.0.11 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/88


**Full Changelog**: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/compare/v1...v1.0.11
