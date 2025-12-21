---
title: Serix AI Agent Security Test
date: 2025-12-21 13:10:59 +00:00
tags:
  - yuktathapliyal
  - GitHub Actions
draft: false
repo: https://github.com/yuktathapliyal/serix
marketplace: https://github.com/marketplace/actions/serix-ai-agent-security-test
version: v0.2.4
dependentsNumber: "?"
---


Version updated for **https://github.com/yuktathapliyal/serix** to version **v0.2.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/serix-ai-agent-security-test) to find the latest changes.

## Action Summary

The GitHub Action described in the README is currently in pre-alpha development and does not provide sufficient functional details for analysis.

## Release notes

## What's New

  - **Model Configuration**: All models now configurable via `serix.toml` `[models]` section
  - **Interactive Prompts**: TTY detection prompts 'Continue?' on regression failures (local dev)
  - **Attack Storage**: `attack` command now saves attacks with `--save-all` flag
  - **GitHub Tests**: 17 new tests for `--github` flag integration

  ## Full Changelog
  - feat: centralize model configuration in serix.toml
  - feat: interactive regression prompt for local dev  
  - feat: store attacks in attack command
  - test: add GitHub Actions integration tests
  - fix: improve demo regression UX
  - fix: reorder HTML report sections
