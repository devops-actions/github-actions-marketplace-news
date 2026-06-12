---
title: Sigil Security Scan
date: 2026-06-12 15:22:28 +00:00
tags:
  - NOMARJ
  - GitHub Actions
draft: false
repo: https://github.com/NOMARJ/sigil
marketplace: https://github.com/marketplace/actions/sigil-security-scan
version: v1.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/NOMARJ/sigil** to version **v1.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigil-security-scan) to find the latest changes.

## What's Changed

## Sigil v1.2.1

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
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.1/sigil-macos-arm64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**macOS (Intel):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.1/sigil-macos-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Linux (x64):**
```bash
curl -sSL https://github.com/NOMARJ/sigil/releases/download/v1.2.1/sigil-linux-x64.tar.gz | tar xz
sudo mv sigil /usr/local/bin/
```

**Windows (x64):**
Download `sigil-windows-x64.zip`, extract, and add to your PATH.

### Verify checksums
```bash
sha256sum -c SHA256SUMS.txt
```


**Full Changelog**: https://github.com/NOMARJ/sigil/compare/v1.2.0...v1.2.1
