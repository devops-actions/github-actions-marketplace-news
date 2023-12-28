---
title: run-vcpkg
date: 2023-12-28 19:17:16 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/run-vcpkg
marketplace: https://github.com/marketplace/actions/run-vcpkg
version: v11.4
dependentsNumber: "7,035"
---


Version updated for **lukka/run-vcpkg** to version **v11.4**.
- This action is used across all versions by **7,035** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-vcpkg) to find the latest changes.

## Release notes

Changes:
- This is a summary of the changes depicted in Pull Request #216 :
  the `vcpkgGitCommitId` input is now optional, and the Git commit id is retrieved from either `vcpkg-configuration.json` or `vcpkg.json`.
  _Note:_ only the default-registry's `builtin` kind is supported, the `git` or `filesystem`kinds are not supported.

**Note:** to keep your workflow up to date with bug and security fixes, just use the `v11` branch to stay on the most recent `v11.x` version of this action, e.g., `uses: lukka/run-vcpkg@v11`. Instead to pin to a particular release, you can use one of the tags, for example `uses: lukka/run-vcpkg@v11.3` to pin your workflow to the `v11.3` release.
