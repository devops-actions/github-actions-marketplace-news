---
title: SiliconRig HIL
date: 2026-07-08 06:28:22 +00:00
tags:
  - siliconrig
  - GitHub Actions
draft: false
repo: https://github.com/siliconrig/action
marketplace: https://github.com/marketplace/actions/siliconrig-hil
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/siliconrig/action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/siliconrig-hil) to find the latest changes.

## What's Changed

First Marketplace release of the SiliconRig HIL action.

Flash firmware to a real embedded board (ESP32-S3, STM32H753, STM32F446, RP2350), capture serial output, and fail the workflow when the hardware run fails. Handles the full session lifecycle including cleanup on job failure.

Usage:
```yaml
- uses: siliconrig/action@v1
  with:
    api-key: ${{ secrets.SRIG_API_KEY }}
    board: esp32-s3
    firmware: build/firmware.bin
```

Docs: https://siliconrig.dev/docs/guides/github-actions
