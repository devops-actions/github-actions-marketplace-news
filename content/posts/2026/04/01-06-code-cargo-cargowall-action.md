---
title: CargoWall eBPF Firewall
date: 2026-04-01 06:17:14 +00:00
tags:
  - code-cargo
  - GitHub Actions
draft: false
repo: https://github.com/code-cargo/cargowall-action
marketplace: https://github.com/marketplace/actions/cargowall-ebpf-firewall
version: v1.0.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/code-cargo/cargowall-action** to version **v1.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargowall-ebpf-firewall) to find the latest changes.

## Action Summary

CargoWall GitHub Action provides an eBPF-based network firewall for GitHub Actions runners, enabling secure CI/CD workflows by monitoring and controlling outbound connections at the kernel level. It automates egress filtering to prevent supply chain attacks, block data exfiltration, and enforce network security policies using hostname, CIDR, and DNS tunneling filters, while also supporting Docker environments and optional sudo lockdown for enhanced protection. This action ensures high-performance security and offers audit capabilities to help users analyze network dependencies before enforcing rules.

## What's Changed

## What's Changed
* #33 Make `actions: read` optional on private repositories by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/34
* #35 Remove  OIDC audience parameter (defaults to `codecargo`) by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/34
* #36 Updates the processing of the runner `_diag` directory to consider the runner version if present by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/34

CargoWall 
- release is still at `v1.0.0`


**Full Changelog**: https://github.com/code-cargo/cargowall-action/compare/v1.0.0...v1.0.1
