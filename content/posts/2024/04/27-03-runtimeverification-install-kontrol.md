---
title: Install Kontrol
date: 2024-04-27 03:33:22 +00:00
tags:
  - runtimeverification
  - GitHub Actions
draft: false
repo: runtimeverification/install-kontrol
marketplace: https://github.com/marketplace/actions/install-kontrol
version: v1.0.2
dependentsNumber: "2"
---


Version updated for **runtimeverification/install-kontrol** to version **v1.0.2**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-kontrol) to find the latest changes.

## Release notes

Important new option to allow for avoiding rate limiting while installing kontrol or other RV related sub components that utilize nix and nix-flakes which grab directly from Github using the API. 

Installation can occur without providing this token however in a CI env where it's regularly reused to install, it is recommended to use the token
