---
title: Hwaro Deploy to Pages
date: 2026-04-05 22:00:41 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.10.1
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.10.1**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a fast and lightweight static site generator written in Crystal that automates the process of building high-performance websites from Markdown content with TOML front matter and Jinja2-compatible templates. It streamlines tasks such as parallel builds, incremental caching, content templating, SEO optimization, and deployment to platforms like GitHub Pages, Netlify, and Vercel. Additionally, it provides advanced features like live reloading, multilingual support, image processing, and built-in shortcodes to simplify web development workflows.

## What's Changed

## v0.10.1

### Added
- `doctor.ignore_rules` config option to suppress known doctor issues (#318)
- Alpine APK package build workflow (#311)
- RPM package build workflow
- AUR package and auto-publish workflow
- APK, DEB, RPM, and AUR installation methods to docs

### Changed
- Optimize `.deb` build by reusing prebuilt release binaries (#310)
- Use ARM native runners for CI Docker build instead of QEMU emulation (#309)
- Improve GHCR build performance: fix cache scope and parallelize platforms (#308)
- Rename AUR package from `hwaro-bin` to `hwaro`

### Fixed
- 19 bugs across core, content, services, and utils modules (#319)
- Config double parsing and doctor self-report issue
- Various packaging workflow fixes (descriptions, indentation, fail-fast)

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.10.0...v0.10.1
