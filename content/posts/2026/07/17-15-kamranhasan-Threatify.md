---
title: Threatify Scan
date: 2026-07-17 15:01:37 +00:00
tags:
  - kamranhasan
  - GitHub Actions
draft: false
repo: https://github.com/kamranhasan/Threatify
marketplace: https://github.com/marketplace/actions/threatify-scan
version: 0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Threatify is a static analysis tool that generates a capability graph from an AI agent's configuration and identifies potential attack paths. It helps in detecting hidden vulnerabilities such as LETHAL_TRIFECTA and ATTACK_PATHs, which can be used for exfiltration or unauthorized access. The tool runs offline, analyzing the configuration file alone without relying on external APIs or network calls.
---


Version updated for **https://github.com/kamranhasan/Threatify** to version **0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/threatify-scan) to find the latest changes.

## Action Summary

Threatify is a static analysis tool that generates a capability graph from an AI agent's configuration and identifies potential attack paths. It helps in detecting hidden vulnerabilities such as LETHAL_TRIFECTA and ATTACK_PATHs, which can be used for exfiltration or unauthorized access. The tool runs offline, analyzing the configuration file alone without relying on external APIs or network calls.

## What's Changed

Scans AI agent configs on every PR and blocks merges that introduce a new reachable exfiltration or privileged-action path.
