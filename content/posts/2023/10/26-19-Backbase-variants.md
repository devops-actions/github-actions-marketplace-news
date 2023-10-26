---
title: variants-switch
date: 2023-10-26 19:01:06 +00:00
tags:
  - Backbase
  - GitHub Actions
draft: false
repo: Backbase/variants
marketplace: https://github.com/marketplace/actions/variants-switch
version: 1.2.1
dependentsNumber: "2"
---


Version updated for **Backbase/variants** to version **1.2.1**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/variants-switch) to find the latest changes.

## Release notes

# Release 1.2.1

## FIXES:
- Reverting supporting-variants-and-pods-configs-simultaneously, that created a bug which cause the UITests project to import an unneeded pod used by the app project, since the xcconfig is shared between the app and the tests projects (https://github.com/Backbase/variants/pull/233)
