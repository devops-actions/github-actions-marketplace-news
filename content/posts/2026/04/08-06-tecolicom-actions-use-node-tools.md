---
title: install-and-cache node tools
date: 2026-04-08 06:21:25 +00:00
tags:
  - tecolicom
  - GitHub Actions
draft: false
repo: https://github.com/tecolicom/actions-use-node-tools
marketplace: https://github.com/marketplace/actions/install-and-cache-node-tools
version: v1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tecolicom/actions-use-node-tools** to version **v1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-and-cache-node-tools) to find the latest changes.

## Action Summary

The `actions-use-node-tools` GitHub Action automates the installation and caching of globally installed Node.js packages. It solves the problem of repetitive installations by using a caching mechanism to store and reuse previously installed packages, improving workflow efficiency. Key capabilities include flexible package management, customizable caching strategies, and support for verbose output during execution.

## What's Changed

## v1.0 - Initial Release

  GitHub Action to install and cache Node.js global tools using `npm install -g`.

  ### Usage

  - uses: tecolicom/actions-use-node-tools@v1
    with:
      tools: netlify-cli
