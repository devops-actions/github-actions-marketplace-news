---
title: Fallow - Codebase Health
date: 2026-04-22 06:24:34 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.44.2
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.44.2**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript that identifies unused code, duplication, complexity, and architectural issues across an entire codebase. It automates codebase cleanup and optimization, helping developers improve maintainability, enforce boundaries, and streamline AI-assisted development workflows. With its zero-configuration setup, sub-second performance, and optional runtime insights for production behavior, Fallow provides a comprehensive and efficient solution for code quality and health analysis.

## What's Changed

## Interface-mediated class member usage, React Router 7 routes, and a crypto-rng dev-dep fix

Three targeted fixes landed on top of v2.44.1.

### Fixes

- **Class members used only through interface-typed bindings are no longer flagged unused** (thanks @M-Hassan-Raza, [#132](https://github.com/fallow-rs/fallow/issues/132)). A class method called only via an interface-typed variable or parameter (e.g. `const strategy: VirtualScrollStrategy = ...; strategy.attach();` where `FixedSizeScrollStrategy implements VirtualScrollStrategy`) appeared as an unused class member because the access resolved to the interface name, not the implementer. The extractor now tracks type-annotated bindings (locals, parameters, class fields, parameter properties) alongside `new ClassName()` bindings, and the member-usage analysis propagates interface member accesses to every class that `implements` the interface. Same-named interface exports in separate files stay isolated by `ExportKey`, so unrelated implementers do not silently credit each other. Real-world check on vite: 163 → 160 unused class members (3 false positives eliminated, zero new findings).
- **`react-router.config.ts` route modules with a `routesFn` are honored.** Config-driven route modules (`import { flatRoutes } from "@react-router/fs-routes"; export default { routes: flatRoutes() }`) are extracted the same way as static `routes: [...]` arrays, so route files referenced only through the filesystem convention are no longer reported as unused files in React Router 7 apps.
- **`rand 0.8` re-pinned in `fallow-license` dev-dependencies.** A Dependabot bump to `rand 0.9` broke the `OsRng` + `SignatureEncoding` wiring used by test key generation; dev-deps stay on 0.8 until the signing path is ported to 0.9's new `TryRngCore` trait set.

### Cache

- **Cache version bumped 43 → 44.** The new visitor handlers (parameter types, property types, `this.field` aliases) produce additional `MemberAccess` records, so warm caches must be invalidated on upgrade for users to pick up the fix without touching individual files.

### Thanks

- @M-Hassan-Raza for [#162](https://github.com/fallow-rs/fallow/pull/162), continuing an ongoing streak of contributor fixes to class-member detection.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.44.1...v2.44.2

