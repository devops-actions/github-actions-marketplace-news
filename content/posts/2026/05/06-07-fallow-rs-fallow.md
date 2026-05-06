---
title: Fallow - Codebase Intelligence
date: 2026-05-06 07:29:57 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.65.0
dependentsNumber: "43"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.65.0**.

- This action is used across all versions by **43** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript codebases, designed to identify unused code, duplication, complexity issues, and architectural inconsistencies. It automates the process of detecting inefficiencies, reducing technical debt, and maintaining code quality without requiring configuration or a runtime environment. Additionally, it offers optional runtime insights to analyze production execution paths, making it a valuable tool for streamlining development and improving maintainability.

## What's Changed

## Highlights

Two new framework integrations and four detection-accuracy fixes from external contributors. All five external issues filed since v2.64.0 are credited and closed.

## Added

### Lit and Web Components: registered classes are now credited as used

Classes registered through runtime side effects on module load are now credited even when no other file imports them by name.

Two patterns are recognized end-to-end:

1. **Lit `@customElement('tag')`** decorator on a class, in named-import form (`import { customElement } from 'lit/decorators.js'`), aliased imports, namespace-call form (`@decorators.customElement('tag')`), and anonymous `export default @customElement('x') class extends LitElement {}`. The decorator binding is verified against `lit/decorators.js` / `lit/decorators/custom-element.js` before crediting, so a same-named decorator from any other module is intentionally ignored.
2. **`customElements.define('tag', ClassRef)`** call expressions at any depth where the second argument is an `Identifier`.

Lit lifecycle methods (`render`, `updated`, `connectedCallback`, etc.) are heritage-scoped to `LitElement` / `ReactiveElement` subclasses via the new `lit` plugin. Native Custom Elements lifecycle members (`connectedCallback`, `observedAttributes`, `adoptedCallback`, etc.) are heritage-scoped allowlists for `HTMLElement` subclasses, so they work without a Lit dependency. Non-lifecycle methods on Web Component classes are still reported, so member-level dead code detection on the rest of the class is preserved.

### `schema.json` shipped inside the npm package

Consumers can now point `$schema` at the bundled file:

```jsonc
{
  "$schema": "./node_modules/fallow/schema.json",
  ...
}
```

The published `fallow` package now contains `schema.json`, so editors get version-aligned autocomplete and validation with no network round-trip to `raw.githubusercontent.com`. The release workflow copies the file in before publishing, and CI asserts it is present in every published tarball so the package never silently loses it.

Thanks [@ChrisJr404](https://github.com/ChrisJr404) for the patch and [@OmerGronich](https://github.com/OmerGronich) for the report. (Closes [#275](https://github.com/fallow-rs/fallow/issues/275))

## Fixed

### Angular signal queries and plural `QueryList` iteration are traced for `unused-class-members`

Six previously-missed Angular query patterns now feed the bound-member-access pipeline:

- `viewChild<T>(...)`, `contentChild<T>(...)` (singular signal factories)
- `viewChildren<T>(...)`, `contentChildren<T>(...)` (plural signal factories)
- `@ViewChildren ... readonly q?: QueryList<T>`, `@ContentChildren ... readonly q?: QueryList<T>` (plural decorator queries)

Methods called via `this.vc()?.method()` and `this.vcs().forEach(c => c.method())` (and the `this.q?.forEach(...)` decorator form) are now credited correctly. The pre-existing `@ViewChild` and `@ContentChild` paths continue to work unchanged.

Thanks [@ChrisJr404](https://github.com/ChrisJr404) for the patch and [@OmerGronich](https://github.com/OmerGronich) for the eight-pattern reproducer. (Closes [#274](https://github.com/fallow-rs/fallow/issues/274))

### `vite.config.*` default export reachable under `--include-entry-exports`

The vite plugin now contributes `used_exports` for `vite.config.{ts,js,mts,mjs}` (default), mirroring the existing vitest treatment. With `--include-entry-exports` the strict reachability check previously surfaced the default export even though Vite's CLI consumes it.

Thanks [@ChrisJr404](https://github.com/ChrisJr404) for the patch and [@filipw01](https://github.com/filipw01) for the report. (Fixes [#282](https://github.com/fallow-rs/fallow/issues/282))

### `prisma.config.*` recognized as an entry point

The prisma plugin now treats `prisma.config.{ts,mts,cts,js,mjs,cjs}` as an entry, so the Prisma 6 config file (and any imports it reaches) stays alive in the graph and does not surface as `unused-file`.

Thanks [@ChrisJr404](https://github.com/ChrisJr404) for the patch and [@FunctionDJ](https://github.com/FunctionDJ) for the report. (Closes [#281](https://github.com/fallow-rs/fallow/issues/281))

### `fallow migrate` accepts JSONC trailing commas

Real-world JSONC files (`tsconfig.json`, `.vscode/settings.json`, and similar) routinely trail commas before `}` / `]`. `load_json_or_jsonc` previously ran the input through comment-stripping and then handed the result to `serde_json`, which rejects trailing commas. A final byte-level pass now strips them only when the comment-stripped parse fails, leaves commas inside string literals untouched, and still rejects genuinely malformed input like `{,}` (the `comma_follows_json_value` predicate keeps malformed leading-commas reporting as parse errors).

Thanks [@ChrisJr404](https://github.com/ChrisJr404) for the patch and [@madflow](https://github.com/madflow) for the report. (Closes [#276](https://github.com/fallow-rs/fallow/issues/276))

### Vue `generic` and Svelte `generics` script-tag attributes scan for type references

A type-only import whose only consumer was a generic constraint on the `<script>` tag was falsely flagged as `unused_types` because the constraint lives on the tag, not in the script body:

```vue
<script setup lang="ts" generic="T extends Test<boolean>">
import type { Test } from './types';
defineProps<{ items: T[] }>();
</script>
```

The SFC parser now appends an augmented-source probe that re-introduces the constraint to the parse so the imported type's binding shows up as referenced and `oxc_semantic` no longer classifies it as unused. Affects Vue SFCs (`generic="..."`) and Svelte 5 components (`generics="..."`).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.64.0...v2.65.0

