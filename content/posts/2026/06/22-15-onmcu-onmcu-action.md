---
title: Run on OnMCU
date: 2026-06-22 15:59:22 +00:00
tags:
  - onmcu
  - GitHub Actions
draft: false
repo: https://github.com/onmcu/onmcu-action
marketplace: https://github.com/marketplace/actions/run-on-onmcu
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/onmcu/onmcu-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-on-onmcu) to find the latest changes.

## What's Changed

First release of the **Run on OnMCU** GitHub Action.

Flash and run firmware on real MCU hardware via [OnMCU](https://onmcu.com)
directly from your CI workflow. The job fails if the hardware run fails,
cancels, or times out — so a red pipeline means the firmware didn't run
cleanly on the board.

### Usage

```yaml
- uses: actions/checkout@v4
- uses: onmcu/onmcu-action@v1
  with:
    board: NUCLEO-H743ZI
    file: target/thumbv7em-none-eabihf/release/my-firmware
    api-key: ${{ secrets.ONMCU_API_KEY }}
```

  Features

  - Composite action, no container or extra runtime required.
  - Installs the OnMCU CLI automatically; pin a specific version (e.g.
  0.0.1) or track latest.
  - Skips reinstall when a matching CLI is already on PATH.
  - Secret-based auth via api-key.
