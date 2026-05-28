---
title: CargoWall eBPF Firewall
date: 2026-05-28 06:43:53 +00:00
tags:
  - code-cargo
  - GitHub Actions
draft: false
repo: https://github.com/code-cargo/cargowall-action
marketplace: https://github.com/marketplace/actions/cargowall-ebpf-firewall
version: v1.3.0
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/code-cargo/cargowall-action** to version **v1.3.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargowall-ebpf-firewall) to find the latest changes.

## Action Summary

CargoWall GitHub Action is an eBPF-based firewall designed to secure CI/CD workflows by monitoring and controlling outbound network connections during GitHub Actions runs. It automates network egress filtering, preventing supply chain attacks, data exfiltration, and unauthorized connections at the kernel level. Key capabilities include hostname and CIDR-based filtering, DNS tunneling prevention, Docker integration, and graceful handling of environments without eBPF support.

## What's Changed

## What's Changed
* Update to cargowall v1.3.0 + expose search-domains by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/50
* Fix false "CargoWall failed to start" under v1.3.0 (--pidfile/readiness) by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/51
* Use v1.3.0 by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/53


**Full Changelog**: https://github.com/code-cargo/cargowall-action/compare/v1.2.0...v1.3.0
