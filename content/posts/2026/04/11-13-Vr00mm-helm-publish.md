---
title: Helm Chart Publisher for GitHub Pages
date: 2026-04-11 13:39:35 +00:00
tags:
  - Vr00mm
  - GitHub Actions
draft: false
repo: https://github.com/Vr00mm/helm-publish
marketplace: https://github.com/marketplace/actions/helm-chart-publisher-for-github-pages
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Vr00mm/helm-publish** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-chart-publisher-for-github-pages) to find the latest changes.

## Action Summary

The `helm-publish` GitHub Action automates the packaging and publishing of Helm charts to a GitHub Pages-hosted Helm repository. It packages the chart, updates the repository's `index.yaml` (preserving all previous versions), and handles versioning using `Chart.yaml` or custom inputs such as Git tags. This action simplifies Helm chart distribution and ensures seamless version management while addressing conflicts during repository updates.

## What's Changed

## Security fix

Prevent shell injection by passing all action inputs and step outputs as step-level `env:` variables instead of interpolating `${{ inputs.* }}` directly inside `run:` blocks.

Also removed unsafe EXTRA_ARGS string building for the `--version` flag and fixed unquoted `inputs.pages-branch` in `git pull --rebase`.

**Full Changelog**: https://github.com/Vr00mm/helm-publish/compare/v1.0.0...v1.0.1
