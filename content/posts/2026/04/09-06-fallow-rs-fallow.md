---
title: Fallow - Codebase Health
date: 2026-04-09 06:09:03 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.22.4
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.22.4**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a codebase analyzer for TypeScript and JavaScript that identifies unused code, code duplication, complexity issues, and architectural violations. It automates the detection of inefficiencies such as dead code, circular dependencies, and duplicate code blocks, providing developers with actionable insights to streamline and optimize their projects. With its Rust-native implementation, the tool offers fast, zero-configuration analysis and supports features like automated remediation of unused resources and continuous monitoring during development.

## What's Changed

## Highlights

### Nuxt module authoring support

Projects using `@nuxt/kit` (Nuxt module development) now have their `src/runtime/` directories automatically recognized as entry points. Components, composables, plugins, utils, locale, types, and Vue-specific subdirectories are all covered.

Tested on **Nuxt UI v3**: false positive unused files dropped from 521 to 226 (57% reduction).

### Svelte 5 typed snippet parameter crash fix

`{#snippet Link({ href, content }: Props)}` -- TypeScript type annotations on Svelte 5 snippet parameters caused an infinite recursion in the template parser, crashing with a stack overflow. Projects like **shadcn-svelte** now analyze without issues.

## Performance

- **O(1) duplicate detection** in star re-export chain resolution (replaces linear scan)
- **Precomputed entry star re-export targets** for faster dead code detection
- **Reduced allocations** in plugin system and module graph construction via scratch buffer reuse
- **Optimized suffix array construction** for clone detection

## Bug fixes

- **Workspace glob traversal** no longer walks into `node_modules` directories during discovery
- **Meta-framework warnings** use colons instead of em dashes for consistent output formatting

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.22.3...v2.22.4
