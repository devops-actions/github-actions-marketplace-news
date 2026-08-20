---
title: Validate Syscribe Model
date: 2026-08-20 22:43:39 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: vscode-v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Syscribe is a documentation tool that maps SysMLv2 models into human-readable Markdown files with YAML frontmatter. It provides version-controlled and traceable models across the life of a program, making them easier to read and manage by humans, and enabling LLMs to generate or reason about them reliably. The tool supports 40+ element types, including native Requirements, TestCases, ADRs, Safety analysis tools, Security analysis tools, Variability analysis, and multi-repository composition features.
---


Version updated for **https://github.com/sjames/syscribe** to version **vscode-v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## Action Summary

Syscribe is a documentation tool that maps SysMLv2 models into human-readable Markdown files with YAML frontmatter. It provides version-controlled and traceable models across the life of a program, making them easier to read and manage by humans, and enabling LLMs to generate or reason about them reliably. The tool supports 40+ element types, including native Requirements, TestCases, ADRs, Safety analysis tools, Security analysis tools, Variability analysis, and multi-repository composition features.

## What's Changed

First Marketplace-ready release of the Syscribe VS Code extension (`editors/vscode/`) — a thin, pure-LSP client over `syscribe lsp` (`ADR-SYS-LSP-001`). Not yet published to the Marketplace itself (pending publisher/PAT setup); this release ships the installable `.vsix` directly.

### Added
- Auto-resolve the `syscribe` server binary: explicit `syscribe.serverPath` -> `syscribe` on `PATH` -> a managed copy downloaded from this repo's GitHub releases, cached per-version in the extension's global storage. New `syscribe.version` setting pins a release (`"latest"` by default).

### Fixed
- Activation no longer hangs or crashes with a raw stack trace if the server binary can't be resolved or the LSP process doesn't start cleanly — both paths now report a clean error notification (Open Settings / Show Output) instead.
- Activation is bounded end-to-end: a 15s timeout wraps the LSP handshake, startup-failure notifications are fired without blocking on dismissal, and the release-download path has a network request timeout — activation can no longer hang indefinitely on any of these.

### Changed
- `syscribe.serverPath` now defaults to empty (auto-resolve) instead of assuming `syscribe` is already on `PATH`.
- Bundled with esbuild (`dist/extension.js`) instead of shipping raw `tsc` output plus `node_modules` — cuts the packaged `.vsix` from 334 files/~493 KB down to 8 files/~94 KB.

### Marketplace packaging
Icon, Apache-2.0 LICENSE, repository/bugs/homepage metadata, keywords/categories, CHANGELOG, `.vscodeignore`.

Full changelog: https://github.com/sjames/syscribe/blob/main/editors/vscode/CHANGELOG.md

