---
title: Sigil Security Scan
date: 2026-05-03 13:53:37 +00:00
tags:
  - NOMARJ
  - GitHub Actions
draft: false
repo: https://github.com/NOMARJ/sigil
marketplace: https://github.com/marketplace/actions/sigil-security-scan
version: v1.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/NOMARJ/sigil** to version **v1.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigil-security-scan) to find the latest changes.

## Action Summary

Sigil is a security-focused tool that scans repositories, packages, and AI agent tooling for malicious patterns before they are executed, preventing potential threats such as credential exfiltration, backdoors, and malicious install hooks. It automates security auditing through a six-phase analysis, scoring risks based on factors like code patterns, obfuscation, and network activity, with a quarantine-first approach to ensure safety. This action addresses gaps in traditional dependency scanners by focusing on detecting intentionally harmful code.

## What's Changed

## Sigil v1.1.2

### Quick Install

**Homebrew (macOS/Linux):**
```bash
brew tap nomarj/tap
brew install sigil
```

**npm (All platforms):**
```bash
npm install -g @nomark/sigil
```

**Cargo (Rust):**
```bash
cargo install sigil
```

**curl installer:**
```bash
curl -sSL https://sigilsec.ai/install.sh | sh
```

### Manual Installation

**macOS (Apple Silicon):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.1.2/sigil-macos-arm64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**macOS (Intel):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.1.2/sigil-macos-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Linux (x64):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.1.2/sigil-linux-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Windows (x64):**
Download `sigil-windows-x64.zip`, extract, and add to your PATH.

### Verify checksums
```bash
sha256sum -c SHA256SUMS.txt
```


## What's Changed
* docs: Add v1.1.1 changelog entry by @nomark-dev in https://github.com/NOMARJ/sigil/pull/64
* fix: Prevent SQL Server connection busy errors with cursor context managers by @nomark-dev in https://github.com/NOMARJ/sigil/pull/65
* fix: forge pagination, category filtering, and trust score distribution by @nomark-dev in https://github.com/NOMARJ/sigil/pull/66
* fix: correct forge health check URLs in deploy-forge workflow by @nomark-dev in https://github.com/NOMARJ/sigil/pull/67
* feat: Major UI/UX improvements for Sigil dashboard by @nomark-dev in https://github.com/NOMARJ/sigil/pull/68
* feat: dashboard fixes, real scan data, and subscription management by @nomark-dev in https://github.com/NOMARJ/sigil/pull/69
* feat: Apply improved UI/UX design system to main app pages by @nomark-dev in https://github.com/NOMARJ/sigil/pull/70
* fix: Dashboard build errors from PR #70 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/71
* feat: Interactive LLM Analysis System with Feedback Learning by @nomark-dev in https://github.com/NOMARJ/sigil/pull/72
* fix: add missing date-fns dependency to dashboard by @nomark-dev in https://github.com/NOMARJ/sigil/pull/73
* fix: update package-lock.json for date-fns dependency by @nomark-dev in https://github.com/NOMARJ/sigil/pull/74
* Fix TypeScript and React hooks issues in BulkInvestigator by @nomark-dev in https://github.com/NOMARJ/sigil/pull/75
* fix: bulk investigator TypeScript hooks by @nomark-dev in https://github.com/NOMARJ/sigil/pull/76
* Feature/auth0 unified authentication by @nomark-dev in https://github.com/NOMARJ/sigil/pull/77
* feat: Add Auth0 production setup with Azure deployment scripts by @nomark-dev in https://github.com/NOMARJ/sigil/pull/78
* Feature/auth0 production setup by @nomark-dev in https://github.com/NOMARJ/sigil/pull/79
* Enhanced Obfuscation Detection for CVE Gap Closure by @nomark-dev in https://github.com/NOMARJ/sigil/pull/80
* Fix: Remove deceptive evaluation scripts and implement honesty safeguards by @nomark-dev in https://github.com/NOMARJ/sigil/pull/81
* fix: Remediate critical false positives in Sigil scanner by @nomark-dev in https://github.com/NOMARJ/sigil/pull/82
* Feature/reduce false positives by @nomark-dev in https://github.com/NOMARJ/sigil/pull/83
* feat: Scanner v2 Migration - Reduce false positives from 36% to <5% by @nomark-dev in https://github.com/NOMARJ/sigil/pull/84
* Feature/reduce false positives by @nomark-dev in https://github.com/NOMARJ/sigil/pull/85
* Feature/add claude commands by @nomark-dev in https://github.com/NOMARJ/sigil/pull/86
* Claude/sigil openshell research px lv2 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/88
* chore: update NOMARK harness v2.1.0 → v3.0.1 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/89
* chore: update NOMARK harness v3.0.1 → v3.0.130 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/90
* fix: remove dead forge enrichment code that breaks bot startup by @nomark-dev in https://github.com/NOMARJ/sigil/pull/91
* feat: Forge stats caching, registry search optimization, PostHog analytics by @nomark-dev in https://github.com/NOMARJ/sigil/pull/93
* NOM-30: Publish VS Code extension to VS Code Marketplace by @Copilot in https://github.com/NOMARJ/sigil/pull/92
* NOM-31: Add JetBrains Marketplace publish pipeline and versioned plugin release path by @Copilot in https://github.com/NOMARJ/sigil/pull/94
* NOM-29: Ensure release pipeline publishes latest Sigil to Homebrew tap by @Copilot in https://github.com/NOMARJ/sigil/pull/95
* fix(forge): derive stats ecosystem counts from public_scans by @nomark-dev in https://github.com/NOMARJ/sigil/pull/96
* fix(forge): use COUNT(*) for ecosystem stats to avoid 30s timeout by @nomark-dev in https://github.com/NOMARJ/sigil/pull/97
* Update trust metrics by @nomark-dev in https://github.com/NOMARJ/sigil/pull/99
* fix(tests): migrate deprecated /register usage to Auth0 login flow by @nomark-dev in https://github.com/NOMARJ/sigil/pull/98
* Merge all branches by @nomark-dev in https://github.com/NOMARJ/sigil/pull/100
* Hygiene workflow updates by @nomark-dev in https://github.com/NOMARJ/sigil/pull/101
* Sync main updates by @nomark-dev in https://github.com/NOMARJ/sigil/pull/102
* style: ruff format upsert race-fix + verify evidence by @nomark-dev in https://github.com/NOMARJ/sigil/pull/103
* chore(deps): refresh dead Actions SHA pins across remaining workflows by @nomark-dev in https://github.com/NOMARJ/sigil/pull/104
* chore(release): bump version to 1.1.2 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/105
* fix(release): allow npm version step when manifest already matches tag by @nomark-dev in https://github.com/NOMARJ/sigil/pull/106

## New Contributors
* @Copilot made their first contribution in https://github.com/NOMARJ/sigil/pull/92

**Full Changelog**: https://github.com/NOMARJ/sigil/compare/v1.1.1...v1.1.2
