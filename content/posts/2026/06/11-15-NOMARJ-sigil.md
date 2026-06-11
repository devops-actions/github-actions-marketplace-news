---
title: Sigil Security Scan
date: 2026-06-11 15:49:29 +00:00
tags:
  - NOMARJ
  - GitHub Actions
draft: false
repo: https://github.com/NOMARJ/sigil
marketplace: https://github.com/marketplace/actions/sigil-security-scan
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/NOMARJ/sigil** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigil-security-scan) to find the latest changes.

## What's Changed

## Sigil v1.2.0

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
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.0/sigil-macos-arm64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**macOS (Intel):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.0/sigil-macos-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Linux (x64):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.0/sigil-linux-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Windows (x64):**
Download `sigil-windows-x64.zip`, extract, and add to your PATH.

### Verify checksums
```bash
sha256sum -c SHA256SUMS.txt
```


## What's Changed
* blog: add post 09 — The Three-Layer AI Security Stack by @nomark-dev in https://github.com/NOMARJ/sigil/pull/110
* Feature/f 003 closeout by @nomark-dev in https://github.com/NOMARJ/sigil/pull/111
* NOM-891: Auth0 test-user cleanup evidence (US-010) by @Copilot in https://github.com/NOMARJ/sigil/pull/112
* NOM-888: Delete dead create-checkout route by @Copilot in https://github.com/NOMARJ/sigil/pull/113
* F-007: Launch-readiness remediation — agent-buildable subset (US-001/002/003/006/008) by @nomark-dev in https://github.com/NOMARJ/sigil/pull/115
* ci: [US-009] bump Rust CI toolchain to 1.90.0 (edition2024) by @nomark-dev in https://github.com/NOMARJ/sigil/pull/116
* docs: [US-009] Rust CLI verified on CI — HIGH-002 closed by @nomark-dev in https://github.com/NOMARJ/sigil/pull/117
* fix: resolve /signup 404 + tap-qualify brew install + reconcile known-risks by @nomark-dev in https://github.com/NOMARJ/sigil/pull/118
* fix(api): make Lint Python (ruff) job green — unused imports + format by @nomark-dev in https://github.com/NOMARJ/sigil/pull/119
* fix(test): repair pre-existing API test failures (trending_service module-patch bug) by @nomark-dev in https://github.com/NOMARJ/sigil/pull/120
* fix(test): make test_email_channel deterministic (CI was red) by @nomark-dev in https://github.com/NOMARJ/sigil/pull/121
* fix(ci): repair publish-jetbrains.yml YAML (workflow file issue) by @nomark-dev in https://github.com/NOMARJ/sigil/pull/122
* NOM-883: Accept ADR-0003 claude_service strategy (docs alignment) by @Copilot in https://github.com/NOMARJ/sigil/pull/123


**Full Changelog**: https://github.com/NOMARJ/sigil/compare/v1...v1.2.0
