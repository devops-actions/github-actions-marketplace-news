---
title: SSG - Static Site Generator
date: 2026-08-04 22:21:23 +00:00
tags:
  - spagu
  - GitHub Actions
draft: false
repo: https://github.com/spagu/ssg
marketplace: https://github.com/marketplace/actions/ssg-static-site-generator
version: v1.8.17
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  SSG is a static site generator written in Go that converts Markdown content with YAML frontmatter into a complete website, including features like built-in themes, templates, search engines, and image processing. It optimizes performance and ensures deterministic builds, making it suitable for blogs and WordPress migrations while also supporting documentation and other types of websites.
---


Version updated for **https://github.com/spagu/ssg** to version **v1.8.17**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssg-static-site-generator) to find the latest changes.

## Action Summary

SSG is a static site generator written in Go that converts Markdown content with YAML frontmatter into a complete website, including features like built-in themes, templates, search engines, and image processing. It optimizes performance and ensures deterministic builds, making it suitable for blogs and WordPress migrations while also supporting documentation and other types of websites.

## What's Changed

## Installation

### Quick Install (Linux/macOS)
```bash
curl -sSL https://raw.githubusercontent.com/spagu/ssg/main/install.sh | bash
```

### Package Managers
- **Homebrew**: `brew install spagu/tap/ssg`
- **Snap**: `snap install ssg`
- **Debian/Ubuntu**: Download `.deb` file below
- **Fedora/RHEL**: Download `.rpm` file below

### Checksums
See `checksums.sha256` for file verification.

📖 Full documentation: https://github.com/spagu/ssg#readme


## What's Changed
* 1.8.17 — up to 5.25x faster builds, four parallel-render races fixed, determinism + golden now in CI by @spagu in https://github.com/spagu/ssg/pull/72


**Full Changelog**: https://github.com/spagu/ssg/compare/v1.8.16...v1.8.17
