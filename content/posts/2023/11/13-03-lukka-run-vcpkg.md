---
title: run-vcpkg
date: 2023-11-13 03:19:26 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/run-vcpkg
marketplace: https://github.com/marketplace/actions/run-vcpkg
version: v11.3
dependentsNumber: "6,886"
---


Version updated for **lukka/run-vcpkg** to version **v11.3**.
- This action is used across all versions by **6,886** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-vcpkg) to find the latest changes.

## Release notes

Changes:
- Avoid writing any file outside of `GITHUB_WORKSPACE` file system tree. This fixes https://github.com/lukka/run-vcpkg/issues/213
- Update the readme.md file regarding to when vcpkg.json is going to be searched for.

**Note:** to keep your workflow up to date with bug and security fixes, just use the `v11` branch to stay on the most recent `v11.x` version of this action, e.g., `uses: lukka/run-vcpkg@v11`. Instead to pin to a particular release, you can use one of the tags, for example `uses: lukka/run-vcpkg@v11.2` to pin your workflow to the v11.2 release.
