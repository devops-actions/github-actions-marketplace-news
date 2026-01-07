---
title: Flowlyt Security Analyzer
date: 2026-01-07 05:39:34 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.0.6
dependentsNumber: "0"
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.0.6**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed to enhance the security of CI/CD pipelines for GitHub Actions and GitLab. It combines traditional pattern matching, Abstract Syntax Tree (AST) analysis, and AI-driven false positive detection to identify vulnerabilities, reduce noise, and improve scan speed and accuracy. Key features include support for multiple AI providers, real-time verification, supply chain security analysis, and compatibility with GitHub Security tab integration.

## Release notes

Release v1.0.6 - Fix false positives for internal organization actions

This release eliminates false positives when organizations use their own internal GitHub Actions.

Key Changes:
- Internal organization actions are now trusted automatically
- Reduced 8 false positives for same-org actions
- Maintains security checks for external dependencies
- Fixes #19

See changelogs/CHANGELOG-v1.0.6.md for full details.


**Full Changelog**: https://github.com/harekrishnarai/flowlyt/compare/v1.0.5...v1.0.6
