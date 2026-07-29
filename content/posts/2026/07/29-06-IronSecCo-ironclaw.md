---
title: IronClaw sandbox scan
date: 2026-07-29 06:56:28 +00:00
tags:
  - IronSecCo
  - GitHub Actions
draft: false
repo: https://github.com/IronSecCo/ironclaw
marketplace: https://github.com/marketplace/actions/ironclaw-sandbox-scan
version: v0.1.411
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  IronClaw is a self-hosted AI agent sandbox action that runs autonomous models on infrastructure you control, ensuring they cannot access sensitive data or modify themselves. It uses a sealed sandbox to prevent any unauthorized communication with the host machine. The action can be configured to scan containers, compose services, or Kubernetes manifests for security vulnerabilities and provides a 0-100 scorecard in GitHub Actions to assess the isolation of these agents.
---


Version updated for **https://github.com/IronSecCo/ironclaw** to version **v0.1.411**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ironclaw-sandbox-scan) to find the latest changes.

## Action Summary

IronClaw is a self-hosted AI agent sandbox action that runs autonomous models on infrastructure you control, ensuring they cannot access sensitive data or modify themselves. It uses a sealed sandbox to prevent any unauthorized communication with the host machine. The action can be configured to scan containers, compose services, or Kubernetes manifests for security vulnerabilities and provides a 0-100 scorecard in GitHub Actions to assess the isolation of these agents.

## What's Changed

Automated release for commit `3c87a8a0c60059b2ad181a02554fe58541ec3167`.

### Install (macOS / Linux)

```sh
curl -fsSL https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.sh | sh
```

### Install (Windows, PowerShell)

```powershell
irm https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.ps1 | iex
```

To pin this version, set `IRONCLAW_VERSION=v0.1.411` before running the installer.

Archives are attached below; verify them against `SHA256SUMS`.

