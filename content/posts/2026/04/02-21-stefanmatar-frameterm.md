---
title: Setup frameterm
date: 2026-04-02 21:55:25 +00:00
tags:
  - stefanmatar
  - GitHub Actions
draft: false
repo: https://github.com/stefanmatar/frameterm
marketplace: https://github.com/marketplace/actions/setup-frameterm
version: v1.2.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/stefanmatar/frameterm** to version **v1.2.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-frameterm) to find the latest changes.

## Action Summary

Frameterm is a GitHub Action and CLI tool that automates interaction with terminal-based user interfaces (TUIs) by simulating commands and capturing video recordings of the process. It enables users to spawn, control, and monitor terminal applications, allowing tasks such as testing, debugging, and AI-driven navigation to be visualized with detailed overlays showing keystrokes, resource usage, and wait states. This tool streamlines the documentation and validation of TUI workflows while providing exportable, annotated MP4 videos for clear accountability and analysis.

## What's Changed

- action: verify sha256 checksum before extracting release tarball (378eef3)
- test: use stefanmatar/frameterm@v1 instead of local ./ ref (#4) (ad86a29)
- ci: add smoke test workflow for GitHub Action (cceb45c)
- homebrew: update formula to v1 (dfc85a7)
- add GitHub Action for installing frameterm in CI (f015057)
- release: also sync formula to homebrew-frameterm tap (efcc57b)
- homebrew: update formula to v1.2.2 (b59e300)
- move homebrew formula into this repo, drop external tap dependency (199475c)
- fix: use macos-latest for x86_64-apple-darwin release build (fe0ba07)
- fix clippy while_let_loop lint in daemon connection handler (e687027)
