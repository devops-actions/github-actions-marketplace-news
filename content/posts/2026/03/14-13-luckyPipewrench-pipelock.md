---
title: Pipelock Agent Security Scan
date: 2026-03-14 13:36:43 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v1.3.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source agent firewall designed to protect AI agents from unauthorized data exfiltration and security vulnerabilities. It monitors and intercepts network requests made by agents, blocking malicious actions such as leaking API keys or sensitive data. With support for multiple AI agent frameworks, it offers features like forward and fetch proxy modes, allowing seamless integration without code changes, and operates as a lightweight, dependency-free solution.

## Release notes

## Changelog
* e995702f5b86f4d588ea6c32c5a99ff10494a2b9 Sentry: Initial support (#211)
* 0b2089ca80b7a6f37f963e6fd2d5080992e1e303 feat: add CRLF injection and path traversal detection to scanner pipeline (#224)
* 037e82f5dca8a83a94fe5210afb3d2ee2b37759f feat: add POST /api/v1/scan evaluation endpoint (#223)
* bbe9ddcbb3c440b09fdecccbd9454be08db133a4 feat: add SARIF output for audit and git scan-diff (#217)
* fa7e92fe561ea778a9e1798be2dfa196fb582d78 feat: add license service scaffold (enterprise, ELv2) (#218)
* 36cd8f945a0f4f593e8dec453086ff5bc23ac1bf feat: add pipelock license install command (#216)
* dff1c99e73a591d7dd2759901847e28b6f63f90d feat: add subdomain entropy exclusions for high-entropy cloud domains (#214) (#222)
* dce46c360c86a3ce55c21f2db69b6358536d77f1 feat: add tier and subscription_id fields to license token (#215)
* 5f6453430f4306cefe76e3987f0b97c995456700 feat: runtime license loading from env var and file path (#213)
* bf51529c6ec5ff55e7f24cc77bea225c149579db fix: close config fail-open, WS header DLP bypass, and secrets_file permission gap (#219)
* 6d8aaf4a6e8b64d800a3b7d444c924049a9f21d0 fix: set explicit archive ID for Homebrew formula matching (#227)
* c18e894a8cca85155fcc39c3a831ea53252bbf2a refactor: thread request context through Scanner.Scan for DNS cancellation (#221)


