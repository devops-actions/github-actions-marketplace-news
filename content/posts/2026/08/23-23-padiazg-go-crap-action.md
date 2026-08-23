---
title: go-crap
date: 2026-08-23 23:07:06 +00:00
tags:
  - padiazg
  - GitHub Actions
draft: false
repo: https://github.com/padiazg/go-crap-action
marketplace: https://github.com/marketplace/actions/go-crap
version: v0.5.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The go-crap-action automates the use of the go-crap tool in a GitHub Actions workflow by running it within a Docker container. It allows developers to analyze code quality and compliance with coding standards without needing to install additional tools or Go environments. The action provides flexibility through customizable arguments, including scanning options, output formats, and thresholds for failing tests based on complexity scores. It mounts the repository workspace into the Docker container for relative path resolution and supports generating JSON reports as artifacts, making it easier to integrate into CI pipelines.
---


Version updated for **https://github.com/padiazg/go-crap-action** to version **v0.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-crap) to find the latest changes.

## Action Summary

The go-crap-action automates the use of the go-crap tool in a GitHub Actions workflow by running it within a Docker container. It allows developers to analyze code quality and compliance with coding standards without needing to install additional tools or Go environments. The action provides flexibility through customizable arguments, including scanning options, output formats, and thresholds for failing tests based on complexity scores. It mounts the repository workspace into the Docker container for relative path resolution and supports generating JSON reports as artifacts, making it easier to integrate into CI pipelines.

## What's Changed

Run [go-crap](https://github.com/padiazg/go-crap) in GitHub Actions without installing the tool or a Go toolchain. The action executes the published ghcr.io/padiazg/go-crap Docker image against your checked-out code.

**Full Changelog**: https://github.com/padiazg/go-crap-action/commits/v0.5.1
