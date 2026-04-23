---
title: SBOM Generator (Syft + GitHub Depgraph)
date: 2026-04-23 05:54:56 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-sbom-action
marketplace: https://github.com/marketplace/actions/sbom-generator-syft-github-depgraph
version: v0.1.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-sbom-action** to version **v0.1.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-generator-syft-github-depgraph) to find the latest changes.

## Action Summary

The `gha-sbom-action` GitHub Action automates the generation of Software Bill of Materials (SBOM) files using the GitHub dependency graph API and Syft, providing a comprehensive overview of a project's dependencies in the SPDX format. It simplifies dependency tracking and compliance by resolving Python dependencies, scanning the repository, and optionally creating a pull request to update SBOM files if changes are detected. This action streamlines the process of maintaining accurate and up-to-date SBOMs, improving visibility and security in software projects.

## What's Changed

## SBOM Generator (Syft + GitHub Depgraph) v0.1.1

Composite GitHub Action that generates SPDX SBOM files using the GitHub dependency graph API and Syft, optionally opening a pull request with the results.

### Features

- Export GitHub dependency graph SBOM (SPDX JSON) via `gh api`
- Generate Syft SPDX SBOM scan of the repository
- Auto-detect changes and optionally open a PR with updated SBOMs
- Configurable output directory, Python version, and PR creation
- Syft DB caching for faster repeat runs
- All third-party actions pinned to commit SHA

### Usage

```yaml
- uses: qte77/gha-sbom-action@v0.1.1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
```

Prerequisites

Calling repository must have a pyproject.toml. The action runs uv sync to resolve Python dependencies before scanning.

Full changelog

https://github.com/qte77/gha-sbom-action/commits/v0.1.1


