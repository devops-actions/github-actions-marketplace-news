---
title: Python Setup Rye
date: 2024-03-05 03:10:18 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v2.1.1
dependentsNumber: "76"
---


Version updated for **eifinger/setup-rye** to version **v2.1.1**.
- This action is used across all versions by **76** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

Install rye into a stable path and keep it there. Backup user specific settings present before the run on self hosted runners. Restore them after the run. This way runs will not interfere with each other.

## 🐛 Bug fixes

- Do not copy around RYE\_HOME @eifinger (#198)

