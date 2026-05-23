---
title: Nox Security Scanner
date: 2026-05-23 21:40:40 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v0.10.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v0.10.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## Action Summary

Nox is an open-source, offline-first security scanner designed for AI application developers. It automates the detection of vulnerabilities specific to AI features, such as prompt injection, embedding leakage, agent over-privilege, and cross-file AI taint, while also addressing traditional issues like secrets management and dependency vulnerabilities. Key capabilities include deterministic and safe scanning, integration with Model Context Protocol (MCP), and a signed plugin marketplace, enabling secure, local analysis without the need for third-party SaaS services.

## What's Changed

## Nox v0.10.1 (2026-05-23T15:34:48Z)

Language-agnostic security scanner with first-class AI application security.

### Installation

#### macOS/Linux (Homebrew)
```bash
brew tap felixgeelhaar/tap
brew install nox
```

#### Direct Download
Download the appropriate archive for your platform from the assets below.

### What's Changed

## Changelog
### Features
* 87eb239417d695269ad545b1be018ba8cb4ed907 feat(baseline): add baseline add (additive) and baseline diff (preview) [#73 items 4+5] (#76)
* 9d86e07065576fb61da89dfc5931df7463f2e7dd feat(doctor): warn on nox version drift between local and CI [#73 items 7+8] (#78)
* 7354035583895fb87cc05474724b2386981cd291 feat(findings): opt-in fingerprint v2 (line-independent, path-normalised) [#73 items 1+2] (#74)
* 03e176859c326c9c51592b4ea8c5b61bd31c1a10 feat(suppress): accept nox:disable as alias for nox:ignore [#73 item 6] (#77)
### Bug Fixes
* 71b2354ac44e6bd91a2887cb2bb51d7fbe3dd2d2 fix(scan): honor ancestor .gitignore; push --changed-since into walker (#84)
### Others
* 2116151372c7ff52e79cc3b245de7ca7294a6be9 ci(actions): gate cross-OS, weekly crons, cap retention
* 099985959c24d3445ee108acd36095b8a11bebc6 docs(changelog): record 0.10.1 — scan-scope fixes (#82 #83)
* fbd0c8ee9b005166fe044c053803af70de4d8b35 fix(ai-012): tighten regex; stop flagging every .Execute(*http.Response) [#73 item 3] (#75)

**Full Changelog**: https://github.com/nox-hq/nox/compare/v0.10.0...v0.10.1


