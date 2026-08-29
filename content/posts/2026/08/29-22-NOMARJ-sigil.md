---
title: Sigil Security Scan
date: 2026-08-29 22:02:53 +00:00
tags:
  - NOMARJ
  - GitHub Actions
draft: false
repo: https://github.com/NOMARJ/sigil
marketplace: https://github.com/marketplace/actions/sigil-security-scan
version: v1.3.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Sigil is an automated security auditing action that scans AI agent code to detect malicious patterns before they reach working environments. It uses a quarantine-first approach and provides eight analysis phases, including Install Hooks, Code Patterns, Network/Exfil, Credentials, Obfuscation, Provenance, Prompt Injection, Skill Security, and LLM Analysis.
---


Version updated for **https://github.com/NOMARJ/sigil** to version **v1.3.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigil-security-scan) to find the latest changes.

## Action Summary

Sigil is an automated security auditing action that scans AI agent code to detect malicious patterns before they reach working environments. It uses a quarantine-first approach and provides eight analysis phases, including Install Hooks, Code Patterns, Network/Exfil, Credentials, Obfuscation, Provenance, Prompt Injection, Skill Security, and LLM Analysis.

## What's Changed

## Sigil v1.3.3

### Quick Install

**Homebrew (macOS/Linux):**
```bash
brew tap nomarj/tap
brew install sigil
```

**npm (macOS/Linux):**
```bash
npm install -g @nomarj/sigil
```

**Cargo (Rust):**
```bash
cargo install sigil-cli
```

**Installer script:**
```bash
curl -fsSLO https://www.sigilsec.ai/install.sh
sh install.sh
```

### Manual Installation

**macOS (Apple Silicon):**
```bash
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/sigil-macos-arm64.tar.gz
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/SHA256SUMS.txt
sha256sum -c --ignore-missing SHA256SUMS.txt
tar -xzf sigil-macos-arm64.tar.gz
sudo mv sigil /usr/local/bin/
```

**macOS (Intel):**
```bash
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/sigil-macos-x64.tar.gz
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/SHA256SUMS.txt
sha256sum -c --ignore-missing SHA256SUMS.txt
tar -xzf sigil-macos-x64.tar.gz
sudo mv sigil /usr/local/bin/
```

**Linux (x64):**
```bash
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/sigil-linux-x64.tar.gz
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/SHA256SUMS.txt
sha256sum -c --ignore-missing SHA256SUMS.txt
tar -xzf sigil-linux-x64.tar.gz
sudo mv sigil /usr/local/bin/
```

**Linux (ARM64):**
```bash
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/sigil-linux-arm64.tar.gz
curl -fsSLO https://github.com/NOMARJ/sigil/releases/download/v1.3.3/SHA256SUMS.txt
sha256sum -c --ignore-missing SHA256SUMS.txt
tar -xzf sigil-linux-arm64.tar.gz
sudo mv sigil /usr/local/bin/
```

**Windows (x64):**
Download `sigil-windows-x64.zip`, extract, and add to your PATH.

### Verify checksums
```bash
sha256sum -c SHA256SUMS.txt
```


## What's Changed
* fix(release): move embedded packs into the crate for cargo publish; bump 1.3.3 by @nomark-dev in https://github.com/NOMARJ/sigil/pull/145


**Full Changelog**: https://github.com/NOMARJ/sigil/compare/v1.3.2...v1.3.3
