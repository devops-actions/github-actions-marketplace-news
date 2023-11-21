---
title: Environment Variables from Dotenv
date: 2023-11-21 03:19:25 +00:00
tags:
  - c-py
  - GitHub Actions
draft: false
repo: c-py/action-dotenv-to-setenv
marketplace: https://github.com/marketplace/actions/environment-variables-from-dotenv
version: v5
dependentsNumber: "684"
---


Version updated for **c-py/action-dotenv-to-setenv** to version **v5**.
- This action is used across all versions by **684** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/environment-variables-from-dotenv) to find the latest changes.

## Release notes

`NODE_OPTIONS` cannot be set in this action due to GitHub [security settings](https://github.com/c-py/action-dotenv-to-setenv/issues/9). To work around this `NODE_OPTIONS` is automatically output under `node_options`.
