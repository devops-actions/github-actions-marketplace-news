---
title: IronClaw sandbox scan
date: 2026-07-29 15:14:45 +00:00
tags:
  - IronSecCo
  - GitHub Actions
draft: false
repo: https://github.com/IronSecCo/ironclaw
marketplace: https://github.com/marketplace/actions/ironclaw-sandbox-scan
version: v0.1.419
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  IronClaw is a self-hosted AI agent that runs in a sandbox, providing security and trust by isolating the agent from its host environment. It automates the process of scanning containers or Kubernetes manifests to evaluate their isolation properties, ensuring they adhere to security best practices. The action supports verifying releases with cosign, SBOM (Software Bill of Materials), and SLSA (Source Lineage Security Assertion) provenance.
---


Version updated for **https://github.com/IronSecCo/ironclaw** to version **v0.1.419**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ironclaw-sandbox-scan) to find the latest changes.

## Action Summary

IronClaw is a self-hosted AI agent that runs in a sandbox, providing security and trust by isolating the agent from its host environment. It automates the process of scanning containers or Kubernetes manifests to evaluate their isolation properties, ensuring they adhere to security best practices. The action supports verifying releases with cosign, SBOM (Software Bill of Materials), and SLSA (Source Lineage Security Assertion) provenance.

## What's Changed

Automated release for commit `7b653737ccb5d45d630e908db156d851e54c8e8f`.

### Install (macOS / Linux)

```sh
curl -fsSL https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.sh | sh
```

### Install (Windows, PowerShell)

```powershell
irm https://raw.githubusercontent.com/IronSecCo/ironclaw/main/scripts/install.ps1 | iex
```

To pin this version, set `IRONCLAW_VERSION=v0.1.419` before running the installer.

Archives are attached below; verify them against `SHA256SUMS`.

