---
title: TreeExporter
date: 2026-08-10 14:33:00 +00:00
tags:
  - mrf0rtuna4
  - GitHub Actions
draft: false
repo: https://github.com/mrf0rtuna4/TreeExporter
marketplace: https://github.com/marketplace/actions/treeexporter
version: v0.2.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  TreeExporter automatically generates beautiful repository structure diagrams from project folders, replacing manual editing of README file trees. It supports SVG and plain text export formats, customizable themes, and GitHub Actions integration.
---


Version updated for **https://github.com/mrf0rtuna4/TreeExporter** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/treeexporter) to find the latest changes.

## Action Summary

TreeExporter automatically generates beautiful repository structure diagrams from project folders, replacing manual editing of README file trees. It supports SVG and plain text export formats, customizable themes, and GitHub Actions integration.

## What's Changed

# Changelog

## [0.2.0] - 2026-08-10

### Added

* Added built-in SVG themes:

  * `light`
  * `dark`
  * `github-light`
  * `github-dark`
  * `dracula`
  * `monokai`
  * `nord`
  * `solarized-light`
  * `solarized-dark`
  * `one-dark`
* Added `--theme` CLI option for SVG output.
* Added `theme` input to the GitHub Action.
* Added SVG previews for all built-in themes.
* Added theme examples to the repository documentation.

### Changed

* Extended SVG renderer with theme-aware background and text colors.
* Updated GitHub Action configuration to pass the selected theme to the CLI.
* Expanded README documentation for CLI usage, GitHub Actions, themes, and configuration.
* Updated repository structure generation workflow.

### Maintenance

* Updated Docker configuration.
* Updated generated repository structure and theme preview assets.


**Full Changelog**: https://github.com/mrf0rtuna4/TreeExporter/compare/v0.1.0...v0.2.0
