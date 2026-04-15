---
title: Fallow - Codebase Health
date: 2026-04-15 06:21:58 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.36.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.36.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-based codebase analyzer for TypeScript and JavaScript that identifies unused code, duplication, complexity, and architectural issues with sub-second performance and zero configuration. It automates the detection of dead code, duplicate code patterns, and overly complex functions, while also providing tools to audit changes, fix issues, and track dependencies. Its key capabilities include comprehensive dead code analysis, detection of circular dependencies, and real-time re-analysis of file changes, making it an efficient tool for maintaining cleaner and more maintainable codebases.

## What's Changed

Three closely related additions and one important fix that together close a long-standing silent-failure gap around config discovery, especially in monorepos.

## Highlights

### `fallow config` subcommand

Print the resolved config and which file was loaded. Useful when you're debugging "is my `.fallowrc.json` actually being picked up?" — especially in workspaces where multiple configs may be in play.

```bash
fallow config            # path on the first line, then JSON resolved config
fallow config --path     # only the path (scriptable)
```

Honors the global `--config <path>` flag. Exit 0 if a config was found, 3 if only defaults are in effect, 2 on error. Mirrors `eslint --print-config` and `dprint output-resolved-config`.

### `loaded config: <path>` disclosure

Every human-format CLI run now prints which config was loaded as a single stderr line at the start. Suppressed by `--quiet` and non-human formats so JSON/SARIF/markdown/compact/codeclimate consumers see clean output.

The LSP emits the same information per project root via `window/logMessage`, visible in the editor's Output panel (no extension changes required).

### `sealed: true` config field

```jsonc
{
  "sealed": true,
  "extends": ["./base.json"]
}
```

Marks a config as self-contained. With `sealed: true`:

- `extends` paths must be file-relative
- `extends` paths must resolve **within** the config's own directory (no `../` escapes)
- `npm:` and `https:` extends are rejected with a clear error

Useful for library publishers shipping `.fallowrc.json` as part of an npm package, or monorepo sub-packages that intentionally do not inherit from the root config. Discovery itself is unchanged — first-match-wins already handles the common isolation case.

## Bug fix: monorepo config discovery

Config search previously stopped at the first `package.json` it encountered while walking up the directory tree. In monorepos (pnpm/npm/yarn workspaces, Nx), each sub-package has its own `package.json`, so the walk from a sub-package never reached the root `.fallowrc.json` — silently ignoring the root config.

This caused the VS Code extension and LSP to use defaults instead of the configured rules whenever you opened a file inside a workspace sub-package. Fixed in #113.

Discovery now stops only at VCS boundaries (`.git`, `.hg`, `.svn`), matching Prettier, ESLint, and Biome. A sub-package with its own `.fallowrc.json` still wins via first-match-wins.

## Related links

- [`fallow config` reference](https://docs.fallow.tools/cli/config)
- [`sealed` configuration option](https://docs.fallow.tools/configuration/overview)
- [Loaded config disclosure](https://docs.fallow.tools/cli/global-flags)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.35.0...v2.36.0
