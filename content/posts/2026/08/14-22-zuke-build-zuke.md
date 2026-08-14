---
title: Zuke Build
date: 2026-08-14 22:08:35 +00:00
tags:
  - zuke-build
  - GitHub Actions
draft: false
repo: https://github.com/zuke-build/zuke
marketplace: https://github.com/marketplace/actions/zuke-build
version: v1.0.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Zuke is a build automation system for Deno and TypeScript that allows developers to define builds as TypeScript classes with fluent API, resolving dependencies and running them in topological order. It provides type-safe dependencies, refactoring-safe code, and just TypeScript syntax without YAML or bespoke DSLs. Zuke is built using AI and has 54 packages following full semver, including tool wrappers and plugins.
---


Version updated for **https://github.com/zuke-build/zuke** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zuke-build) to find the latest changes.

## Action Summary

Zuke is a build automation system for Deno and TypeScript that allows developers to define builds as TypeScript classes with fluent API, resolving dependencies and running them in topological order. It provides type-safe dependencies, refactoring-safe code, and just TypeScript syntax without YAML or bespoke DSLs. Zuke is built using AI and has 54 packages following full semver, including tool wrappers and plugins.

## What's Changed

 Updates `step-security/harden-runner` to v2.20.1.

Nothing about the action's interface changes: the same seven inputs, the same behaviour, the same ordering. This exists so the bump reaches anyone sing zuke-build/zuke@v1 — a pinned action only ships a fix when the tag it is pinned to moves.

Pin the full commit SHA rather than the moving v1 tag: `zuke-build/zuke@5400f044d0b56206b0fa48c90b30486df205c7c6`
