---
title: CargoWall eBPF Firewall
date: 2026-04-24 05:57:38 +00:00
tags:
  - code-cargo
  - GitHub Actions
draft: false
repo: https://github.com/code-cargo/cargowall-action
marketplace: https://github.com/marketplace/actions/cargowall-ebpf-firewall
version: v1.1.1
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/code-cargo/cargowall-action** to version **v1.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargowall-ebpf-firewall) to find the latest changes.

## Action Summary

The CargoWall GitHub Action is an eBPF-based network firewall designed to secure GitHub Actions workflows by monitoring and controlling outbound connections during CI/CD runs. It automates tasks like hostname and IP filtering, DNS tunneling prevention, and Docker integration to prevent supply chain attacks, block unauthorized data exfiltration, and enforce network egress rules at the kernel level. Key capabilities include high-performance filtering, customizable allow/deny lists, and optional API integration for enhanced auditing and control.

## What's Changed

## What's Changed
* CodeCargo: update actions/checkout to v6.0.2 by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/43
* #44 stop using gh cli to download binary by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/45
    *  Reduces api.github.com calls from 4 to 1 - provides option to disable entirely with `skip-actions-api: 'true'` option


**Full Changelog**: https://github.com/code-cargo/cargowall-action/compare/v1.1.0...v1.1.1
