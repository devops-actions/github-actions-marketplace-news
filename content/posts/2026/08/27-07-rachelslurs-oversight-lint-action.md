---
title: Oversight Lint
date: 2026-08-27 07:56:31 +00:00
tags:
  - rachelslurs
  - GitHub Actions
draft: false
repo: https://github.com/rachelslurs/oversight-lint-action
marketplace: https://github.com/marketplace/actions/oversight-lint
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action runs `oversight-lint` to lint a Storybook MCP components manifest and surface findings as annotations on pull requests. It fails the build when it detects missing component descriptions in the manifest, ensuring that regressions are caught at CI. The action also supports configuring linting rules through an `oversight.config.json` file or via input parameters, including options for setting a maximum number of warnings and enabling extractor drift checking.
---


Version updated for **https://github.com/rachelslurs/oversight-lint-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oversight-lint) to find the latest changes.

## Action Summary

The GitHub Action runs `oversight-lint` to lint a Storybook MCP components manifest and surface findings as annotations on pull requests. It fails the build when it detects missing component descriptions in the manifest, ensuring that regressions are caught at CI. The action also supports configuring linting rules through an `oversight.config.json` file or via input parameters, including options for setting a maximum number of warnings and enabling extractor drift checking.

## What's Changed

Runs `oversight-lint@0.7.1`, gated by this repository's canary. Override with the `version` input.
