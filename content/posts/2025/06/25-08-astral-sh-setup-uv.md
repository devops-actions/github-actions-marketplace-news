---
title: astral-sh/setup-uv
date: 2025-06-25 08:59:33 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v6.3.1
dependentsNumber: "23,533"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v6.3.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **23,533** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This is a hotfix to change the warning messages that a version could not be found in the local manifest-file to info level.

A `setup-uv` release contains a version-manifest.json file with infos in all available `uv` releases. When a new `uv` version is released this is not contained in this file until the file gets updated and a new `setup-uv` release is made.
We will overhaul this process in the future but for now the spamming of warnings is removed.

## 🐛 Bug fixes

- Do not warn when version not in manifest-file @eifinger (#462)

## 🧰 Maintenance

- chore: update known versions for 0.7.14 @[github-actions[bot]](https://github.com/apps/github-actions) (#459)
- Revert "Set expected cache dir drive to C: on windows (#451)" @eifinger (#460)

