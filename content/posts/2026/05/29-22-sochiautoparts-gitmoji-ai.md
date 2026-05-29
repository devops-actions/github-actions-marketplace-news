---
title: GitMoji AI — Auto Commit Messages
date: 2026-05-29 22:46:51 +00:00
tags:
  - sochiautoparts
  - GitHub Actions
draft: false
repo: https://github.com/sochiautoparts/gitmoji-ai
marketplace: https://github.com/marketplace/actions/gitmoji-ai-auto-commit-messages
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sochiautoparts/gitmoji-ai** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitmoji-ai-auto-commit-messages) to find the latest changes.

## Action Summary

GitMoji AI is a GitHub Action and CLI tool that automates the generation of descriptive, AI-powered commit messages and changelogs, supporting multiple languages and styles such as conventional commits and GitMoji emoji formats. It streamlines the version control process, improving commit quality and consistency while saving time for developers. The tool integrates with Git workflows, offers team collaboration features, and provides an optional Pro version for additional capabilities like unlimited usage and custom styles.

## What's Changed

## 🔒 Security Fixes (Critical)
- **Removed trivially bypassable paywall** — `settings.is_pro` property eliminated; all Pro checks now use `is_pro()` with real SHA-256 license verification
- **`suggest` command now enforces rate limits** — free tier can no longer bypass limits via `gmai suggest --quiet`
- **GitHub OAuth Client ID moved to env var** — no more hardcoded secrets
- **GitHub PAT file permissions set to 0o600** — no more world-readable auth tokens
- **Real Device Flow authentication** — replaced stub with working GitHub Device Flow

## ✨ New Pro Features
- **Custom commit styles (Pro)**: `semantic-release` and `gitmoji-dict` styles with detailed prompts
- **Team configuration**: `.gitmoji-ai-team.yml` — commit conventions, required scopes, max subject length
- **7 real languages**: Complete native system prompts for EN, RU, ES, DE, FR, JA, ZH
- **Priority support**: `gmai support` command generates debug info template

## 🐛 Bug Fixes
- Fixed two competing action.yml files — single canonical action with `license-key` input
- Fixed `suggest` command watermark bypass
- Fixed `device_flow_login()` stub — now implements real GitHub Device Flow

## 📊 Test Coverage
- 14 → 44 tests (3x increase)
- New test classes: TestLanguagePrompts, TestCommitStyles, TestTeamConfig, TestConfigSecurity

