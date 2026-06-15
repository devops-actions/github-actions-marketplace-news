---
title: CircuitShield
date: 2026-06-15 07:28:27 +00:00
tags:
  - MohdKamranAlam
  - GitHub Actions
draft: false
repo: https://github.com/MohdKamranAlam/circuitshield-zk
marketplace: https://github.com/marketplace/actions/circuitshield
version: v0.2.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/MohdKamranAlam/circuitshield-zk** to version **v0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/circuitshield) to find the latest changes.

## What's Changed

## CircuitShield v0.2.2

README and package-presentation polish for the public npm/GitHub release.

### Highlights
- Reworked the README opening around post-audit drift detection for Circom/ZK systems.
- Clarified install, quick start, GitHub Action usage, audit gates, configuration, reports, validation evidence, and limitations.
- Aligned the GitHub Action usage example with v0.2.2.
- No runtime behavior changes from v0.2.1.

### Install
```bash
npx circuitshield@latest --help
npm install --save-dev circuitshield
```

### GitHub Action
```yaml
- uses: MohdKamranAlam/circuitshield-zk@v0.2.2
  with:
    target: .
    config: circuitshield.yml
    baseline: audited-v1.0.0
    fail-on: manual
```

CircuitShield is a post-audit drift and audit-readiness tool. It does not replace professional auditing or formal verification.
