---
title: ZPL Regression Gate
date: 2026-08-23 06:08:31 +00:00
tags:
  - Markloev
  - GitHub Actions
draft: false
repo: https://github.com/Markloev/zpl-regression-gate
marketplace: https://github.com/marketplace/actions/zpl-regression-gate
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  ZPL Regression Gate is a GitHub Action that automates the detection of unintended changes in Zebra Programming Language (ZPL) label formats. It compares approved semantic and PNG baselines with current renderings to identify discrepancies, ensuring consistent and expected label outputs before they reach a warehouse or printer queue. The action provides actionable feedback on changed fields, barcodes, coordinates, font commands, dimensions, diagnostics, or rendered pixels, enabling developers to catch and fix issues early in the development cycle.
---


Version updated for **https://github.com/Markloev/zpl-regression-gate** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zpl-regression-gate) to find the latest changes.

## Action Summary

ZPL Regression Gate is a GitHub Action that automates the detection of unintended changes in Zebra Programming Language (ZPL) label formats. It compares approved semantic and PNG baselines with current renderings to identify discrepancies, ensuring consistent and expected label outputs before they reach a warehouse or printer queue. The action provides actionable feedback on changed fields, barcodes, coordinates, font commands, dimensions, diagnostics, or rendered pixels, enabling developers to catch and fix issues early in the development cycle.

## What's Changed

## Passive discovery and documentation

- Adds a complete guide for testing ZPL labels in GitHub Actions.
- Shows a real semantic failure, current render, and red-pixel visual diff directly in the README.
- Adds reproducible demo inputs and a structured example report.
- Improves npm description and exact-intent keywords for ZPL and Zebra label testing.
- Keeps the clean npm 12 installation introduced in v0.2.0.

```bash
npm install --save-dev zpl-regression-gate@0.2.1
```
