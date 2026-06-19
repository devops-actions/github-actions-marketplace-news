---
title: Lingo.Dev AI Localization
date: 2026-06-19 22:24:35 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.137.2
dependentsNumber: "100"
actionType: Composite
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.137.2**.

- This action is used across all versions by **100** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## What's Changed

### Patch Changes

- [#2125](https://github.com/lingodotdev/lingo.dev/pull/2125) [`1769abe`](https://github.com/lingodotdev/lingo.dev/commit/1769abe19bed227e17b0061de5973ef135c2d3bf) Thanks [@cherkanovart](https://github.com/cherkanovart)! - Resolve all high and critical security advisories. Two layers:
  - **Repo tree / `pnpm audit`**: root pnpm `overrides` pin patched, major-capped versions of transitive dependencies (axios, vite, ws, form-data, fast-xml-parser, shell-quote, lodash, serialize-javascript, minimatch, picomatch, tmp, and others), taking `pnpm audit` from 121 high + 5 critical to 0.
  - **Published packages (consumer-facing)**: bump the vulnerable runtime dependencies that ship in the published manifests to patched versions so consumers no longer install or run them — `lodash` 4.17.23 → 4.18.1 (`lingo.dev`, `@lingo.dev/_react`, `@lingo.dev/_compiler`, `@lingo.dev/compiler`), `@modelcontextprotocol/sdk` 1.22.0 → 1.26.0 (`lingo.dev`), `ws` 8.18.3 → 8.21.0 (`@lingo.dev/compiler`). All patch/minor in-major bumps; no API changes.

- Updated dependencies [[`1769abe`](https://github.com/lingodotdev/lingo.dev/commit/1769abe19bed227e17b0061de5973ef135c2d3bf)]:
  - @lingo.dev/_react@0.7.8
  - @lingo.dev/_compiler@0.12.8
