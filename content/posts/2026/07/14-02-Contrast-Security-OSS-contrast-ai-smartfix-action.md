---
title: Contrast AI SmartFix
date: 2026-07-14 02:55:43 +00:00
tags:
  - Contrast-Security-OSS
  - GitHub Actions
draft: false
repo: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action
marketplace: https://github.com/marketplace/actions/contrast-ai-smartfix
version: v1.0.20
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  SmartFix is an AI-powered GitHub Action that automates the remediation of security vulnerabilities identified by Contrast Security. It integrates seamlessly into existing workflows via GitHub Actions, generating Pull Requests (PRs) with proposed fixes. Key benefits include automated remediation, developer-focused PR creation, and accurate vulnerability context. Users can choose from SmartFix's internal coding agent or integrate with GitHub Copilot or Anthropic's Claude Code bot for customized vulnerability fixes.
---


Version updated for **https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action** to version **v1.0.20**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contrast-ai-smartfix) to find the latest changes.

## Action Summary

SmartFix is an AI-powered GitHub Action that automates the remediation of security vulnerabilities identified by Contrast Security. It integrates seamlessly into existing workflows via GitHub Actions, generating Pull Requests (PRs) with proposed fixes. Key benefits include automated remediation, developer-focused PR creation, and accurate vulnerability context. Users can choose from SmartFix's internal coding agent or integrate with GitHub Copilot or Anthropic's Claude Code bot for customized vulnerability fixes.

## What's Changed

## Contrast AI SmartFix Release
SmartFix is an AI-powered agent that automatically generates code fixes for vulnerabilities identified by Contrast Assess. It integrates into your developer workflow via GitHub Actions, creating Pull Requests (PRs) with proposed remediations.

Please see our README here: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action.

## v1.0.20 Highlights

This release adds support for remediating static SAST vulnerabilities found by Contrast Code in a repository for NorthStar-only customers.

## What's Changed
* AIML-820: SmartFix NorthStar action changes — NS mode label, URL, and identifier support by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/175
* AIML-885: Log findingType and severity after finding extraction by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/178
* AIML-999: SAST-only mode — skip app ID requirement for SAST-only repos by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/179
* AIML-999: send repoUrl on /open reconciliation by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/181
* AIML-1005: Update docs to document NorthStar-only (SAST-only) mode by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/180
* AIML-1054 Release version v1.0.20 by @JacobMagesHaskinsContrast in https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/pull/182


**Full Changelog**: https://github.com/Contrast-Security-OSS/contrast-ai-smartfix-action/compare/v1...v1.0.20
