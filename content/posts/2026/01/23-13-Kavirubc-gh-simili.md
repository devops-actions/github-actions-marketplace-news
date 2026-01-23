---
title: Simili - Issue Intelligence
date: 2026-01-23 13:42:54 +00:00
tags:
  - Kavirubc
  - GitHub Actions
draft: false
repo: https://github.com/Kavirubc/gh-simili
marketplace: https://github.com/marketplace/actions/simili-issue-intelligence
version: v2.2.4
dependentsNumber: "?"
---


Version updated for **https://github.com/Kavirubc/gh-simili** to version **v2.2.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simili-issue-intelligence) to find the latest changes.

## Action Summary

Simili - Issue Intelligence is a GitHub Action and CLI tool that automates the detection of duplicate issues and identifies similar issues using AI-powered semantic search. It streamlines issue management by supporting cross-repository searches, automated issue transfers, and smart comments linking related issues, helping teams reduce redundancy and improve workflow efficiency. Its capabilities include configurable similarity thresholds, integration with vector databases, and support for custom GitHub App bots.

## Release notes

## Bug Fixes

- **Fix transferred issues being detected as self-duplicates** - When an issue was transferred, the source workflow was incorrectly indexing it with the source issue number. This caused the destination workflow to find a 100% match and close the issue as a duplicate of itself. Now only the destination workflow handles indexing with the correct issue number.
