---
title: Setup pnpm with runtime
date: 2026-08-10 06:00:14 +00:00
tags:
  - pnpm
  - GitHub Actions
draft: false
repo: https://github.com/pnpm/setup
marketplace: https://github.com/marketplace/actions/setup-pnpm-with-runtime
version: v2.0.2
dependentsNumber: "374"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action installs pnpm and a JavaScript runtime (Node.js, Bun, or Deno) in a single step. It automates the setup process by downloading pnpm's self-contained binary and setting up the specified runtime on the runner's PATH. The action automatically detects the required runtime from `package.json` if not provided as an input, reducing the need for multiple setup steps.
---


Version updated for **https://github.com/pnpm/setup** to version **v2.0.2**.

- This action is used across all versions by **374** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-pnpm-with-runtime) to find the latest changes.

## Action Summary

This GitHub Action installs pnpm and a JavaScript runtime (Node.js, Bun, or Deno) in a single step. It automates the setup process by downloading pnpm's self-contained binary and setting up the specified runtime on the runner's PATH. The action automatically detects the required runtime from `package.json` if not provided as an input, reducing the need for multiple setup steps.

## What's Changed

## What's Changed
* feat: install pnpm from the npm registry, verified against npm's signature by @zkochan in https://github.com/pnpm/setup/pull/24
* fix: keep the installed runtime authoritative against context-aware shims by @zkochan in https://github.com/pnpm/setup/pull/25


**Full Changelog**: https://github.com/pnpm/setup/compare/v2.0.1...v2.0.2
