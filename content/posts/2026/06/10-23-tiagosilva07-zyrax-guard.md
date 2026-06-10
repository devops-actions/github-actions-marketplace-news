---
title: Zyrax Guard
date: 2026-06-10 23:13:57 +00:00
tags:
  - tiagosilva07
  - GitHub Actions
draft: false
repo: https://github.com/tiagosilva07/zyrax-guard
marketplace: https://github.com/marketplace/actions/zyrax-guard
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tiagosilva07/zyrax-guard** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zyrax-guard) to find the latest changes.

## What's Changed

## What's new

Zyrax Guard now plugs straight into CI and installs in one line.

### GitHub Action
Gate every pull request. Drop Guard into a workflow and it checks the dependencies a PR adds. If one is a typosquat, known malware, a hallucinated name, or ships a risky install script, the check fails before it merges. Works with npm, PyPI, and crates.io.

```yaml
- uses: actions/checkout@v4
  with: { fetch-depth: 0 }
- uses: tiagosilva07/zyrax-guard@v0
  with:
    ecosystem: npm        # npm | pypi | crates
```

### One-line install (Linux / macOS)
```bash
curl -fsSL https://raw.githubusercontent.com/tiagosilva07/zyrax-guard/main/scripts/install.sh | sh
```
Downloads the signed binary for your OS/arch and verifies its SHA-256 (and the cosign signature when cosign is on your PATH).

## Verify
Every binary is signed with keyless cosign and SLSA build provenance, and an SPDX SBOM is attached:
```bash
cosign verify-blob --bundle zyrax-guard-linux-amd64.cosign.bundle zyrax-guard-linux-amd64
```

Supersedes v0.6.0 (action description shortened to meet the Marketplace 125-character limit; no CLI behavior change).

