---
title: Nowline Roadmap Builder
date: 2026-05-29 06:41:30 +00:00
tags:
  - lolay
  - GitHub Actions
draft: false
repo: https://github.com/lolay/nowline-action
marketplace: https://github.com/marketplace/actions/nowline-roadmap-builder
version: v0.4.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lolay/nowline-action** to version **v0.4.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nowline-roadmap-builder) to find the latest changes.

## Action Summary

The `@nowline/action` GitHub Action automates the rendering of Nowline roadmap diagrams during CI workflows, supporting two modes: rendering standalone `.nowline` files to SVG or PNG (File mode) or processing Markdown files to render diagrams from `nowline` code blocks and inserting image references (Markdown mode). It solves issues with platforms that strip `<script>` tags (e.g., GitHub READMEs) by generating static images, outputs the paths of rendered files, and allows further actions like auto-committing or creating pull requests to manage changes.

## What's Changed

This release builds `@nowline/action` from [`lolay/nowline@v0.4.2`](https://github.com/lolay/nowline/releases/tag/v0.4.2). Full release notes live there.

Pin `uses: lolay/nowline-action@v0.4.2` for fully reproducible builds, or `@v0` to track the latest v0.x patch automatically.
