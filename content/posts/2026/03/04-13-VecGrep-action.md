---
title: VecGrep
date: 2026-03-04 13:31:25 +00:00
tags:
  - VecGrep
  - GitHub Actions
draft: false
repo: https://github.com/VecGrep/action
marketplace: https://github.com/marketplace/actions/vecgrep
version: v0.1.5
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/VecGrep/action** to version **v0.1.5**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vecgrep) to find the latest changes.

## Action Summary

The VecGrep GitHub Action enables semantic code search, pull request validation, and architectural rule enforcement within a codebase. It automates tasks such as identifying semantically similar code, validating patterns to enforce coding standards, and posting actionable search results as comments on pull requests. Key capabilities include semantic querying, duplicate code detection, and customizable validation to streamline code reviews and maintain code quality.

## Release notes

Pins `vecgrep>=1.5.0` in the Docker image. vecgrep 1.5.0 replaces the old SQLite store with LanceDB, adds the fastembed ONNX backend (5x faster startup), ANN index, and file_stats table. All previous `AttributeError` failures on `_table`, `search_all`, etc. are resolved.
