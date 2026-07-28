---
title: VPS Fleet Audit (vpsguard)
date: 2026-07-28 06:29:00 +00:00
tags:
  - salamancacm
  - GitHub Actions
draft: false
repo: https://github.com/salamancacm/vpsguard-action
marketplace: https://github.com/marketplace/actions/vps-fleet-audit-vpsguard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the security audit of a Linux VPS fleet using the `vpsguard` tool from CI/CD pipelines. It connects to each host via SSH and runs `vpsguard audit`, providing a summary table in the workflow's job summary, failing the job if any finding at or above the specified severity level exists (defaulting to CRIT). The action requires that vpsguard is already installed on all target hosts and provides outputs for critical, warning, and unreachable host counts.
---


Version updated for **https://github.com/salamancacm/vpsguard-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vps-fleet-audit-vpsguard) to find the latest changes.

## Action Summary

This GitHub Action automates the security audit of a Linux VPS fleet using the `vpsguard` tool from CI/CD pipelines. It connects to each host via SSH and runs `vpsguard audit`, providing a summary table in the workflow's job summary, failing the job if any finding at or above the specified severity level exists (defaulting to CRIT). The action requires that vpsguard is already installed on all target hosts and provides outputs for critical, warning, and unreachable host counts.

## What's Changed

## vpsguard-action v1.0.0

Audit your Linux VPS fleet's security posture from CI/CD, using [vpsguard](https://github.com/salamancacm/vpsguard).

```yaml
- uses: salamancacm/vpsguard-action@v1
  with:
    hosts: web-1.example.com,db-1.example.com
    ssh-user: root
    ssh-key: ${{ secrets.VPS_SSH_KEY }}
    ssh-known-hosts: ${{ secrets.VPS_KNOWN_HOSTS }}
    fail-on: CRIT
    
**What it does**

- Installs vpsguard on the runner (checksum-verified against the release it downloads)
- Connects to each host over SSH using your own key — vpsguard never handles credentials itself
- Runs vpsguard audit on every host and aggregates the results
- Writes a summary table to the workflow's job summary
- Fails the job if any finding at or above fail-on's severity is found (default CRIT)
- Exposes crit-count, warn-count, and unreachable-count as outputs

**Requirements**

- vpsguard already installed on every target host (not bootstrapped by this action)
- jq (preinstalled on GitHub-hosted runners)

See the [README](https://github.com/salamancacm/vpsguard-action#readme) for all inputs/outputs.

**Full Changelog**: https://github.com/salamancacm/vpsguard-action/commits/v1.0.0
