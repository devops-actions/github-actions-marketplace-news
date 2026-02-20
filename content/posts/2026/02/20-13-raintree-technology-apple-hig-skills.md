---
title: HIG Doctor
date: 2026-02-20 13:22:09 +00:00
tags:
  - raintree-technology
  - GitHub Actions
draft: false
repo: https://github.com/raintree-technology/apple-hig-skills
marketplace: https://github.com/marketplace/actions/hig-doctor
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/raintree-technology/apple-hig-skills** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hig-doctor) to find the latest changes.

## Action Summary

This GitHub Action integrates Apple Human Interface Guidelines (HIG) as modular AI skills for tools like Claude Code and Cursor, enabling developers to access detailed design principles and best practices for building Apple platform-compliant interfaces. It automates the validation and consistency of these skills using a CLI/TUI tool called `hig-doctor`, ensuring structured guidance and repository health. Additionally, it provides a comprehensive set of AI-ready skills covering various aspects of Apple HIG, such as components, patterns, platforms, and technologies, facilitating efficient and AI-driven design workflows.

## Release notes

## What's New

This release brings significant improvements to tooling, CI reliability, accessibility, and the website since the initial v1.0.0 launch.

---

###  HIG Doctor — New CLI + TUI Validator

A brand-new `hig-doctor` package is included in this release. It validates skill structure and repository consistency, producing a health score for the repo.

- Run locally: `node packages/hig-doctor/src/cli.js . --verbose`
- - Interactive TUI mode: `node packages/hig-doctor/src/cli.js . --tui`
- - Use as a GitHub Action in other repositories via `raintree-technology/apple-hig-skills@main`
- - Publish flow via `.github/workflows/publish-hig-doctor.yml` (triggers on `hig-doctor-v*` tags or manual dispatch)
###  CI Improvements

- Added hig-doctor CI workflow (`hig-doctor-ci.yml`) with hardened validation
- - CI runs `npm ci`, `npm test`, and CLI smoke checks (`--verbose`, `--score`, `--strict`)
- - Auto-fix lint and formatting integrated into the build workflow
- - CI now triggers on workflow file changes
- - Hardened version and nested reference validation in hig-doctor
###  Accessibility & HIG Compliance

- Achieved **100% HIG compliance** (21/21 issues resolved, A+ grade)
- - Fixed color contrast: muted-foreground increased from 55% → 65% lightness (3.8:1 → 5.2:1, exceeds WCAG AA)
- - Added keyboard navigation and focus management to Skills table expandable rows
- - Added `role=region` and `aria-label` for screen reader support
- - Search live region (`role=status`, `aria-live=polite`) for result count announcements
- - All external links now include `hrefLang=en`
- - Added `prefers-contrast: more` support for high-contrast mode
###  Website Updates

- Redesigned token comparison with a dramatic vertical bar chart (92% token savings visualization)
- - Rewrote FAQ with improved objection-handling questions and answers
- - Added Product Hunt link to hero section
- - Mobile responsive fixes: card layouts, text sizing, touch targets
- - Added print stylesheet (black on white, hides nav/footer, shows URLs)
- - HIG-compliant 8pt grid spacing throughout (headers, cards, badges)
- - Light mode / dark mode with `prefers-color-scheme` auto-detection
- - Apple-style pill active state in header navigation
###  Refactoring

- Renamed component skills for clarity:
-   - `hig-components-selection` → `hig-components-controls`
-   - `hig-components-navigation` → `hig-components-search`
-   - `hig-components-presentation` → `hig-components-dialogs`
- - Aligned repo with `skills.sh` format for CLI discovery
- - Added explicit `skills` array to `marketplace.json`
- - Replaced ESLint with Biome for linting and formatting
- - Stripped scraped nav boilerplate from all 156 reference files (70% size reduction)
- - Converted 19,393 relative links to full `https://developer.apple.com/` URLs
###  Testing

- Added hig-doctor CLI integration test coverage
- - Verified specs 002 and 004 acceptance criteria
---

**Full Changelog**: https://github.com/raintree-technology/apple-hig-skills/compare/v1.0.0...v1.1.0
