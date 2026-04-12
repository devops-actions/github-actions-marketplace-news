---
title: Fallow - Codebase Health
date: 2026-04-12 06:26:07 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.28.2
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.28.2**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a codebase analyzer designed for TypeScript and JavaScript projects to identify unused code, duplication, complexity issues, and architectural problems. It automates the detection of dead code, duplicate code blocks, and overly complex functions, providing actionable insights to improve code quality and maintainability. Built with a Rust-native engine, it delivers fast, zero-configuration analysis, making it ideal for streamlining code auditing and cleanup tasks.

## What's Changed

## What changed

Follow-up patch to v2.28.1's [#105](https://github.com/fallow-rs/fallow/issues/105) fix. v2.28.1 added a JSX `<script src>` / `<link href>` override so Hono layouts written in `.tsx` would correctly mark sibling `static/*.js` files as reachable. As [till pointed out](https://github.com/fallow-rs/fallow/issues/105), Hono layouts can also live in plain `.ts` files that emit HTML through the `hono/html` tagged template literal — and that path was still flagging assets as unused.

## Fix

A new `visit_tagged_template_expression` override mirrors the JSX path for tagged templates whose tag is the bare identifier `html`. SSR helpers like `hono/html`, `lit-html`, and `htm` all use this convention.

```ts layout.ts
import { html } from 'hono/html'

export const Layout = ({ title, body }) => html`
  <!doctype html>
  <html>
    <head>
      <title>${title}</title>
      <link rel="stylesheet" href="/static/style.css" />
      <script defer src="/static/otp-input.js"></script>
    </head>
    <body>${body}</body>
  </html>
`
```

`/static/style.css` and `/static/otp-input.js` are now marked reachable from this module, exactly as they would be from a `.html` file or a JSX layout.

## Implementation notes

- **Conservative tag matching.** Only the bare identifier `html` is recognised. `css`, `sql`, `gql`, `styled.div`, member expressions, and call expressions are deliberately ignored so unrelated tagged templates in the same file are never misread as HTML.
- **Per-quasi scanning.** Each template quasi is scanned independently with the same regex pipeline used by the HTML file parser (extracted into a shared `crate::html::collect_asset_refs` helper). Asset references that span an interpolation boundary (`` html`<script src=\"${base}/app.js\">` ``) are skipped rather than producing a garbled, unresolvable specifier.
- **Cache version 35 → 36** so warm caches miss the new extraction semantics. First run after upgrade will repopulate.

## Tests

- 14 unit tests covering bare/root-relative/remote/multi-line/comment-stripping/interpolation-boundary/non-`html`-tag/TSX cases.
- 1 end-to-end integration test via a new `hono-html-tagged-template` fixture exercising the full `` html`` `` → `static/otp-input.js` (`SideEffect`) reachability chain with no external dependencies.

## Upgrade

```bash
npx @fallow-cli/fallow      # or
cargo install fallow-cli
```

You should no longer need the `"entryPoints": ["static/**", ...]` workaround for `.ts` Hono layouts.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.28.1...v2.28.2
