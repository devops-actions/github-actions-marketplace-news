---
title: bevry-actions/surge
date: 2023-11-28 03:18:34 +00:00
tags:
  - bevry-actions
  - GitHub Actions
draft: false
repo: bevry-actions/surge
marketplace: https://github.com/marketplace/actions/bevry-actions-surge
version: v1.1.0
dependentsNumber: "107"
---


Version updated for **bevry-actions/surge** to version **v1.1.0**.
- This action is used across all versions by **107** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bevry-actions-surge) to find the latest changes.

## Release notes

As the `surge` npm package [has outdated dependencies](https://github.com/sintaxi/surge/issues/504), projects that depend on it, even as a `devDependency` are marked falsely as insecure. This change allows `surge` to be installed in and only in the GitHub Action, such that surge is not a direct dependency anymore, and thus dependers are not marked as insecure.
