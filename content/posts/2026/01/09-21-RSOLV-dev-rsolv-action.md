---
title: RSOLV Test-First AI Security Fixes
date: 2026-01-09 21:20:11 +00:00
tags:
  - RSOLV-dev
  - GitHub Actions
draft: false
repo: https://github.com/RSOLV-dev/rsolv-action
marketplace: https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes
version: v3.8.16
dependentsNumber: "3"
---


Version updated for **https://github.com/RSOLV-dev/rsolv-action** to version **v3.8.16**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes) to find the latest changes.

## Action Summary

RSOLV is a GitHub Action designed to automate the identification, validation, and remediation of security vulnerabilities in your codebase. It generates proof-of-concept tests to confirm vulnerabilities, uses AI to create validated fixes, and integrates regression protection by retaining these tests in your project. This action streamlines secure code delivery by eliminating false positives, ensuring effective fixes, and seamlessly integrating with existing testing frameworks.

## Release notes

## Changes

### RFC-095: Feature Flag Integration
- Add FunWithFlags legacy adapter fallback via credential vending API
- Action now receives `feature_flags` from backend and can instantly fall back to legacy CLI adapter

### Docker/SDK Compatibility Fixes
- Fix Docker spawn issues with explicit env configuration
- Add libc compatibility libraries for Claude Agent SDK
- Pass vended API key and env to Claude Code subprocess
- Set pathToClaudeCodeExecutable for Docker compatibility

### Bug Fixes
- Validate commitHash before creating PR (RFC-095 follow-up)

## Full Changelog
https://github.com/RSOLV-dev/rsolv-action/compare/v3.8.15...v3.8.16
