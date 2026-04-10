---
title: Setup WARP
date: 2026-04-10 14:11:57 +00:00
tags:
  - viperadnan-git
  - GitHub Actions
draft: false
repo: https://github.com/viperadnan-git/setup-warp
marketplace: https://github.com/marketplace/actions/setup-warp
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/viperadnan-git/setup-warp** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-warp) to find the latest changes.

## Action Summary

The "Setup WARP" GitHub Action configures Cloudflare WARP on GitHub Actions runners to route all traffic, including Docker container traffic, through Cloudflare's secure network. It automates tasks such as tunnel setup, connectivity verification, DNS configuration, and Docker networking adjustments, ensuring secure traffic routing with retries and error handling. This action simplifies network security for CI/CD workflows by providing reliable dual-stack (IPv4/IPv6) support and seamless integration with Docker environments.

## What's Changed

## Setup WARP v1

GitHub Action to set up [Cloudflare WARP](https://developers.cloudflare.com/warp-client/) on GitHub Actions runners.

### Features
- **Client mode** (recommended) — fresh WARP credentials per run
- **WireGuard mode** — lightweight alternative with pre-configured tunnel
- **Docker support** — containers automatically route through WARP
- **Automatic retries** with exponential backoff
- **Connectivity verification** — confirms `warp=on` before proceeding
- **Dual-stack** — IPv4, IPv6, or both

### Usage

```yaml
- uses: viperadnan-git/setup-warp@v1
```

### Inputs

| Input | Description | Default |
|-------|-------------|---------|
| `mode` | `client` or `wireguard` | `client` |
| `stack` | `ipv4`, `ipv6`, or `dual` | `dual` |
| `retries` | Number of retry attempts | `3` |
| `configure_docker` | Route Docker containers through WARP | `true` |

See [README](https://github.com/viperadnan-git/setup-warp#readme) for full documentation.
