---
title: Safer Runner Action
date: 2025-12-18 21:17:42 +00:00
tags:
  - portswigger-tim
  - GitHub Actions
draft: false
repo: https://github.com/portswigger-tim/safer-runner-action
marketplace: https://github.com/marketplace/actions/safer-runner-action
version: v1.2.0
dependentsNumber: "2"
---


Version updated for **https://github.com/portswigger-tim/safer-runner-action** to version **v1.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/safer-runner-action) to find the latest changes.

## Release notes

## What's New

### Configurable DNS Server Support

This release adds support for custom DNS servers, allowing users to choose their preferred DNS provider while maintaining the same security guarantees.

#### New Inputs

- **`primary-dns-server`**: Primary DNS server for allowed domains (defaults to Quad9: `9.9.9.9`)
- **`secondary-dns-server`**: Secondary DNS server for redundancy (defaults to Quad9 secondary: `149.112.112.112`)

#### Example Usage

```yaml
- uses: portswigger-tim/safer-runner-action@v1.2.0
  with:
    mode: enforce
    allowed-domains: 'npmjs.org pypi.org'
    primary-dns-server: '1.1.1.1'      # Cloudflare DNS
    secondary-dns-server: '1.0.0.1'    # Cloudflare secondary
```

#### Technical Details

- Firewall rules updated to allow DNS traffic only from the dnsmasq user to configured servers
- Both DNSmasq and iptables configurations use the same DNS server parameters
- Maintains security isolation while providing flexibility

## Full Changelog

**Commits since v1.1.2:**
- ad1b998: Add configurable DNS server support

**Files Changed:**
- 9 files changed, 1,133 insertions(+), 44 deletions(-)
