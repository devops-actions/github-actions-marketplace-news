---
title: ghafmt
date: 2026-03-24 22:04:45 +00:00
tags:
  - jonathanrainer
  - GitHub Actions
draft: false
repo: https://github.com/jonathanrainer/ghafmt
marketplace: https://github.com/marketplace/actions/ghafmt
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jonathanrainer/ghafmt** to version **v0.1.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghafmt) to find the latest changes.

## Action Summary

The `ghafmt` GitHub Action is a formatter designed to standardize and enforce consistent styling in GitHub Actions YAML files, including workflows (`.yml`) and action metadata files (`action.yml` / `action.yaml`). It automates tasks such as reordering keys, sorting blocks alphabetically, normalizing whitespace, and converting IDs to `snake_case`, reducing formatting inconsistencies and simplifying code reviews by ensuring diffs highlight only meaningful changes. This action streamlines workflow file management and improves readability and maintainability in CI/CD pipelines.

## Release notes

## Fixes

### Store version in the action

Remove the `version` input and instead hardcode `ACTION_VERSION` as an env var
in the download step, kept in lockstep with Cargo.toml via a new Knope step
that updates it automatically during release preparation. (9209263)

## Docker Image
```
docker pull ghcr.io/jonathanrainer/ghafmt:0.1.3
docker pull ghcr.io/jonathanrainer/ghafmt:latest
```
