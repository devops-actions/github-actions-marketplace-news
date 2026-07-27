---
title: Compile Better Than WolvesCE (BTWCE) Addon
date: 2026-07-27 06:37:41 +00:00
tags:
  - TheWinABagel
  - GitHub Actions
draft: false
repo: https://github.com/TheWinABagel/compilation
marketplace: https://github.com/marketplace/actions/compile-better-than-wolves-ce-btwce-addon
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The action automates the compilation and building of a BTW (Better Than Wolves) addon, providing an easy-to-use workflow for developers to compile their projects. It is a slightly modified version of a pre-existing action tailored specifically for BTW workflows, offering quick build processes without needing extensive configuration.
---


Version updated for **https://github.com/TheWinABagel/compilation** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compile-better-than-wolves-ce-btwce-addon) to find the latest changes.

## Action Summary

The action automates the compilation and building of a BTW (Better Than Wolves) addon, providing an easy-to-use workflow for developers to compile their projects. It is a slightly modified version of a pre-existing action tailored specifically for BTW workflows, offering quick build processes without needing extensive configuration.

## What's Changed

# Better Than Wolves:CE (BTWCE) Addon Actions Builder
Compile a Better Than Wolves:CE (BTWCE) Addon automatically

This action allows for automatic compilation and building of a BTW addon. It's a slightly modified version of [this](https://github.com/furuochen-dev/compilation) action, modified for the BTW workflow.  
Here's an example of how to use it below:

```yaml
name: Compiling

on:
  push:
  pull_request:

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - name: Compile
      uses: TheWinABagel/compilation@v1
      
    - name: Archive Artifacts
      uses: actions/upload-artifact@v4.6.2
      with:
        name: Artifacts
        path: ./build/libs
```

