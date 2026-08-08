---
title: Oversight Lint
date: 2026-08-08 14:32:24 +00:00
tags:
  - rachelslurs
  - GitHub Actions
draft: false
repo: https://github.com/rachelslurs/oversight-lint-action
marketplace: https://github.com/marketplace/actions/oversight-lint
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates linting of Storybook MCP components manifest files using the `oversight-lint` tool. It checks that each component has comprehensive documentation, failing the build if any components are missing descriptions or have incomplete docgen content. The action integrates with the `storybook-addon-oversight` for real-time documentation surfaces in Storybook during development.
---


Version updated for **https://github.com/rachelslurs/oversight-lint-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oversight-lint) to find the latest changes.

## Action Summary

This GitHub Action automates linting of Storybook MCP components manifest files using the `oversight-lint` tool. It checks that each component has comprehensive documentation, failing the build if any components are missing descriptions or have incomplete docgen content. The action integrates with the `storybook-addon-oversight` for real-time documentation surfaces in Storybook during development.

## What's Changed

Runs `oversight-lint@0.7.0`, gated by this repository's canary. Override with the `version` input.
