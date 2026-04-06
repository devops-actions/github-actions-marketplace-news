---
title: Bulki Image Optimizer
date: 2026-04-06 21:42:36 +00:00
tags:
  - PuntoyComaTech
  - GitHub Actions
draft: false
repo: https://github.com/PuntoyComaTech/bulki-action
marketplace: https://github.com/marketplace/actions/bulki-image-optimizer
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PuntoyComaTech/bulki-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bulki-image-optimizer) to find the latest changes.

## Action Summary

The **Bulki Image Optimizer Action** automates image optimization in GitHub workflows by compressing, resizing, and converting images into formats like JPEG, PNG, WebP, GIF, and AVIF. It helps streamline CI/CD pipelines by reducing image size, enforcing size limits, and ensuring optimized assets for deployment without requiring external API keys. Key capabilities include format conversion, quality adjustment, resizing, and size budget enforcement to block oversized assets in pull requests.

## What's Changed

 Compress, resize, and convert images in your CI/CD pipeline.

  - Supports JPEG, PNG, WebP, GIF (animated), and AVIF
  - Size budget enforcement with `max-size` — block PRs with oversized images
  - Powered by Sharp/libvips — 4-5x faster than ImageMagick
  - Free, no API keys

  Usage:

  ```yaml
  - uses: PuntoyComaTech/bulki-action@v1
    with:
      path: './public/images'
      format: 'webp'
      quality: '80'
