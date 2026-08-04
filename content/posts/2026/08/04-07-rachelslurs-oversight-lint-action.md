---
title: Oversight Lint
date: 2026-08-04 07:20:53 +00:00
tags:
  - rachelslurs
  - GitHub Actions
draft: false
repo: https://github.com/rachelslurs/oversight-lint-action
marketplace: https://github.com/marketplace/actions/oversight-lint
version: v1.1.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates linting of Storybook MCP components to ensure component documentation is present. It fails the build if any components are missing documentation, helping catch regressions early in the development cycle. The action reads the built components JSON from a manifest and compares it against expected documentation using rules defined in `oversight.config.json`.
---


Version updated for **https://github.com/rachelslurs/oversight-lint-action** to version **v1.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oversight-lint) to find the latest changes.

## Action Summary

This GitHub Action automates linting of Storybook MCP components to ensure component documentation is present. It fails the build if any components are missing documentation, helping catch regressions early in the development cycle. The action reads the built components JSON from a manifest and compares it against expected documentation using rules defined in `oversight.config.json`.

## What's Changed

Runs `oversight-lint@0.6.2`, gated by this repository's canary. Override with the `version` input.
