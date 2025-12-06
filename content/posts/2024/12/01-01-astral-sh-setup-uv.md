---
title: astral-sh/setup-uv
date: 2024-12-01 01:04:20 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v4.2.0
dependentsNumber: "4,696"
---


Version updated for **astral-sh/setup-uv** to version **v4.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,696** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

We got a frist contribution from @pollenjp!

Thanks to this we are now resolving the latest version and try to find it in the local cache instead of always downloading the latest release from the uv repository.
This new approach is not only more **efficient**, it also fixes a latent bug in the self-hosted runners tools cache and makes the code more **maintainable**.

Thank you @pollenjp!

## 🚀 Enhancements

- Resolve latest version instead of downloading latest release @pollenjp (#178)

## 🧰 Maintenance

- Add test for python-version @eifinger (#177)

