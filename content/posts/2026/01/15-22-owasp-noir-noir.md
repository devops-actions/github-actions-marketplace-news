---
title: OWASP Noir Action
date: 2026-01-15 22:03:19 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v0.27.0
dependentsNumber: "0"
---


Version updated for **https://github.com/owasp-noir/noir** to version **v0.27.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

Noir is a security tool that analyzes source code to identify and inventory endpoints, including shadow APIs, hidden routes, and deprecated endpoints, bridging the gap between Static Application Security Testing (SAST) and Dynamic Application Security Testing (DAST). It automates attack surface discovery by providing accurate, authenticated endpoint data, enabling more comprehensive and precise security scans while integrating into DevSecOps pipelines and supporting tools like ZAP and Burp Suite. With AI-powered analysis and multi-format output, Noir eliminates blind spots and enhances testing workflows for security teams and pentesters.

## Release notes

## What's Changed
All issues and pull requests in [Milestone 31](https://github.com/owasp-noir/noir/milestone/31) have been included in this release. v0.27.0 is a major update that significantly expands support for new frameworks/technologies, greatly improves technology visibility, and adds more flexible output options.

### ✨ New Features

- **Enhanced technology information output**  
  - Added `technology` field to detailed endpoint information (#915)  
  - `--include-techs` flag: Control whether to show technology detection results (#929)  
  - `--only-techs` flag: Run only specific technology detectors (#909)

- **New framework/language support**  
  - **NuxtJS** detector & analyzer (#956)  
  - **TanStack Router** detector & analyzer (TypeScript) (#962)  
  - **Swift - Hummingbird** detector & analyzer (#899)  
  - **Swift - Kitura** detector & analyzer (#898)

- **Extended parameter analysis**  
  - Java & Scala Play analyzer now supports **body**, **header**, and **cookie** parameters (#931)

- **New output format**  
  - Added **TOML** output format (`-f toml`) (#904)

- **LLM & reporting improvements**  
  - Added **OpenRouter** as an LLM provider (#898)  
  - Custom HTML report support (#967)

### ⚡ Enhancements

- Greatly improved visual readability of `--diff-path` output  
  → Added icons, counts, and better separators (#925)  
- Updated technology metadata for Elixir Phoenix / Plug (#930)  
- Added test coverage for `--only-techs` & `--exclude-techs` flags (#917)

### 🐛 Bug Fixes

- Fixed analysis being skipped when project is located in `/tmp` or similar paths (#912)  
- Fixed FastAPI detector missing `import fastapi` style imports (#935)  
- Fixed false positives in Go analyzer when HTTP method names (.Get, .Post, etc.) appeared on non-router objects (#941)  
- Fixed file detection failure with `Dir.glob()` when paths contain special characters (#964)

---

We sincerely thank all contributors for their awesome code and contributions in this release v0.27.0! Especially, the newly joined @4ICH4 and @Sija have made significant contributions at the code and feature levels. And a special shoutout to our co-leader @ksg97031 for always providing tremendous support. Thanks to you all, NOIR has taken a big step forward. We're grateful for your continued involvement!

v0.27.0 brings major improvements in frontend framework support (NuxtJS, TanStack Router), Swift server-side frameworks, and dramatically better technology stack visibility and output customization.

Happy scanning! 🚀

## New Contributors
* @4ICH4 made their first contribution in https://github.com/owasp-noir/noir/pull/911
* @Sija made their first contribution in https://github.com/owasp-noir/noir/pull/940

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v0.26.0...v0.27.0
