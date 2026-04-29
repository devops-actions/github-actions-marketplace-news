---
title: Holon Runner
date: 2026-04-29 14:42:40 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.12.0
dependentsNumber: "0"
---


Version updated for **https://github.com/holon-run/holon** to version **v0.12.0**.

- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a local-first AI agent runtime designed to facilitate long-running tasks in local workspaces by enabling agents to manage state, execute commands, and respond to changes over time. It automates the orchestration of background tasks, workspace state management, and agent lifecycle, providing capabilities such as file manipulation, repository work, task queuing, and operator-facing results. Holon is particularly suited for scenarios requiring persistent agent execution while maintaining trust boundaries and explicit task continuity.

## What's Changed

## Holon CLI v0.12.0

### Installation

**Homebrew (Recommended for macOS and Linux):**
```bash
brew install holon-run/tap/holon
```

**Download Binary:**

Download the binary for your platform:

**Linux (amd64):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.12.0/holon-linux-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Intel):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.12.0/holon-darwin-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Apple Silicon):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.12.0/holon-darwin-arm64.tar.gz | tar -xz
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
* Refactor GitHub skills away from ghx script dependencies by @jolestar in https://github.com/holon-run/holon/pull/753


**Full Changelog**: https://github.com/holon-run/holon/compare/v0.11.0...v0.12.0
