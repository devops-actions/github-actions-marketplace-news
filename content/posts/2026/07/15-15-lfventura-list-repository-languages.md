---
title: Repository Languages and CodeQL Support Map
date: 2026-07-15 15:02:43 +00:00
tags:
  - lfventura
  - GitHub Actions
draft: false
repo: https://github.com/lfventura/list-repository-languages
marketplace: https://github.com/marketplace/actions/repository-languages-and-codeql-support-map
version: v4.0.0
dependentsNumber: "7"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, `list-repository-languages`, automates the detection of repository languages and maps them to the CodeQL matrix. It supports two detection methods: linguist-js (default) and using the GitHub API. The action helps in accurately identifying the programming languages in a repository by either analyzing the local checkout or querying GitHub's API, depending on user preference. This is particularly useful for integrating language-based analysis into CI/CD pipelines with CodeQL.
---


Version updated for **https://github.com/lfventura/list-repository-languages** to version **v4.0.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repository-languages-and-codeql-support-map) to find the latest changes.

## Action Summary

This GitHub Action, `list-repository-languages`, automates the detection of repository languages and maps them to the CodeQL matrix. It supports two detection methods: linguist-js (default) and using the GitHub API. The action helps in accurately identifying the programming languages in a repository by either analyzing the local checkout or querying GitHub's API, depending on user preference. This is particularly useful for integrating language-based analysis into CI/CD pipelines with CodeQL.

## What's Changed

## What's Changed
* feat: local linguist detection method and undetected-language pruning (v4) by @lfventura in https://github.com/lfventura/list-repository-languages/pull/9


**Full Changelog**: https://github.com/lfventura/list-repository-languages/compare/v3.3.0...v4.0.0
