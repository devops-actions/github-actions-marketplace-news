---
title: github-profile-crt
date: 2026-04-11 21:45:46 +00:00
tags:
  - stefashkaa
  - GitHub Actions
draft: false
repo: https://github.com/stefashkaa/github-profile-crt
marketplace: https://github.com/marketplace/actions/github-profile-crt
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/stefashkaa/github-profile-crt** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-profile-crt) to find the latest changes.

## Action Summary

The `github-profile-crt` GitHub Action automates the generation of a retro-style CRT-themed contribution chart as an SVG, complete with animated effects and customizable themes. It retrieves user or organization contribution data, renders it into a visually engaging chart, and can optionally commit the output back to a repository. This tool is ideal for enhancing GitHub profile or project READMEs with dynamic, visually appealing activity panels.

## What's Changed

### Added

#### Core product

- Initial public release of **github-profile-crt**: CRT/equalizer-styled contribution SVG generator for GitHub profile and repository READMEs.
- GitHub Action entrypoint (`stefashkaa/github-profile-crt@v1`) with Node 24 runtime.
- Local CLI workflow for development (`pnpm generate:dev`) and production build flow via Vite + ncc.

#### Data collection

- Personal account contribution fetching via GitHub GraphQL.
- Organization contribution aggregation via GitHub REST APIs.
- Optional inclusion of private organization repositories via `include-org-private` (token-dependent).
- Contribution window selection:
  - Rolling one-year window for current year.
  - Full Jan–Dec window for historical years.

#### SVG rendering

- Main chart with CRT equalizer-style 3D bars, pointer caps, glow, scanline/noise aesthetics, month labels, year labels, and Y-axis labels.
- Optional grid rendering (`show-grid`).
- Dashboard section (`show-stats`) with:
  - `STACK PROFILE` language distribution widget.
  - `ACTIVITY VECTOR` radar widget (commit/PR/issue/review + total).
- Footer stats strip (`show-stats-footer`) with user, contributions, best week, optional last week, and credits.
- Optional hover titles (`enable-hover-attrs`) for non-GitHub embedding contexts.

#### Theme system

- Preset themes:
  - `crt`, `amber`, `ice`, `ruby`, `mint`, `mono`, `winamp`, `neon`, `rainbow`, `chaos`, `chaos-max`, `static`.
- Theme selection modes:
  - Single theme.
  - Comma-separated set (`themes: crt,winamp,rainbow`).
  - All themes (`themes: all`).
- Light/dark output generation with `-dark.svg` and `-light.svg` variants.
- Custom theme mode (`themes: custom`) with palette override env vars and optional custom light overrides.

#### Action inputs/outputs and automation

- Action inputs:
  - `github-user`, `github-token`, `output-dir`, `themes`, `year`,
  - `show-grid`, `show-stats`, `show-stats-footer`,
  - `enable-hover-attrs`, `include-org-private`, `minify-svg`,
  - `commit-and-push`, `commit-message`.
- Action outputs:
  - `output-directory`, `generated-files`, `weeks`, `total-contributions`, `committed`.
- Built-in commit/push flow for generated assets (`commit-and-push: true` by default).

#### Optimization and quality

- SVG optimization pipeline (SVGO) enabled by default (`minify-svg: true`).
- Runtime and rendering optimizations focused on GitHub profile performance while preserving visuals.
- TypeScript-first codebase architecture split into config/data/render/action modules.
- Tooling and quality stack:
  - ESLint, Prettier, Husky, lint-staged, TypeScript typecheck.
- Documentation suite for setup, themes, custom palettes, org/private token setup, troubleshooting, and year windows.

