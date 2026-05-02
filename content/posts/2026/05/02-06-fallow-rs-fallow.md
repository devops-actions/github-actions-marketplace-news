---
title: Fallow - Codebase Intelligence
date: 2026-05-02 06:01:10 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.61.0
dependentsNumber: "32"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.61.0**.

- This action is used across all versions by **32** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action provides static and optional runtime analysis for TypeScript and JavaScript codebases to identify unused code, duplication, complexity, and architecture issues. It automates tasks like detecting dead code, locating duplicated or overly complex sections, and assessing codebase health, helping developers optimize and maintain cleaner, more efficient code. With zero configuration and sub-second execution, it offers a lightweight and fast solution for improving code quality and enabling AI-assisted development workflows.

## What's Changed

## What's new

### Vitest `vi.mock()` credits the `__mocks__/` sibling

`vi.mock('./services/api')` now credits the auto-mock sibling `./services/__mocks__/api` as used, so vitest's `__mocks__/<file>` convention does not surface as `unused-file`. Handles string-literal sources, expressionless template literals, and the `vi.mock(import('./api'))` form. Path-alias prefixes (`@/src/...`) are preserved so the importer's tsconfig aliases resolve the synthetic specifier.

```ts
import { fetchUser } from '@/src/services/api';
vi.mock('@/src/services/api');
//             ↑ __mocks__/api.ts is now credited as used
```

Bare-package mocks paired with a project-root `__mocks__/<pkg>.ts` and Jest's `jest.mock(...)` are intentionally out of scope.

Thanks @boroth for the report. Closes #251.

### GraphQL document `#import` edges follow into the module graph

`.graphql` and `.gql` files are now discovered as source files, and `#import "./fragment.graphql"` lines emit `SideEffect` imports so fragment and schema documents reachable only through GraphQL import comments stay connected. Extensionless relative imports probe `.graphql` and `.gql` automatically.

Thanks @lsbyerley for the report. Closes #250.

## Bug fixes

### Angular 14+ `inject()` field-initializer DI is recognized

Class fields written `private readonly inner = inject(InnerService)` (or `inject<InnerService>()`) now register `this.inner -> InnerService`, so any `this.inner.member` chain credits `member` as used on `InnerService`. Previously every member of an `inject()`-acquired service consumed only via the field chain was reported as `unused-class-member`; the legacy constructor-parameter form was unaffected. The `inject` callee is gated by a named-import check against `@angular/core`, so a same-named `inject` from any other module is intentionally ignored.

Thanks @OmerGronich for the report. Closes #244.

### Playwright POM fixture members are credited through typed `base.extend<T>()` definitions

Methods on a Page Object Model class referenced exclusively from a Playwright test callback (`test('name', async ({ adminPage }) => { adminPage.method() })`) no longer surface as `unused-class-members`. Fixture definitions accept a named type alias (`type MyFixtures = { adminPage: AdminPage }`), an inline type literal, or any intersection / parenthesized form. The `base.extend` callee is gated against `@playwright/test`-named imports.

Thanks @vethman for the report. Closes #246.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.60.0...v2.61.0

