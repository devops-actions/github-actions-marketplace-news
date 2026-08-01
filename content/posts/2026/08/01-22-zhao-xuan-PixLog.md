---
title: PixLog Visual Policy
date: 2026-08-01 22:12:41 +00:00
tags:
  - zhao-xuan
  - GitHub Actions
draft: false
repo: https://github.com/zhao-xuan/PixLog
marketplace: https://github.com/marketplace/actions/pixlog-visual-policy
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PixLog is a GitHub Action that analyzes image changes in Git repositories to detect modifications of specific pixels, identifies contributors, and provides provenance information. It helps ensure consistent quality and traceability of images by tracking visual diffs, commits, and their origin.
---


Version updated for **https://github.com/zhao-xuan/PixLog** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pixlog-visual-policy) to find the latest changes.

## Action Summary

PixLog is a GitHub Action that analyzes image changes in Git repositories to detect modifications of specific pixels, identifies contributors, and provides provenance information. It helps ensure consistent quality and traceability of images by tracking visual diffs, commits, and their origin.

## What's Changed

# PixLog v0.1.1

This release makes PixLog straightforward to discover, install, and try while
keeping its Git-native architecture unchanged.

![PixLog visual history](https://raw.githubusercontent.com/zhao-xuan/PixLog/main/docs/assets/demos/pixlog-visual-history.gif)

## What's New

- A runnable five-commit demo inside `demo/workspace`, built from licensed source
  images with real `pixlog run -- magick ...` commands.
- Chafa-powered inline before/after/heatmap previews for interactive terminals,
  with JSON and NDJSON output kept control-sequence free.
- The versioned **PixLog Visual Policy** composite Action for pull requests.
- Canonical Go module path `github.com/zhao-xuan/PixLog`, enabling standard remote
  `go install` commands.
- Reproducible README stills, demo recordings, and a 1280x640 social preview.

## Install

```bash
brew install zhao-xuan/tap/pixlog chafa
```

Or install the two command entry points with Go:

```bash
go install github.com/zhao-xuan/PixLog/cmd/pixlog@v0.1.1
go install github.com/zhao-xuan/PixLog/cmd/git-pixlog@v0.1.1
```

## Try the Demo

```bash
git clone https://github.com/zhao-xuan/PixLog.git
cd PixLog
brew install zhao-xuan/tap/pixlog chafa imagemagick
bash demo/setup.sh
cd demo/workspace
pixlog diff HEAD~1 HEAD -- assets/hero.png
```

## GitHub Action

```yaml
- uses: actions/checkout@v4
  with:
    fetch-depth: 0
- uses: zhao-xuan/PixLog@v0.1.1
  with:
    policy: .pixlog-policy.json
```

## Known Limitations

- Built-in pixel decoding currently covers PNG, JPEG, and GIF. Other recognized
  formats retain exact-byte history and provenance but may not have visual diff.
- Photoshop and browser adapters still require host packaging and validation.
- There is no hosted collaboration service, HTTP lock service, or Web review UI.
- Hosted-model recipes may be provenance-only and are not claimed to reproduce
  deterministically when parameters are unavailable.

**Full changelog:** https://github.com/zhao-xuan/PixLog/compare/v0.1.0...v0.1.1
