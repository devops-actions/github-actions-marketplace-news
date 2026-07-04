---
title: Setup Raven
date: 2026-07-04 14:30:47 +00:00
tags:
  - martian56
  - GitHub Actions
draft: false
repo: https://github.com/martian56/setup-raven
marketplace: https://github.com/marketplace/actions/setup-raven
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/martian56/setup-raven** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-raven) to find the latest changes.

## What's Changed

Installs the Raven toolchain (raven, rvpm) on Linux and Windows runners from the Raven GitHub releases and caches the rvpm package cache between runs.

- raven-version input: a release like 2.22.0, or latest (the default)
- cache input: caches ~/.rvpm/cache keyed on the repository's rv.toml files
- raven-version output: the tag that was installed

Use it with:

    - uses: martian56/setup-raven@v1
