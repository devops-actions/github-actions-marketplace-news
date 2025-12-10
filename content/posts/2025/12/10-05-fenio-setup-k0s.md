---
title: Setup k0s
date: 2025-12-10 05:39:59 +00:00
tags:
  - fenio
  - GitHub Actions
draft: false
repo: https://github.com/fenio/setup-k0s
marketplace: https://github.com/marketplace/actions/setup-k0s
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/fenio/setup-k0s** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-k0s) to find the latest changes.

## Release notes

## 🎉 Major Release: Complete Rewrite as Pure Bash Composite Action

This is a **major rewrite** that simplifies the action significantly by removing all Node.js/TypeScript dependencies and implementing everything as a pure bash composite action.

## ⚠️ BREAKING CHANGES

- **Runtime Change**: Action now uses `composite` runtime instead of `node24`
- **No Automatic Cleanup**: The action no longer includes a post-run cleanup phase. k0s cluster will persist after the action completes
- **Removed Dependencies**: All Node.js dependencies (`@actions/core`, `@actions/exec`) have been removed
- **No Build Required**: The action no longer requires a build step

## ✨ What's New

### Simplified Implementation
- Complete rewrite from TypeScript to pure bash
- All logic contained in a single `action.yml` file
- Zero external dependencies - uses only bash, curl, and standard Linux commands

### Better Developer Experience
- **No build step** - action works immediately without compilation
- **More transparent** - all code is visible and readable in action.yml
- **Faster execution** - no Node.js runtime overhead
- **Simpler maintenance** - single file, no toolchain complexity

### Same Great Features
- Automatic k0s installation with version selection
- Single-node controller setup
- Cluster readiness checks with configurable timeout
- Kubeconfig export for kubectl integration

## 🔄 Migration Guide

If you're upgrading from v1.x, the usage remains the same:

```yaml
- uses: fenio/setup-k0s@v2
  with:
    version: 'latest'
    wait-for-ready: 'true'
    timeout: '300'
```

**Note**: The cluster will no longer be automatically cleaned up after your workflow completes. If you need cleanup, you can add it manually in your workflow.

## 📦 What Was Removed

- TypeScript source files and build configuration
- `dist/` directory with compiled JavaScript
- `package.json` and all npm dependencies
- Post-run cleanup hook
- Node.js runtime requirement

## 🎯 Why This Change?

This rewrite makes the action:
- **Simpler to understand** - pure bash is easier to read than TypeScript
- **Easier to maintain** - no build tools, no dependencies to update
- **Faster to execute** - no Node.js startup overhead
- **More reliable** - fewer moving parts means fewer failure points

Deleted **28,820 lines** of generated code and dependencies!
