---
title: run-vcpkg
date: 2023-11-05 11:03:52 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/run-vcpkg
marketplace: https://github.com/marketplace/actions/run-vcpkg
version: v11.2
dependentsNumber: "6,766"
---


Version updated for **lukka/run-vcpkg** to version **v11.2**.
- This action is used across all versions by **6,766** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-vcpkg) to find the latest changes.

## Release notes

Changes:
- Avoid searching for `vcpkg.json` when `runVcpkgInstall:false`. This is a small perf improvement.
- Update the action to require node v20, since v16 is out of support. If any problem occurs, please use `run-vcpkg@v11.1` and create an issue.
- Update dependencies to most recent ones: all libs and `@actions` packages updated to most recent versions, along all other dependencies.
- Drop usage of gulp.
- Update docs.

**Note:** to keep your workflow up to date with bug and security fixes, just use the `v11` branch to stay on the most recent `v11.x` version of this action, e.g., `uses: lukka/run-vcpkg@v11`
