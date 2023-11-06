---
title: Lua Busted
date: 2023-11-06 19:03:08 +00:00
tags:
  - lunarmodules
  - GitHub Actions
draft: false
repo: lunarmodules/busted
marketplace: https://github.com/marketplace/actions/lua-busted
version: v2.2.0
dependentsNumber: "0"
---


Version updated for **lunarmodules/busted** to version **v2.2.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lua-busted) to find the latest changes.

## Release notes

### Features

- Add Korean localization — @marocchino
- Add --exclude-name-file and --log-success options — @hanshuebner
  (When combined can automate re-running only failed tests)
- Add --name option to easily run single tests — @hanshuebner

### Bug Fixes

- Remove unused luafilesystem dependency — @dundargoc
- Correct installation and example documentation — @C3pa and @alerque
- Use escape sequences to output UTF-8 characters in more environments — @Commandcracker
- Output more standard tracing notation in gtest handler — @Tieske
- Fix casting to string before encoding errors in JSON  — @svermeulen
- Correct TAP handler to not error on no test files — @notomo
