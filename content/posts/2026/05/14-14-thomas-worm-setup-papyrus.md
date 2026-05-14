---
title: Setup Papyrus-Desktop
date: 2026-05-14 14:36:32 +00:00
tags:
  - thomas-worm
  - GitHub Actions
draft: false
repo: https://github.com/thomas-worm/setup-papyrus
marketplace: https://github.com/marketplace/actions/setup-papyrus-desktop
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/thomas-worm/setup-papyrus** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-papyrus-desktop) to find the latest changes.

## Action Summary

The `setup-papyrus` GitHub Action automates the setup of Papyrus-Desktop RCP, including downloading, caching, and installing necessary OS-level prerequisites for headless SWT usage, while exposing key paths for integration in workflows. It simplifies the process of configuring Papyrus-Desktop across different operating systems, ensuring compatibility and reducing setup time with caching and pre-installed dependencies. Key capabilities include version pinning, cross-platform support, and seamless integration with CI/CD pipelines.

## What's Changed

This action installs Papyrus Desktop on the runner, so it can be used for further actions with papyrus like `thomas-worm/papyrus-export-diagrams`.

It supports all runner os.

You can use it like this:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: thomas-worm/setup-papyrus@v1
        id: papyrus
      - run: echo "Papyrus is at ${{ steps.papyrus.outputs.papyrus-home }}"
```

