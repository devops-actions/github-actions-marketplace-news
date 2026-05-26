---
title: vsix-scan
date: 2026-05-26 06:25:56 +00:00
tags:
  - PabloDomi
  - GitHub Actions
draft: false
repo: https://github.com/PabloDomi/vsix-scan
marketplace: https://github.com/marketplace/actions/vsix-scan
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/PabloDomi/vsix-scan** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vsix-scan) to find the latest changes.

## Action Summary

The `vsix-scan` GitHub Action is a security analysis tool designed to scan Visual Studio Code extensions (both `.vsix` files and installed extensions) for potential threats and vulnerabilities. It automates the detection of malicious patterns, hardcoded secrets, dependency vulnerabilities, license compliance issues, and trust signals from the VS Marketplace, enabling developers to assess and mitigate risks without requiring Visual Studio Code. Key capabilities include static code analysis, dependency vulnerability checks, custom rule integration, and compatibility with CI pipelines for automated security enforcement.

## What's Changed

Initial public release of **vsix-scan**, a deep security analyzer for VS Code extensions.

## Highlights

- 7 analyzers: manifest, AST, secrets, dependencies, license, webview/CSP, marketplace trust signals
- Custom YAML rules engine
- 6 commands: `analyze`, `scan-all`, `diff`, `watch`, `list`, `cache`
- 4 output formats: terminal, JSON, HTML, SARIF
- Multi-editor support: VS Code, Cursor, Windsurf, VSCodium
- GitHub Action for CI integration
- 12h result cache (52× speedup on warm runs)

## Install

```bash
npm install -g vsix-scan
