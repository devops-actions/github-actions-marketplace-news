---
title: Python Setup Rye
date: 2024-03-01 03:24:23 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v1.16.1
dependentsNumber: "74"
---


Version updated for **eifinger/setup-rye** to version **v1.16.1**.
- This action is used across all versions by **74** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

If rye was found in the tools cache of hosted runners RYE_HOME was not set. That led to the creation of the .rye folder in the user home. 

## 🐛 Bug fixes

- Always set RYE\_HOME to cached path @eifinger (#188)

## ⬆️ Dependency updates

- chore(deps): bump peter-evans/create-pull-request from 6.0.0 to 6.0.1 @dependabot (#185)

