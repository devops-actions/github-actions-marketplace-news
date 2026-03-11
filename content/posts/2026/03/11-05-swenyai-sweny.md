---
title: SWEny AI
date: 2026-03-11 05:53:27 +00:00
tags:
  - swenyai
  - GitHub Actions
draft: false
repo: https://github.com/swenyai/sweny
marketplace: https://github.com/marketplace/actions/sweny-ai
version: sweny-ai/studio1.0.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/swenyai/sweny** to version **@sweny-ai/studio@1.0.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sweny-ai) to find the latest changes.

## Action Summary

SWEny is a platform for building AI-powered engineering workflows that automate tasks such as system monitoring, issue triage, and resolution. It integrates with various tools and data sources to analyze system logs, identify issues, take corrective actions (e.g., creating tickets, opening pull requests), and report findings through multiple communication channels. Its key capabilities include autonomous SRE triage, customizable workflows, and seamless integration with over 30 provider systems for observability, issue tracking, and notifications.

## Release notes

### Patch Changes

-   9940c68: Library build: add sideEffects declaration and source maps.
    -   `"sideEffects": ["dist-lib/style.css"]` prevents bundlers from incorrectly
        tree-shaking the CSS import
    -   `sourcemap: true` in vite.lib.config.ts makes the bundled output debuggable

