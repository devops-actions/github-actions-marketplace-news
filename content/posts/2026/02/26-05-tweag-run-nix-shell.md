---
title: Run nix-shell scripts
date: 2026-02-26 05:43:54 +00:00
tags:
  - tweag
  - GitHub Actions
draft: false
repo: https://github.com/tweag/run-nix-shell
marketplace: https://github.com/marketplace/actions/run-nix-shell-scripts
version: v0.3.0
dependentsNumber: "9"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/tweag/run-nix-shell** to version **v0.3.0**.
- This action is used across all versions by **9** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-nix-shell-scripts) to find the latest changes.

## Action Summary

This GitHub Action allows users to execute scripts or script files within a `nix-shell` environment, automating the process of setting up and running commands in a reproducible development or build environment. It solves the problem of managing dependencies and environments by leveraging Nix's declarative and isolated shell capabilities. Key features include support for custom Nix options, working directory configuration, and the ability to execute scripts in a pure or customized environment.

## Release notes

## What's Changed
* Fix CI runs for nix < 2.25 by @avdv in https://github.com/tweag/run-nix-shell/pull/11
* Use Javascript action instead of composite action' by @avdv in https://github.com/tweag/run-nix-shell/pull/20
* Use rules_shell for sh_library and sh_test by @YorikSar in https://github.com/tweag/run-nix-shell/pull/44
* Load sh_binary from rules_shell by @YorikSar in https://github.com/tweag/run-nix-shell/pull/45

## New Contributors
* @avdv made their first contribution in https://github.com/tweag/run-nix-shell/pull/12
* @YorikSar made their first contribution in https://github.com/tweag/run-nix-shell/pull/44

**Full Changelog**: https://github.com/tweag/run-nix-shell/compare/v0.2.1...v0.3.0
