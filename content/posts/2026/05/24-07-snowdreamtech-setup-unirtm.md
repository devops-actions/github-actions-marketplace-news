---
title: Setup UniRTM
date: 2026-05-24 07:07:52 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unirtm
marketplace: https://github.com/marketplace/actions/setup-unirtm
version: v0.1.13
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/snowdreamtech/setup-unirtm** to version **v0.1.13**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unirtm) to find the latest changes.

## Action Summary

The **`setup-unirtm`** GitHub Action automates the installation and configuration of **UniRTM (Uni Runtime and Tools Manager)**, a tool for managing runtimes and development tools across different platforms. It simplifies setup by supporting multiple installation methods (e.g., npm, pip, GitHub releases) with smart auto-detection, caching for faster runs, and optional GitHub proxy support for restricted networks. This action is designed to streamline development workflows by providing a cross-platform, efficient, and flexible tool setup process.

## What's Changed

- feat: add trust input parameter to automatically run unirtm trust (16c6613)
- docs: update action version references to v0 in README (9681167)
- chore: sync package version to 0.0.12 (e069934)
- ci: expand matrix to test release on windows and go on all OS (d279f8f)
- fix: replace deprecated npm bin with npm prefix to fix exit code 1 (cbb0550)
- fix: remove --force from npm install as the bin conflict in unirtm is resolved (83b63c8)
- fix: correct GO_MODULE path for go install method (8cbefba)
- fix(ci): change unirtm --version to unirtm version in CI workflow (6e03aa8)
- feat: support 'latest' as a special version keyword to fetch the newest release (c4a4244)
- chore: shorten action.yml description for marketplace compliance (b8070e8)
