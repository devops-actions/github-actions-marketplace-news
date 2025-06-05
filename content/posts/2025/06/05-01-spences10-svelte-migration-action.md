---
title: Svelte Migration Analysis
date: 2025-06-05 01:12:33 +00:00
tags:
  - spences10
  - GitHub Actions
draft: false
repo: https://github.com/spences10/svelte-migration-action
marketplace: https://github.com/marketplace/actions/svelte-migration-analysis
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/spences10/svelte-migration-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svelte-migration-analysis) to find the latest changes.

## Release notes

# 🚀 Svelte Migration Analysis Action v1.0.0

Initial release of the Svelte Migration Analysis Action for the GitHub Marketplace!

## ✨ What's Included

- 🔍 **Static Analysis**: Detects Svelte 4 patterns that need updating for Svelte 5
- 🤖 **AI-Powered Insights**: Optional Claude analysis for detailed migration suggestions  
- 💬 **PR Comments**: Automatic comments on pull requests with findings
- ⚡ **Fast Analysis**: Built with TypeScript and optimized for large codebases
- 📊 **Comprehensive Reports**: Issues, warnings, and migration guidance
- 🎯 **Configurable**: Filter files, set failure conditions, and customize behavior
- 🔧 **Zero Config**: Works out of the box with sensible defaults

## 🚀 Quick Start

```yaml
- name: Analyse Svelte Migration
  uses: spences10/svelte-migration-action@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## 📋 What It Detects

### 🔴 Breaking Changes (Errors)
- `createEventDispatcher` usage → Use callback props
- `beforeUpdate`/`afterUpdate` lifecycle hooks → Use `$effect.pre()` and `$effect()`
- Component instantiation with `new` → Use `mount()` or `hydrate()`
- `$$props` and `$$restProps` → Use destructuring with `$props()`
- `$$slots` usage → Use snippet parameters

### ⚠️ Deprecations (Warnings)  
- Reactive statements (`$:`) → Replace with `$derived` or `$effect`
- `export let` declarations → Replace with `$props()`
- `on:` event directives → Replace with event properties
- Named slots → Replace with snippets
- Store auto-subscriptions → Consider `$state` for reactive variables
- Event modifiers → Handle in event handlers directly

See the [README](https://github.com/spences10/svelte-migration-action#readme) for full documentation and configuration options.
