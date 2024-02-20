---
title: Install Lua/LuaJIT (including 2.1)
date: 2024-02-20 11:05:14 +00:00
tags:
  - jkl1337
  - GitHub Actions
draft: false
repo: jkl1337/gh-actions-lua
marketplace: https://github.com/marketplace/actions/install-lua-luajit-including-2-1
version: v11
dependentsNumber: "1"
---


Version updated for **jkl1337/gh-actions-lua** to version **v11**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-lua-luajit-including-2-1) to find the latest changes.

## Release notes

- Rewrite of LuaJIT build/install
- Supports LuaJIT from git and openresty
- Build Windows as documented on LuaJIT. The root Makefile officially does not support Windows, so do not attempt to use it.
- Fix C module loading on windows
