---
title: CircuitShield ZK Release Guard
date: 2026-06-17 07:33:59 +00:00
tags:
  - MohdKamranAlam
  - GitHub Actions
draft: false
repo: https://github.com/MohdKamranAlam/circuitshield-zk
marketplace: https://github.com/marketplace/actions/circuitshield-zk-release-guard
version: v0.2.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/MohdKamranAlam/circuitshield-zk** to version **v0.2.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/circuitshield-zk-release-guard) to find the latest changes.

## What's Changed

## CircuitShield v0.2.5

### GitHub Marketplace Release

CircuitShield ZK Release Guard is now available for GitHub Actions workflows.

### Highlights

- Detects risky post-audit drift in Circom/ZK repositories.
- Checks circuits, verifier bindings, invariants, dependencies, and proving artifacts.
- Compares repository changes against a trusted audited baseline.
- Produces CI-ready PASS, REVIEW, or BLOCK decisions.
- Supports pull-request and release security gates.

### Usage

```yaml
- name: Run CircuitShield ZK Release Guard
  uses: MohdKamranAlam/circuitshield-zk@v0.2.5
