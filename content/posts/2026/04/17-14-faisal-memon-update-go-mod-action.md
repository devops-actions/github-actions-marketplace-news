---
title: Update Go Version In go.mod
date: 2026-04-17 14:12:27 +00:00
tags:
  - faisal-memon
  - GitHub Actions
draft: false
repo: https://github.com/faisal-memon/update-go-mod-action
marketplace: https://github.com/marketplace/actions/update-go-version-in-go-mod
version: v1.0.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/faisal-memon/update-go-mod-action** to version **v1.0.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-go-version-in-go-mod) to find the latest changes.

## Action Summary

`update-go-mod-action` is a GitHub Action that automates the process of checking for the latest stable Go release from `go.dev` and updating the `go` directive in a project's `go.mod` file if it is outdated. It simplifies maintaining Go dependencies by detecting version mismatches and editing the file, reducing manual effort and ensuring repositories remain up-to-date with the latest Go versions. Additionally, it provides outputs for tracking version changes, enabling seamless integration with workflows for creating pull requests.

## What's Changed

Initial release of `update-go-mod-action`.

This action checks the latest stable Go release from `go.dev` and updates the `go` directive in `go.mod` when the repository is behind.

Features:
- Updates the `go` directive in `go.mod`
- Optionally updates an existing `toolchain` directive
- Exposes outputs for changed status and detected versions
- Designed to work well with pull-request workflows such as `peter-evans/create-pull-request`

Example usage:

```yaml
- name: Update go.mod
  id: update
  uses: faisal-memon/update-go-mod-action@v1
