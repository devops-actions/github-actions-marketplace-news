---
title: Contrast AI SmartFix
date: 2025-11-19 21:01:53 +00:00
tags:
  - Contrast-Security-OSS
  - GitHub Actions
draft: false
repo: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action
marketplace: https://github.com/marketplace/actions/contrast-ai-smartfix
version: v1.0.10
dependentsNumber: "?"
---


Version updated for **https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action** to version **v1.0.10**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contrast-ai-smartfix) to find the latest changes.

## Release notes

## Contrast AI SmartFix Release
SmartFix is an AI-powered agent that automatically generates code fixes for vulnerabilities identified by Contrast Assess. It integrates into your developer workflow via GitHub Actions, creating Pull Requests (PRs) with proposed remediations.

Please see our README here: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action.

## v1.0.10 Highlights:
This version introduces Early Access support for **Contrast LLM**.  

**Contrast LLM** is a secure, sandboxed Contrast-hosted LLM that the SmartFix coding agent can use.  It uses your existing Contrast API keys so there is no additional LLM configuration required. 

See the `/docs` folder for details on the Contrast LLM Early Access program.

We added support for the AWS_BEARER_TOKEN_BEDROCK config for longer lived AWS Bedrock LLM authentication support.

We also continued our refactoring effort to support the future development of the SmartFix codebase.

## What's Changed
* AIML-123 vulnerability domain boundary implementation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/56
* AIML-152 bump LiteLLM to 1.77.5 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/64
* Repo File Sync: synced file(s) with Contrast-Security-OSS/common-file-sync by @contrast-oss-sync-bot[bot] in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/65
* AIML-123 domain boundary implementation pr feedback by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/66
* AIML-195: Add support for AWS_BEARER_TOKEN_BEDROCK authentication by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/68
* AIML-123 agent orchestration domain by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/67
* AIML-202 contrast llm config by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/69
* AIML-176 & AIML-172 Get session id for contrast llm and use it for agent communications to the LLM proxy by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/70
* AIML-170 & AIML-171 credit visibility in logs & PRs by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/71
* AIML-229: add telemetry data by @dougj-contrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/72
* AIML-232 Add linting to build check pipeline by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/73
* AIML-241: Fix duplicate guard aborting legitimate skip flow by @ChrisEdwards in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/75
* AIML-233 qa build summary bug by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/74
* AIML-244 remove agent model log for contrast llm usage by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/77
* AIML-171 Add missing Contrast LLM logging by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/78
* AIML-180: Add Contrast LLM Early Access documentation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/76
* Release candidate v1.0.10 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/59

## New Contributors
* @contrast-oss-sync-bot[bot] made their first contribution in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/65

**Full Changelog**: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/compare/v1...v1.0.10
