---
title: Newmatik Image Optimizer
date: 2026-06-30 06:44:10 +00:00
tags:
  - newmatik
  - GitHub Actions
draft: false
repo: https://github.com/newmatik/image-optimizer
marketplace: https://github.com/marketplace/actions/newmatik-image-optimizer
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/newmatik/image-optimizer** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/newmatik-image-optimizer) to find the latest changes.

## What's Changed

## imageopt — cross-platform image optimizer (CLI + GitHub Action)

A fast, reliable, single-binary image optimizer in the spirit of ImageOptim —
optimizes JPEG, PNG, GIF, WebP and SVG **in place**, reports how much space was
saved, and is built for CI automation. No runtime dependencies; all codecs are
compiled in.

### Highlights
- **Lossless by default, opt-in lossy** (`--lossy` / `-q`).
- **Safe to run on every push:** lossless is deterministic and idempotent, and
  lossy converges after one pass (`--min-savings`), so a commit-back workflow
  won't keep rewriting or degrading images.
- **Never corrupts or enlarges a file:** every re-encode is re-decoded and
  validated, the smallest valid result wins, and writes are atomic.
- Cross-platform prebuilt binaries: macOS (arm64/x64), Linux (x64/arm64),
  Windows (x64), each with a SHA256 checksum.

### Changes in 0.2.1
- Renamed the Action to **Newmatik Image Optimizer** for the GitHub Marketplace
  listing (the `uses: newmatik/image-optimizer@…` reference is unchanged) and
  sharpened the listing description. No functional changes vs 0.2.0.

### Use the Action
```yaml
- uses: actions/checkout@v4
- uses: newmatik/image-optimizer@v0.2.1
  with:
    paths: "src/assets"
    recursive: "true"
# optionally commit the result back, or add `check: "true"` to gate a PR
```

### Install the CLI
Download the binary for your platform from the assets below, or build from source
(`cargo install --path crates/cli`). Licensed GPL-3.0-or-later.

