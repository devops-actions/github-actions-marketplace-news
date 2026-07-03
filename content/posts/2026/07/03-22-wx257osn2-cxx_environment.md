---
title: Setup Modern C++ Development Environment
date: 2026-07-03 22:03:04 +00:00
tags:
  - wx257osn2
  - GitHub Actions
draft: false
repo: https://github.com/wx257osn2/cxx_environment
marketplace: https://github.com/marketplace/actions/setup-modern-c-development-environment
version: v20260703
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wx257osn2/cxx_environment** to version **v20260703**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-modern-c-development-environment) to find the latest changes.

## What's Changed

- bump up base image to resolute
    - outdated: `clang-format` 17-20
    - enabled gnucoreutils
- bump up many components:
    - gcc: 15.2 -> 16.1
    - Boost: 1.89.0 -> 1.91.0
    - CMake: 4.1.1 -> 4.3.3
    - difftastic: 0.64 -> 0.69
    - mold: 2.40.4 -> 2.41.0
    - wild: 0.8.0 -> 0.9.0
- removed components:
    - old `clang-format` s
    - `clang-head`

```
$ ./pull.bash v20260703
```

