---
title: Matrix Generator
date: 2026-04-15 22:02:25 +00:00
tags:
  - skgandikota
  - GitHub Actions
draft: false
repo: https://github.com/skgandikota/SetMatrix
marketplace: https://github.com/marketplace/actions/matrix-generator
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skgandikota/SetMatrix** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/matrix-generator) to find the latest changes.

## Action Summary

The SetMatrix GitHub Action dynamically generates JSON matrices for use in GitHub Actions workflows. It automates the creation of complex matrix configurations by accepting input in various formats (e.g., comma-separated values, JSON arrays, or files) and supports advanced filtering, inclusion, and exclusion of matrix combinations. This simplifies the setup and customization of matrix strategies, enabling efficient multi-environment or multi-parameter testing.

## What's Changed

## DySetMatrix v1.0.0
Dynamically generate matrix JSON for GitHub Actions matrix strategy from inputs, files, or JSON arrays.

### Features

- Comma-separated values, JSON arrays, or JSON files
- Filter expressions (os!=windows, node>=18)
- Include/exclude combinations
- Output ready for fromJSON() in matrix strategy

### Usage
```yml
- id: matrix
  uses: skgandikota/SetMatrix@v1
  with:
    values: "ubuntu-latest,macos-latest,windows-latest"
    name: "os"

# Then: matrix: ${{ fromJSON(steps.matrix.outputs.matrix) }}



