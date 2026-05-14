---
title: Vibe-Guard-AICoding
date: 2026-05-14 06:26:42 +00:00
tags:
  - YUTAKONDO1205
  - GitHub Actions
draft: false
repo: https://github.com/YUTAKONDO1205/VibeGuard
marketplace: https://github.com/marketplace/actions/vibe-guard-aicoding
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YUTAKONDO1205/VibeGuard** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibe-guard-aicoding) to find the latest changes.

## Action Summary

VibeGuard is a security scanner tailored for AI-generated code, designed to identify and flag hidden risks such as missing input validations, hardcoded credentials, and overlooked login checks. It automates code analysis across development workflows by providing consistent results in three contexts: real-time feedback in VS Code, browser-based scanning of code snippets, and CI integration to block risky pull requests. Its unified analysis engine ensures seamless and reliable detection of vulnerabilities across all supported platforms.

## What's Changed

First public release of VibeGuard as a reusable GitHub Action.

## Highlights
- 30 built-in rules across injection / auth / secrets / crypto / quality
- AI-code heuristics (VG-QUAL-005..010): stub bodies, placeholder emails, mock data, debug flags, "for now" comments, empty validators
- Output formats: human / json / sarif / markdown
- PR diff scan via `diff:` input (`origin/main...HEAD`)
- Suppress pragmas: `vibeguard:disable-line` / `disable-next-line` / `disable-file`
- Composite action — no Docker, runs on `ubuntu-latest`

## Usage
See README for full examples. Minimal:
```yaml
- uses: actions/checkout@v4
- uses: YUTAKONDO1205/VibeGuard@v0.1.0
  with:
    path: .
    format: sarif
    out: vibeguard.sarif
    fail-on: high
- uses: github/codeql-action/upload-sarif@v3
  if: always()
  with:
    sarif_file: vibeguard.sarif
```

