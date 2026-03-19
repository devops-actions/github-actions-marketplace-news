---
title: Supply Chain Guard
date: 2026-03-19 13:51:32 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v2.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v2.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The `supply-chain-guard` GitHub Action is an open-source security scanner designed to detect and mitigate software supply-chain threats in npm, PyPI, and VS Code extensions. It automates the identification of advanced malware campaigns, suspicious code patterns, and indicators of compromise (e.g., obfuscated code, typosquatting, or data exfiltration) that traditional scanners often miss. Its key capabilities include scanning local code, repositories, and npm packages, monitoring Solana-based C2 channels, and providing actionable findings in various output formats for enhanced security workflows.

## Release notes

## 🛡️ supply-chain-guard v2.0.0

Major release: expanded from npm-only to a **multi-platform supply chain security scanner**.

### New Scanners
- **PyPI Scanner** (`supply-chain-guard pypi <package>`) - Scans Python packages without installing
- **VS Code Extension Scanner** (`supply-chain-guard vscode <id-or-path>`) - Scans .vsix extensions
- **Dependency Confusion Detection** (`supply-chain-guard confusion <path>`) - Flags suspicious public packages
- **Lockfile Integrity Checker** - Auto-runs during directory scans

### New Detection (65 rules, up from 25)
- **Campaign signatures:** XZ Utils (CVE-2024-3094), SolarWinds SUNBURST, Codecov, ua-parser-js, coa/rc
- **PyPI patterns:** os.system, subprocess, exec+base64, __import__, pip install from foreign URLs
- **VS Code patterns:** suspicious activationEvents, obfuscated extension code, network/eval/child_process
- **Binary detection:** .node/.so/.dll/.dylib/.exe files, node-pre-gyp, prebuilt downloads (30-package whitelist)
- **Lockfile checks:** integrity hash validation, non-registry URLs, orphaned deps, version downgrades
- **Network beacons:** setInterval+fetch patterns, WebSocket to unknown hosts
- **Crypto miners:** Stratum protocol, mining pool domains, CoinHive/XMRig/cryptonight
- **Protestware:** locale/timezone + destructive code patterns

### Threat Intelligence
- `supply-chain-guard update` command for refreshing threat feeds
- 14 real IoC hashes (event-stream, node-ipc, crossenv, colors/faker, GlassWorm)

### Stats
- 142 tests
- 65 detection rules
- 9 test suites

### Install
\`\`\`bash
npm install -g supply-chain-guard
\`\`\`

