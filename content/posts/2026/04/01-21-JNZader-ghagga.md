---
title: GHAGGA Code Review
date: 2026-04-01 21:56:45 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v2.8.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/JNZader/ghagga** to version **v2.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is an AI-powered code review tool that combines static analysis and AI-driven insights to automate the review of pull requests. By integrating with 16 static analysis tools, leveraging project memory for learning from past reviews, and supporting multiple review modes (e.g., single AI or multi-agent workflows), it identifies issues, assesses code quality, and provides structured feedback directly on PRs. It streamlines code reviews, enhances developer productivity, and supports various configurations, including self-hosted, CLI, and GitHub Action modes.

## What's Changed

### Fixed
- CLI published with unresolvable `workspace:*` dependency for ghagga-core — changed to `^2.8.0`
