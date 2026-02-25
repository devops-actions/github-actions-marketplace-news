---
title: KEIP - Install-time network enforcement
date: 2026-02-25 13:26:41 +00:00
tags:
  - Otsmane-Ahmed
  - GitHub Actions
draft: false
repo: https://github.com/Otsmane-Ahmed/keip-action
marketplace: https://github.com/marketplace/actions/keip-install-time-network-enforcement
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Otsmane-Ahmed/keip-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/keip-install-time-network-enforcement) to find the latest changes.

## Action Summary

The KEIP Action is a GitHub Action designed to block unauthorized or malicious `pip install` network egress by leveraging eBPF LSM (Linux Security Module) hooks. It automates the detection and prevention of potentially harmful package installations, enhancing security for Python-based workflows.

## Release notes

Initial release of KEIP Action.

Blocks malicious `pip install` egress during CI/CD using eBPF LSM hooks.
Kills any outbound connection from pip that isn't destined for PyPI.

Requires: ubuntu-latest runner (kernel 5.8+ with BTF support).
