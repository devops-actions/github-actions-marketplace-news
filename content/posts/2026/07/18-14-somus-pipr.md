---
title: Pipr Review
date: 2026-07-18 14:18:16 +00:00
tags:
  - somus
  - GitHub Actions
draft: false
repo: https://github.com/somus/pipr
marketplace: https://github.com/marketplace/actions/pipr-review
version: v0.4.3
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  Pipr is a GitHub Action and CLI tool that automates AI code reviews across various code hosts. It loads configuration from `.pipr/config.ts`, builds a deterministic Diff Manifest, runs Pi for structured output, validates findings against commentable ranges, and publishes Main Review Comments and capped Inline Review Comments. Supported delivery targets include GitHub, GitLab, Azure DevOps Services, and Bitbucket Cloud. The runtime owns diff modeling, Pi execution, structured output validation, stale-head checks, and comment publishing.
---


Version updated for **https://github.com/somus/pipr** to version **v0.4.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipr-review) to find the latest changes.

## Action Summary

Pipr is a GitHub Action and CLI tool that automates AI code reviews across various code hosts. It loads configuration from `.pipr/config.ts`, builds a deterministic Diff Manifest, runs Pi for structured output, validates findings against commentable ranges, and publishes Main Review Comments and capped Inline Review Comments. Supported delivery targets include GitHub, GitLab, Azure DevOps Services, and Bitbucket Cloud. The runtime owns diff modeling, Pi execution, structured output validation, stale-head checks, and comment publishing.

## What's Changed

## [0.4.3](https://github.com/somus/pipr/compare/v0.4.2...v0.4.3) (2026-07-18)


### Bug Fixes

* **config:** collapse dogfood inline rationales ([#93](https://github.com/somus/pipr/issues/93)) ([9b646b5](https://github.com/somus/pipr/commit/9b646b55d8da223e9f5bb7709d82296adacf6a5d))
* **runtime:** pre-exclude discarded diff content ([#95](https://github.com/somus/pipr/issues/95)) ([8847418](https://github.com/somus/pipr/commit/8847418249b59841d42227eaf4d513828a834de0))
