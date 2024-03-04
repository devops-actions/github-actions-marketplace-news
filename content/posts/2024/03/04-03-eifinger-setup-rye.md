---
title: Python Setup Rye
date: 2024-03-04 03:07:50 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v2.0.0
dependentsNumber: "75"
---


Version updated for **eifinger/setup-rye** to version **v2.0.0**.
- This action is used across all versions by **75** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

`RYE_HOME` (`.rye`) is now located in the parent of the repository root. The previous location in the repository root confused tools like `rye fmt`

## 🚨 Breaking changes

- The cache will always be saved, even if the workflow failed @eifinger (#194)

## 🐛 Bug fixes

- Move RYE\_HOME from workspace home to runner home @eifinger (#194)

