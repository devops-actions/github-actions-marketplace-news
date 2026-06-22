---
title: Lingo.Dev AI Localization
date: 2026-06-22 23:52:10 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.137.5
dependentsNumber: "100"
actionType: Composite
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.137.5**.

- This action is used across all versions by **100** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## What's Changed

### Patch Changes

- [#2142](https://github.com/lingodotdev/lingo.dev/pull/2142) [`1e2136d`](https://github.com/lingodotdev/lingo.dev/commit/1e2136de8f9077826391e8abb4cfc8cddc56137f) Thanks [@moygospadin](https://github.com/moygospadin)! - fix(deps): drop external-editor and gray-matter to clear remaining npm audit findings

  These two dependencies were the only remaining source of the high/moderate `tmp` and `js-yaml` advisories in a consumer `npm audit`:
  - `external-editor` pulled a vulnerable `tmp@^0.0.33` (high, path traversal). Replaced its single use (the interactive editor prompt in the deprecated `i18n` command) with a small `node:fs`/`node:child_process` helper that uses `mkdtempSync` — no `tmp` package, no path-traversal surface.
  - `gray-matter` pulled `js-yaml@3` (moderate). Both call sites already injected the patched `yaml` package as gray-matter's engine, so its bundled `js-yaml` was dead weight. Replaced with a tiny front-matter helper built on `yaml`; `gray-matter` is kept only as a `devDependency` test oracle that the loader specs assert equivalence against.

  Net effect on a fresh consumer `npm audit`: removes the last `high` (`tmp`) plus the `js-yaml`/`gray-matter`/`external-editor` findings.
