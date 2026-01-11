---
title: Holon Runner
date: 2026-01-11 13:20:09 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.10.0
dependentsNumber: "2"
---


Version updated for **https://github.com/holon-run/holon** to version **v0.10.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a GitHub Action and CLI tool that automates the process of turning GitHub issues into pull request-ready patches, summaries, and standardized artifacts. It eliminates the need for manual intervention by running AI coding agents headlessly and deterministically, enabling seamless local or CI-based workflows. Key features include sandboxed execution, pluggable agent configurations, and support for creating, updating, and reviewing code changes efficiently.

## Release notes

## Holon CLI v0.10.0

### Installation

**Homebrew (Recommended for macOS and Linux):**
```bash
brew install holon-run/tap/holon
```

**Download Binary:**

Download the binary for your platform:

**Linux (amd64):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.10.0/holon-linux-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Intel):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.10.0/holon-darwin-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Apple Silicon):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.10.0/holon-darwin-arm64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

### Verify Checksum
```bash
sha256sum -c checksums.txt
```

### Upgrading

**Homebrew:**
```bash
brew update && brew upgrade holon-run/tap/holon
```

**Binary:**
Re-download the latest binary and replace the existing one.

---
**For maintainers:** The updated Homebrew formula is available as a workflow artifact. Download it and commit to [holon-run/homebrew-tap](https://github.com/holon-run/homebrew-tap).


## What's Changed
* Fix: Run solve preflight before workspace prep by @holonbot[bot] in https://github.com/holon-run/holon/pull/466
* Fix: examples/workflows/holon-trigger.yml update by @holonbot[bot] in https://github.com/holon-run/holon/pull/468
* Fix: Phase 0: Add --skill infrastructure by @holonbot[bot] in https://github.com/holon-run/holon/pull/473
* Fix: Allow holon-solve workflow to choose runner (self-hosted/larger) by @holonbot[bot] in https://github.com/holon-run/holon/pull/476
* Fix: Ensure Docker daemon in holon-solve workflow by @holonbot[bot] in https://github.com/holon-run/holon/pull/480
* Fix: Remove markdown issue/review context files to avoid duplication by @holonbot[bot] in https://github.com/holon-run/holon/pull/483
* Clarify prompt requirements synthesis by @jolestar in https://github.com/holon-run/holon/pull/484
* Fix: Fix GitHub actor identity resolution for App tokens by @holonbot[bot] in https://github.com/holon-run/holon/pull/486
* Fix: Bundle Claude Code runtime inside agent bundle (remove runtime install) by @holonbot[bot] in https://github.com/holon-run/holon/pull/489
* Fix: Update builtin agent to agent-claude-v0.10.0 by @holonbot[bot] in https://github.com/holon-run/holon/pull/491


**Full Changelog**: https://github.com/holon-run/holon/compare/v0.9.0...v0.10.0
