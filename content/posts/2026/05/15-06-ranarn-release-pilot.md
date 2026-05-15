---
title: Release Pilot Action
date: 2026-05-15 06:31:52 +00:00
tags:
  - ranarn
  - GitHub Actions
draft: false
repo: https://github.com/ranarn/release-pilot
marketplace: https://github.com/marketplace/actions/release-pilot-action
version: v1.0.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ranarn/release-pilot** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-pilot-action) to find the latest changes.

## Action Summary

Release Pilot is a GitHub Action designed to streamline software release workflows by automating semantic versioning, changelog generation, and GitHub release creation. It parses commits using the Conventional Commits standard, calculates the next version, tags releases, and generates detailed changelogs—all with minimal configuration. This action eliminates the need for multiple tools or scripts, simplifying release management while providing advanced capabilities like pre-release support, floating tags, and breaking change detection.

## What's Changed

## Release Pilot Action — now on the GitHub Marketplace

Semantic versioning, tagging, changelog generation, and GitHub Releases in a single action — powered by Conventional Commits.

### Highlights
- Zero external dependencies (only `@actions/*` and `semver`)
- Automatic patch/minor/major bumping from commit types
- Floating major/minor tags (`v1`, `v1.2`) for action-style versioning
- Changelog generation with grouped sections
- Dry-run mode for CI validation
- Pre-release support with custom suffix
- Full GitHub Actions job summary

### Quick start
```yaml
- uses: ranarn/release-pilot@v1
  with:
    token: ${{ secrets.GITHUB_TOKEN }}
```

See the [README](https://github.com/ranarn/release-pilot#readme) for all inputs, outputs, and examples.
