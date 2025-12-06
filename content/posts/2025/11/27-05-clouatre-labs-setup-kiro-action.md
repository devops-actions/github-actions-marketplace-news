---
title: Setup Kiro CLI
date: 2025-11-27 05:13:23 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/setup-kiro-action
marketplace: https://github.com/marketplace/actions/setup-kiro-cli
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/clouatre-labs/setup-kiro-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-kiro-cli) to find the latest changes.

## Release notes

## Setup Kiro CLI Action

GitHub Action to install and cache [Kiro CLI](https://kiro.dev/docs/cli/) for use in workflows.

### Features

- Automatic caching of Kiro CLI binaries
- SIGV4 authentication for headless CI/CD
- SHA256 checksum verification
- Weekly version updates via manifest.json

### Usage

```yaml
- uses: clouatre-labs/setup-kiro-action@v1
  with:
    enable-sigv4: true
    aws-region: us-east-1

- run: kiro-cli-chat chat --no-interactive "Your prompt here"
```

### Migration from Q CLI

| Q CLI | Kiro CLI |
|-------|----------|
| `clouatre-labs/setup-q-cli-action@v1` | `clouatre-labs/setup-kiro-action@v1` |
| `qchat chat --no-interactive` | `kiro-cli-chat chat --no-interactive` |

See [README.md](https://github.com/clouatre-labs/setup-kiro-action#readme) for full documentation.
