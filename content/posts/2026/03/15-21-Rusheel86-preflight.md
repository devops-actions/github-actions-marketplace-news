---
title: preflight-ml
date: 2026-03-15 21:22:58 +00:00
tags:
  - Rusheel86
  - GitHub Actions
draft: false
repo: https://github.com/Rusheel86/preflight
marketplace: https://github.com/marketplace/actions/preflight-ml
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Rusheel86/preflight** to version **v0.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/preflight-ml) to find the latest changes.

## Action Summary

The **preflight** GitHub Action is a pre-training validation tool for PyTorch pipelines designed to detect common issues like NaNs, label leakage, incorrect channel ordering, and dead gradients before model training begins. By running a series of automated checks in seconds, it helps prevent wasted computational resources and ensures data and model integrity prior to initiating training. This action integrates seamlessly into CI pipelines and fails builds automatically if critical issues are detected.

## Release notes

Initial release of preflight — pre-flight checks for PyTorch pipelines.

## What's included
- 10 checks across fatal/warn/info severity tiers
- NaN/Inf detection, label leakage, shape mismatch, gradient check
- Normalisation sanity, channel ordering, VRAM estimation, class imbalance
- Split sizes, duplicate sample detection
- `.preflight.toml` config file support
- JSON output mode for CI integration

## Usage
\```yaml
- name: Run pre-flight checks
  uses: Rusheel86/preflight@v0.1.1
  with:
    dataloader: scripts/dataloader.py
\```

## Install via pip
\`\`\`
pip install preflight-ml
\`\`\`
