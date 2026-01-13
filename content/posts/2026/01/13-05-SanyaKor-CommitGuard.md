---
title: PR CommitGuard Bot
date: 2026-01-13 05:59:25 +00:00
tags:
  - SanyaKor
  - GitHub Actions
draft: false
repo: https://github.com/SanyaKor/CommitGuard
marketplace: https://github.com/marketplace/actions/pr-commitguard-bot
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/SanyaKor/CommitGuard** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-commitguard-bot) to find the latest changes.

## Action Summary

CommitGuard is a GitHub Action designed to enhance security by automatically scanning Pull Requests for leaked secrets (e.g., API keys, passwords) and insecure code changes (e.g., risky configurations). It performs an analysis of PR commits and changes, leveraging LLMs via LangChain to classify issues by severity and provide detailed explanations. This action streamlines the detection of security vulnerabilities in code, automating the review process and ensuring secure coding practices in collaborative projects.

## Release notes

## ✨ Added
- Pull Request scanning via GitHub Actions
- Detection of leaked secrets and insecure configurations in PR commits and diffs
- LLM-based severity classification (HIGH / MEDIUM / LOW)
- Automatic PR comments with structured findings
- JSON report uploaded as workflow artifact

**Full Changelog**: https://github.com/SanyaKor/CommitGuard/compare/v1...v1.0.0
