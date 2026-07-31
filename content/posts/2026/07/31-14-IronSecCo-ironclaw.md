---
title: IronClaw sandbox scan
date: 2026-07-31 14:57:47 +00:00
tags:
  - IronSecCo
  - GitHub Actions
draft: false
repo: https://github.com/IronSecCo/ironclaw
marketplace: https://github.com/marketplace/actions/ironclaw-sandbox-scan
version: v0.1.468
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  IronClaw is a self-hosted sandboxed AI agent that runs on infrastructure you control, providing a secure and controlled environment for using autonomous agents. The action automates the process of evaluating the sandbox isolation score for containers or services by running them in an isolated container with network access restricted to the host proxy. This ensures that the agent cannot change its own configuration or communicate outside the sandbox, enhancing security and trust.
---


Version updated for **https://github.com/IronSecCo/ironclaw** to version **v0.1.468**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ironclaw-sandbox-scan) to find the latest changes.

## Action Summary

IronClaw is a self-hosted sandboxed AI agent that runs on infrastructure you control, providing a secure and controlled environment for using autonomous agents. The action automates the process of evaluating the sandbox isolation score for containers or services by running them in an isolated container with network access restricted to the host proxy. This ensures that the agent cannot change its own configuration or communicate outside the sandbox, enhancing security and trust.

## What's Changed

Automated release for commit `f91c532cdcbfd398f5eeb6825755f446d8074356`.

### Install (macOS / Linux)

```sh
curl -fsSL https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.sh | sh
```

### Install (Windows, PowerShell)

```powershell
irm https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.ps1 | iex
```

To pin this version, set `IRONCLAW_VERSION=v0.1.468` before running the installer.

Archives are attached below; verify them against `SHA256SUMS`.

