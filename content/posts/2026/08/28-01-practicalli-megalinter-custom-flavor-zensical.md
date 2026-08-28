---
title: MegaLinter Custom Flavor PracticalliZensical
date: 2026-08-28 01:56:35 +00:00
tags:
  - practicalli
  - GitHub Actions
draft: false
repo: https://github.com/practicalli/megalinter-custom-flavor-zensical
marketplace: https://github.com/marketplace/actions/megalinter-custom-flavor-practicallizensical
version: v10.0.0-beta
dependentsNumber: "12"
actionType: Docker
actionSummary: |
  This GitHub Action customizes the official MegaLinter image to include only specific linters and reduces its Docker image size. It automates the process of checking for new MegaLinter releases, building a customized Docker image with selected linters, and optionally publishing it to both GitHub Container Registry and Docker Hub.
---


Version updated for **https://github.com/practicalli/megalinter-custom-flavor-zensical** to version **v10.0.0-beta**.

- This action is used across all versions by **12** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter-custom-flavor-practicallizensical) to find the latest changes.

## Action Summary

This GitHub Action customizes the official MegaLinter image to include only specific linters and reduces its Docker image size. It automates the process of checking for new MegaLinter releases, building a customized Docker image with selected linters, and optionally publishing it to both GitHub Container Registry and Docker Hub.

## What's Changed

- build(make): 🔧 common practicalli tasks for projects (fb97086)
- ci(github): 🔧 update actions to latest versions using `make dependencies-update` (b3a34b2)
- style: delete blank spaces in GitHub workflow config (332a09d)
- ci(megalinter): schedule version check on 1st day of month (34e97d8)
- release(action): latest release of zensical megalinter custom flavor (f3c789b)
- dev: install custom flavor of megalinter for zensical projects (e4fe720)
- Initial commit (a92cd50)
