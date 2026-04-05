---
title: spek - OpenSpec Static Site
date: 2026-04-05 22:00:17 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

The **spek GitHub Action** provides a lightweight, read-only viewer for OpenSpec content, enabling structured browsing of specifications, changes, and tasks. It eliminates the need to manually parse raw Markdown files by offering a navigable interface with features like BDD syntax highlighting, task progress tracking, revision history, and full-text search. Available as a web app, VS Code extension, and IntelliJ plugin, it operates locally without requiring server deployment or data sharing, streamlining the review and management of OpenSpec documentation.

## What's Changed

## 1.0.1

- Add SVG badge generation (specs count, open changes, tasks status) to GitHub Action and release workflow
- Fix CI publish triggers to only match semver tags (avoid triggering on v1 floating tag)
