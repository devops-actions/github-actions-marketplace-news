---
title: octofetch
date: 2026-06-21 22:20:21 +00:00
tags:
  - riteshraj-shetage
  - GitHub Actions
draft: false
repo: https://github.com/riteshraj-shetage/octofetch
marketplace: https://github.com/marketplace/actions/octofetch
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/riteshraj-shetage/octofetch** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/octofetch) to find the latest changes.

## What's Changed

The official stable release of **octofetch**!

### First Release

A declarative, lightweight [GitHub GraphQL API](https://docs.github.com/en/graphql) action built on Bun to compile user configs and fetch raw telemetry payloads.

#### Highlights
* **Zero-Dependency**: Compiles dynamic GraphQL queries straight from local config files without external bloat.
* **Bun-Native**: Built to run explicitly on the Bun runtime for fast, sub-second workflow execution.

#### Usage Example
```yaml
- name: Fetch GitHub Telemetry
  uses: riteshraj-shetage/octofetch@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    config_file: .github/default.config.json
    output_file: ./data/sourced.json
