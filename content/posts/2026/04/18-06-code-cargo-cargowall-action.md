---
title: CargoWall eBPF Firewall
date: 2026-04-18 06:28:29 +00:00
tags:
  - code-cargo
  - GitHub Actions
draft: false
repo: https://github.com/code-cargo/cargowall-action
marketplace: https://github.com/marketplace/actions/cargowall-ebpf-firewall
version: v1.1.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/code-cargo/cargowall-action** to version **v1.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargowall-ebpf-firewall) to find the latest changes.

## Action Summary

The CargoWall GitHub Action provides an eBPF-based network firewall for GitHub Actions runners, enabling kernel-level filtering of outbound network connections during CI/CD workflows. It enhances security by preventing supply chain attacks, blocking unauthorized data exfiltration, and controlling egress traffic based on customizable rules for hostnames, IP ranges, and DNS queries. Key features include Docker compatibility, DNS tunneling prevention, and optional sudo access restriction, ensuring robust and secure workflow execution.

## What's Changed

## What's Changed
* #41 Update Cargowall to`v1.1.0` by @matthewdevenny in https://github.com/code-cargo/cargowall-action/pull/42
  * Adds support for wildcarding of hostnames


**Full Changelog**: https://github.com/code-cargo/cargowall-action/compare/v1.0.2...v1.1.0
