---
title: Nix Develop Action
date: 2023-11-08 11:05:06 +00:00
tags:
  - nicknovitski
  - GitHub Actions
draft: false
repo: nicknovitski/nix-develop
marketplace: https://github.com/marketplace/actions/nix-develop-action
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **nicknovitski/nix-develop** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-develop-action) to find the latest changes.

## Release notes

I removed the argument `--ignore-environment` from the action's invocations of `nix develop`.  I haven't found any benefit from it, and it created surprising annoyance to anyone using https://devenv.sh in a flake.  The effect was errors with messages like `mktemp: command not found`, `mkdir: command not found`, etc.  The workaround was to add `--keep PATH` to the `arguments`.  But how would people figure that out?!

Anyone who does want to `--ignore-environment` can of course add that to their `arguments:` instead. 

**Full Changelog**: https://github.com/nicknovitski/nix-develop/compare/v1.0.0...v1.1.0
