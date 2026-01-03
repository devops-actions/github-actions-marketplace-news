---
title: Git Chronoscope Time-Lapse
date: 2026-01-03 05:35:20 +00:00
tags:
  - southpawriter02
  - GitHub Actions
draft: false
repo: https://github.com/southpawriter02/git-chronoscope
marketplace: https://github.com/marketplace/actions/git-chronoscope-time-lapse
version: v0.9.0-beta.2
dependentsNumber: "?"
---


Version updated for **https://github.com/southpawriter02/git-chronoscope** to version **v0.9.0-beta.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-chronoscope-time-lapse) to find the latest changes.

## Action Summary

The `git-chronoscope` GitHub Action is a tool for generating time-lapse visualizations (videos or animated GIFs) that showcase the evolution of a Git repository's codebase over time. It automates the process of visualizing file changes, additions, and deletions, providing an engaging way to demonstrate a project's history. Key features include a web-based GUI for easy configuration, customizable output (e.g., resolution, colors, and frame rates), and privacy options to anonymize author information.

## Release notes

## [0.9.0-beta.2] - 2026-01-02

npm package release for JavaScript ecosystem distribution.

### Added
- npm package for Node.js users (`npm install -g git-chronoscope` or `npx git-chronoscope`)
- Programmatic JavaScript/TypeScript API for integration
- TypeScript type definitions
- npm publish workflow for automated releases

### Technical Details
The npm package is a wrapper that requires Python and the git-chronoscope Python package to be installed. It provides:
- CLI wrapper that passes through all arguments to the Python CLI
- Programmatic API via `require('git-chronoscope')`
- Dependency checking utilities (Python version, FFmpeg, etc.)
- Helpful error messages when prerequisites are missing
