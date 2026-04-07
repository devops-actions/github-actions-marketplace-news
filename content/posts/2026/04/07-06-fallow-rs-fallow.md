---
title: Fallow - Codebase Health
date: 2026-04-07 06:16:39 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.15.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.15.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a codebase analyzer designed to detect and report issues like unused code, code duplication, high complexity, and architectural problems in TypeScript and JavaScript projects. It automates the identification of dead code, duplicate code blocks, circular dependencies, and other inefficiencies, helping developers optimize and maintain clean, efficient codebases. Its key capabilities include sub-second analysis, zero configuration, framework-specific plugins, and optional automated fixes for dead code.

## What's Changed

## Highlights

This release dramatically reduces false positives across Next.js, Nuxt, Vite, SvelteKit, Vue, and Svelte projects by expanding framework convention recognition, adding config-defined alias resolution, and improving SFC template tracking.

### Framework Convention Coverage

**Next.js** now recognizes all App Router special files (`loading`, `error`, `not-found`, `template`, `default`, `global-error`, `forbidden`, `unauthorized`, `global-not-found`) and route segment config exports (`revalidate`, `dynamic`, `runtime`, `fetchCache`, `preferredRegion`, `maxDuration`, `viewport`, `generateViewport`). Pages Router `_app`, API routes, `middleware`, `proxy`, `instrumentation`, `instrumentation-client`, and `mdx-components` are also covered. `transpilePackages` from `next.config.ts` are treated as referenced dependencies.

**Entry-point files** with framework-used exports (like `page.tsx` with `export const revalidate = 60`) now correctly report genuinely unused helper exports in the same file, instead of skipping the entire module.

**SvelteKit** param matchers (`src/params/**/*.ts`) have their `match` export treated as framework-used.

### Config-Defined Alias Resolution

Aliases defined in **Vite** (`resolve.alias`), **Nuxt** (`alias`, `imports.dirs`, `components`), and **SvelteKit** (`kit.alias`) config files are now extracted at analysis time and used as resolver fallbacks. Supports object form, array form, `fileURLToPath(new URL(...))`, and `path.resolve(__dirname, ...)` patterns.

**Nuxt `srcDir`** is fully supported: when set, `~/` and `@/` aliases remap to the configured directory, and entry patterns and always-used files are scoped accordingly. Custom component and auto-import directories from config are also discovered.

### Vue & Svelte SFC Template Improvements

- **Component tags**: `<FancyCard />`, `<fancy-card />`, `<Form.Input />` credit imported components as used (Vue supports kebab-case conversion; both support namespace member access)
- **Vue custom directives**: `v-focus-trap` maps to imported `vFocusTrap`
- **Vue `v-on`/`v-bind` object syntax**: `v-on="handlers"` credits the binding as used
- **Svelte directives**: `use:tooltip`, `transition:fade`, `animate:flip` credit imported actions/transitions
- **Svelte attribute expressions**: `class:active={isActive}`, shorthand `{page}` tracked
- **Svelte `$store` subscriptions**: `$page.url.pathname` credits the `page` import with `url` as member access

### Bug Fixes

- Fixed Svelte template scanner advancing by 1 byte instead of jumping past HTML tags (caused double-processing)
- Fixed panic on malformed brace expressions in Svelte template attributes

---

[#59](https://github.com/fallow-rs/fallow/pull/59) by [@M-Hassan-Raza](https://github.com/M-Hassan-Raza)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.14.2...v2.15.0
