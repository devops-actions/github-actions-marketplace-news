---
title: Install Lua / LuaJIT / OpenResty + LuaRocks
date: 2026-07-26 14:49:13 +00:00
tags:
  - luau-project
  - GitHub Actions
draft: false
repo: https://github.com/luau-project/setup-lua
marketplace: https://github.com/marketplace/actions/install-lua-luajit-openresty-luarocks
version: v2.0.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation of Lua, LuaJIT, or OpenResty along with LuaRocks in a single step within the `.lua` folder of the current directory. It supports various versions and toolchains, including MSVC on Windows. The action can also install specific versions of Lua and LuaRocks by providing inputs.
---


Version updated for **https://github.com/luau-project/setup-lua** to version **v2.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-lua-luajit-openresty-luarocks) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of Lua, LuaJIT, or OpenResty along with LuaRocks in a single step within the `.lua` folder of the current directory. It supports various versions and toolchains, including MSVC on Windows. The action can also install specific versions of Lua and LuaRocks by providing inputs.

## What's Changed

* Fixed an issue that didn't wrote the `R` variable in the installed `pkg-config` file in the format `X.Y.Z` for work versions of PUC-Lua (e.g.: it was writing `R=5.5.1-rc1` for Lua `5.5.1-rc1`);
* From now on, following the direction of multiple Unix distributions (Debian, Arch Linux), multiple versioned files for `pkg-config` are being installed for PUC-Lua. For instance, for Lua 5.5, `setup-lua` is installing the files `lua-5.5.pc`, `lua-5.5.pc`, `lua-5.5.pc` and `lua-5.5.pc`. Previously, a single file `lua5.5.pc` was installed;
* Added PUC-Lua 5.5.1-rc2 (see [https://groups.google.com/g/lua-l/c/wxeL7VPNLYg](https://groups.google.com/g/lua-l/c/wxeL7VPNLYg)) to the list of available versions to install;
* Added post-install instructions to CLI docs.
