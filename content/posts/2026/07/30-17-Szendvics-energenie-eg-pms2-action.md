---
title: EG-PMS2 Control
date: 2026-07-30 17:22:18 +00:00
tags:
  - Szendvics
  - GitHub Actions
draft: false
repo: https://github.com/Szendvics/energenie-eg-pms2-action
marketplace: https://github.com/marketplace/actions/eg-pms2-control
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action provides a containerized wrapper for controlling Gembird / Energenie EG-PMS2 devices, enabling local and remote operations. It includes discovery utilities to list and select devices, as well as composite actions that can be used in workflows to manage power cycles and device status. The action supports various command operations and outputs useful information like the captured command output for debugging purposes.
---


Version updated for **https://github.com/Szendvics/energenie-eg-pms2-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eg-pms2-control) to find the latest changes.

## Action Summary

This GitHub Action provides a containerized wrapper for controlling Gembird / Energenie EG-PMS2 devices, enabling local and remote operations. It includes discovery utilities to list and select devices, as well as composite actions that can be used in workflows to manage power cycles and device status. The action supports various command operations and outputs useful information like the captured command output for debugging purposes.

## What's Changed

Fixes:
- propagate EG-PMS2 command failures from the composite action
- add a regression check that rejects swallowed non-zero exit codes

Recommended reference:
- uses: Szendvics/energenie-eg-pms2-action@v1
