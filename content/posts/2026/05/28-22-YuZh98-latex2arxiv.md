---
title: latex2arxiv pre-flight
date: 2026-05-28 22:56:03 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.2.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.2.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

The `latex2arxiv` GitHub Action simplifies the process of preparing LaTeX projects for submission to arXiv by automating project cleanup, error checking, and generating submission-ready ZIP files. It removes unnecessary files, resolves common rejection-causing issues (e.g., invalid filenames, missing dependencies, or draft elements), and provides step-by-step upload instructions with metadata extraction. This tool is particularly useful for streamlining submissions from Overleaf exports, handling complex LaTeX projects, and integrating arXiv compliance checks into CI pipelines.

## What's Changed


### Added
- `browser-extension/`: Manifest V3 Chrome extension for an Overleaf companion that runs `latex2arxiv` via Pyodide in-browser. v0.1 wires the full pipeline end-to-end (panel UI, same-origin project fetch, in-browser conversion, download); v0.1.1 will vendor the Pyodide runtime to satisfy the MV3 remote-code policy ahead of Chrome Web Store submission (#192, #193)

### Changed
- VS Code extension README: remove retired Marketplace shields badges (version, installs, rating) — endpoints no longer served reliably by shields.io (#189)
- New runtime dependency: `regex>=2024.0`, required by the portable ReDoS guard

### Fixed
- Pre-flight: tighten `00README.XXX` legacy check to exclude `xelatex` / `lualatex` (#178)
- Custom regex replacements in YAML config: catastrophic patterns now time out portably on Windows + WebAssembly (previously hung indefinitely on those platforms; Unix-only `SIGALRM` guard replaced with the `regex` package's `timeout=`) (#191)
