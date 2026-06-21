---
title: Build .mcpb bundle
date: 2026-06-21 15:06:35 +00:00
tags:
  - Anselmoo
  - GitHub Actions
draft: false
repo: https://github.com/Anselmoo/mcp2mcpb
marketplace: https://github.com/marketplace/actions/build-mcpb-bundle
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Anselmoo/mcp2mcpb** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-mcpb-bundle) to find the latest changes.

## What's Changed

### Added
- `--latest` flag: the launch command re-resolves the newest published version on every
  start — npm/uvx use `pkg@latest`; uvx `--from` recipes use `--refresh-package` (since
  `@latest` is not a valid PEP 508 `--from` spec). Conflicts with `--pin`.
### Changed
- Reference-mode bundles now invoke `uv tool run --no-build …` so extensions never
  compile dependencies at launch — a missing/arch-mismatched wheel fails fast with a
  clear "no compatible wheel" error instead of a native build failure.
- Scoped npm package names are flattened in the manifest `name`/`display_name` and the
  bundle filename (`@modelcontextprotocol/server-sequential-thinking` →
  `server-sequential-thinking`) so Claude Desktop shows a clean, untruncated title.
### Documentation
- README: troubleshooting note for Apple-Silicon machines where an Intel Homebrew `uv`
  shadows the arm64 `uv` and triggers cross-compile failures (e.g. `cryptography` /
  `openssl-sys`).

