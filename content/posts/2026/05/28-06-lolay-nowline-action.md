---
title: Nowline Roadmap Builder
date: 2026-05-28 06:43:30 +00:00
tags:
  - lolay
  - GitHub Actions
draft: false
repo: https://github.com/lolay/nowline-action
marketplace: https://github.com/marketplace/actions/nowline-roadmap-builder
version: v0.4.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lolay/nowline-action** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nowline-roadmap-builder) to find the latest changes.

## Action Summary

The `@nowline/action` GitHub Action automates the rendering of Nowline roadmap diagrams into SVG or PNG format during CI workflows. It supports two modes: rendering individual `.nowline` files (file mode) or processing markdown files to render and embed diagrams from ` ```nowline ` code blocks (markdown mode). This action addresses the limitation of platforms that strip `<script>` tags, providing a mechanism to generate static diagram images and ensuring they are updated consistently, with the option to chain further actions for committing changes or creating pull requests.

## What's Changed

This release builds `@nowline/action` from [`lolay/nowline@v0.4.1`](https://github.com/lolay/nowline/releases/tag/v0.4.1). Full release notes live there.

Pin `uses: lolay/nowline-action@v0.4.1` for fully reproducible builds, or `@v0` to track the latest v0.x patch automatically.
