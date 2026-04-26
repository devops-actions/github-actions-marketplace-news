---
title: ghafmt
date: 2026-04-26 21:22:05 +00:00
tags:
  - jonathanrainer
  - GitHub Actions
draft: false
repo: https://github.com/jonathanrainer/ghafmt
marketplace: https://github.com/marketplace/actions/ghafmt
version: v0.1.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jonathanrainer/ghafmt** to version **v0.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghafmt) to find the latest changes.

## Action Summary

`ghafmt` is a GitHub Action that automates the formatting of GitHub Actions workflow and metadata files, ensuring consistent styling and structure. It standardizes YAML files by reordering keys, sorting elements alphabetically, adding blank lines for readability, and converting IDs to `snake_case`. This helps reduce formatting-related noise in code reviews, improving clarity and maintainability of CI/CD pipelines.

## What's Changed

## Fixes

- update rust crate similar to v3 (#105) (01d3132)
- update rust crate similar to v3.1.0 (#124) (e27377b)
- update rust crate clap to v4.6.1 (#131) (bf34b0e)
- ensure that adding blank lines between steps doesn't bleed into other areas (#136) (6ca7fad)

## Project Infrastructure

- Extend dependency changeset workflow to cover Dependabot PRs in addition to Renovate, and rename the workflow file
  accordingly. (0c91c3c)

## Dependencies

- Bump rand from 0.9.2 to 0.9.4 (0c91c3c)
- chore(deps): update taiki-e/install-action action to v2.75.18 (d919609)
- chore(deps): update apple-actions/import-codesign-certs action to v7 (ee2c850)
- chore(deps): update taiki-e/install-action action to v2.75.19 (6a89723)
- chore(deps): update taiki-e/install-action action to v2.75.22 (45901f3)

## Docker Image
```
docker pull ghcr.io/jonathanrainer/ghafmt:0.1.5
docker pull ghcr.io/jonathanrainer/ghafmt:latest
```
