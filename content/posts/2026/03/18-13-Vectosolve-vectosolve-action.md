---
title: VectoSolve - Image to SVG
date: 2026-03-18 13:32:30 +00:00
tags:
  - Vectosolve
  - GitHub Actions
draft: false
repo: https://github.com/Vectosolve/vectosolve-action
marketplace: https://github.com/marketplace/actions/vectosolve-image-to-svg
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Vectosolve/vectosolve-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vectosolve-image-to-svg) to find the latest changes.

## Action Summary

The VectoSolve GitHub Action automates the conversion of raster images (e.g., PNG, JPG, WebP) into scalable SVG vector graphics using AI-powered vectorization. It simplifies workflows by enabling single or batch image processing, supports custom output paths, and integrates seamlessly into CI/CD pipelines. This action is ideal for developers seeking to streamline image vectorization tasks, ensuring clean and scalable graphics for their projects.

## Release notes

## VectoSolve Action v1.0.0

Convert raster images (PNG, JPG, WebP) to clean SVG vector format using AI — directly in your GitHub Actions workflows.

### Usage

```yaml
- uses: vectosolve/vectosolve-action@v1
  with:
    api_key: ${{ secrets.VECTOSOLVE_API_KEY }}
    file_path: ./logo.png
```

### Features
- AI-powered image to SVG conversion
- Works with PNG, JPG, WebP inputs
- Custom output paths
- Credit tracking in action outputs

Get your API key at [vectosolve.com/developers](https://vectosolve.com/developers)
