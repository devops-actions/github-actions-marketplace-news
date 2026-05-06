---
title: Just release it! 📦
date: 2026-05-06 15:05:42 +00:00
tags:
  - Lex-DRL
  - GitHub Actions
draft: false
repo: https://github.com/Lex-DRL/just-release-it-action
marketplace: https://github.com/marketplace/actions/just-release-it
version: v1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Lex-DRL/just-release-it-action** to version **v1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/just-release-it) to find the latest changes.

## Action Summary

This GitHub Action, "Just Release It! (from TOML)," automates the release process for Python projects by reading the version from `pyproject.toml`, generating a changelog based on commit history, and publishing a standardized GitHub release. It simplifies version management and release creation, solving the problem of manual changelog assembly and ensuring consistent release tagging for repositories using `pyproject.toml`. Key capabilities include changelog generation, version standardization, and seamless integration with GitHub workflows.

## What's Changed

## ✨ New Features

- Added `depr` group + group-ordering approach: `XX` -> `y-z` + improve regexes — 1a41541f4565e2de85834d3752d01a55d1b6cdbe by @Lex-DRL
- Add alert blocks — 5d0ab60203f5feaa3a521a1c5703b7c8ab80af20 by @Lex-DRL

## 🚀 Improvements

- Improve/Extend detected groups — 6399ee808813611f5953e04f92d6807c225f16d6 by @Lex-DRL
- Better stripping of `<!-- X-Y -->` from group names, according to cliff docs — 3dbe0c112ebbb56b9b83df3e908c4f6ed3155e45 by @Lex-DRL

## 🛠️ Fixes

- fix: release always created on default branch, regardless on what branch the action is launched on — 956b0a9dc3e91434aa1cacf145ce2496cc33deb3 by @Lex-DRL
- fix breaking changes parsers — 2dbf993c2b159148fe294e27fbc928d15c0fc98a by @Lex-DRL
- fix extra empty lines before titles — 03d5c89a0c47e235d9f53dd84f221d9ab8e43b38 by @Lex-DRL

## 📝 Documentation

- README — b0d9acf2e2115688b37db4c95efea724b997e4da by @Lex-DRL

## ♻️ Refactor

- Fully reimplement the whole configuration-preparing step as Python script — d3e815844f35ad1d66f1777209e1d83b747b8f4f by @Lex-DRL
- refactor: proper indentation/comments/tiny fixes in Tera template for readability — 783b6029884d121345206f6c44cc93d0c68cef6c by @Lex-DRL

## 📦 Build/Packaging

- bld: Eat your own meal - `pyproject` — b0effd745e918e4d69e87983dba198a0529905ba by @Lex-DRL
- bld: Eat your own meal - workflow — a250e0b6071e40a3324fd138f559938cc9ece0c1 by @Lex-DRL

## 🧹 Maintenance

- `.gitignore`: exclude test/debug names (qqq, zzz, etc) — 942a01a64746bdcf6adb21f8e5aa6c3b9b10905f by @Lex-DRL

## 🔀 Other changes

- Tweak inputs + properly exclude commits from merged branch + fix default template — 358fc86353857e4cfc4e1a83e3d78a0c5d3414e1 by @Lex-DRL
- Match previous release-tag only to `v[0-9]*...` pattern — 848507f070fb6f02abdeb8a92da78cc3ed2ef140 by @Lex-DRL
- ... or any tag starting with a raw version-alike — 3df1e97c4e240204d2f7af38a2ce62dc8e4e63a0 by @Lex-DRL
- tweaks: nicer commit hash/author — 3190ed030877d1daf1d6906981cf279cae762498 by @Lex-DRL
- Rework groups detection — 920de3dc5899a80750a4f86b7d08d2d4f13b2d38 by @Lex-DRL
- More inputs: version field in TOML + category names — be2b5f729fb976729cc0ae728f5dc5736a59b47a by @Lex-DRL
- Also catch `add`/`support`/`upd`/`change` — dd7cb3559593c1babd9ddd16d0c68e2df224ee5c by @Lex-DRL
- `_shared_just_release_it.py` — 8d5f2c59c10b932c7f980b3c4d918878c5845029 by @Lex-DRL
- `Set version outputs` step -> `switch-version-outputs.py` — 6ca0aae26d2b6b763abc9b7a816a8825adf2ea73 by @Lex-DRL
- small action fixes — 9abc86fb70ce7c0074997f2becdc1499063db15b by @Lex-DRL

## Version

- v1.0 — b14c508124293f969bc02edfff95ad660accad11 by @Lex-DRL

