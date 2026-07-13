---
title: Setup Sema
date: 2026-07-13 11:33:35 +00:00
tags:
  - sema-lisp
  - GitHub Actions
draft: false
repo: https://github.com/sema-lisp/setup-sema
marketplace: https://github.com/marketplace/actions/setup-sema
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Sema setup action automates the installation of the Sema Lisp language in GitHub Actions workflows. It supports cross-platform installations, checksum verification, and tool caching to improve performance. The main functionality is to set up the Sema interpreter and provide options for pinning versions and custom download URLs. Users can specify the version they want to use via inputs or rely on default settings from `.sema-version` or `.tool-versions`.
---


Version updated for **https://github.com/sema-lisp/setup-sema** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-sema) to find the latest changes.

## Action Summary

The Sema setup action automates the installation of the Sema Lisp language in GitHub Actions workflows. It supports cross-platform installations, checksum verification, and tool caching to improve performance. The main functionality is to set up the Sema interpreter and provide options for pinning versions and custom download URLs. Users can specify the version they want to use via inputs or rely on default settings from `.sema-version` or `.tool-versions`.

## What's Changed

First release of **setup-sema** — install the [Sema](https://sema-lang.com) language in GitHub Actions.

```yaml
- uses: sema-lisp/setup-sema@v1
- run: sema my-script.sema
```

### Highlights
- **Cross-platform**: Linux x64/arm64, macOS Intel + Apple Silicon, Windows x64.
- **Checksum-verified, fail-closed** installs — resolves assets from cargo-dist's `dist-manifest.json`; a missing/mismatched checksum aborts.
- **Tool-cached** — re-runs of the same version skip the download.
- **Version pinning** via input, `.sema-version`, or `.tool-versions`.
- Hardened against version path-traversal; the API token is never sent to asset downloads.

See the [README](https://github.com/sema-lisp/setup-sema#readme) for all inputs/outputs, caching, security, and troubleshooting.
