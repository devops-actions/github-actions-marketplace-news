---
title: project-secrets-create
date: 2026-03-01 06:09:35 +00:00
tags:
  - Frozen-Tapestry
  - GitHub Actions
draft: false
repo: https://github.com/Frozen-Tapestry/secrets-create-action
marketplace: https://github.com/marketplace/actions/project-secrets-create
version: v2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Frozen-Tapestry/secrets-create-action** to version **v2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/project-secrets-create) to find the latest changes.

## Action Summary

The `project-secrets-create` GitHub Action automates the creation of secure secret files from key-value pairs provided as input, storing them in a designated directory (default: `.ci-secrets`). It is designed to securely materialize secrets on disk for use in build tools (e.g., Docker, npm, Maven) by ensuring restrictive file permissions, validating file paths, and preventing empty secret values. This action simplifies the process of securely handling build secrets while reducing the risk of accidental exposure, such as inclusion in Docker build contexts.

## Release notes

## What's Changed
* multiline secret support  by @Foat in https://github.com/Frozen-Tapestry/secrets-create-action/pull/1
