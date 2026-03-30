---
title: Install Lua / LuaJIT / OpenResty + LuaRocks
date: 2026-03-30 06:15:45 +00:00
tags:
  - luau-project
  - GitHub Actions
draft: false
repo: https://github.com/luau-project/setup-lua
marketplace: https://github.com/marketplace/actions/install-lua-luajit-openresty-luarocks
version: v1.1.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/luau-project/setup-lua** to version **v1.1.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-lua-luajit-openresty-luarocks) to find the latest changes.

## Action Summary

This GitHub Action installs and configures Lua, LuaJIT, or OpenResty along with LuaRocks in a single step, allowing developers to specify versions and toolchains for their environment. It automates the setup of a consistent Lua development environment across operating systems and supports advanced configurations, such as using specific source code versions or skipping LuaRocks installation. This action simplifies and standardizes the process of preparing Lua-based workflows in CI/CD pipelines.

## What's Changed

## setup-lua v1.1.1

* Upgraded dependencies to fix vulnerabilities according to `npm audit fix`;
* Fixed a bug that didn't add the default Lua path defined at compile-time for both `LUA_PATH` and `LUA_CPATH` environment variables;
* Refactored the logic to detect the usage inside a CI environment.
