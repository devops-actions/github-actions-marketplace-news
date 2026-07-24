---
title: NetBird CLI Connect
date: 2026-07-24 13:56:45 +00:00
tags:
  - NomisCZ
  - GitHub Actions
draft: false
repo: https://github.com/NomisCZ/netbird-cli-action
marketplace: https://github.com/marketplace/actions/netbird-cli-connect
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of connecting to a NetBird network as an ephemeral peer, enabling access to internal services or databases over a secure WireGuard mesh. It allows users to configure various parameters such as setup keys, management URLs, and DNS settings to facilitate seamless connectivity. The action also provides an option to wait for the local NetBird DNS resolver to be ready before proceeding with subsequent steps, which is useful for ensuring proper resolution of private resources.
---


Version updated for **https://github.com/NomisCZ/netbird-cli-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/netbird-cli-connect) to find the latest changes.

## Action Summary

This GitHub Action automates the process of connecting to a NetBird network as an ephemeral peer, enabling access to internal services or databases over a secure WireGuard mesh. It allows users to configure various parameters such as setup keys, management URLs, and DNS settings to facilitate seamless connectivity. The action also provides an option to wait for the local NetBird DNS resolver to be ready before proceeding with subsequent steps, which is useful for ensuring proper resolution of private resources.

## What's Changed

## What's Changed

- Add `dns-hosts` so the action waits until listed hostnames resolve to **private IPs only** (NetBird CGNAT / RFC1918), avoiding public DNS wins that call APIs from outside the mesh (e.g. 403).
- Clarify split-horizon DNS wait behavior in README and action inputs.
- Simplify private-IP checks in `wait-for-dns.sh`.

**Full Changelog**: https://github.com/NomisCZ/netbird-cli-action/compare/v1.0.0...v1.1.0
