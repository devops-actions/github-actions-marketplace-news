---
title: latex2arxiv pre-flight
date: 2026-05-16 13:56:35 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

`latex2arxiv` is a GitHub Action and command-line tool designed to streamline the process of preparing and submitting LaTeX projects to arXiv. It automates tasks such as cleaning project files, removing unnecessary elements, verifying compatibility to avoid submission rejections, and generating arXiv-ready ZIP files with optional step-by-step upload guides. This tool simplifies submissions by addressing common issues like file pruning, error detection, and metadata extraction, making it particularly useful for Overleaf users, first-time submitters, and CI workflows.

## What's Changed


v1.0 stability commitment. Promotes the project from Beta to Production/Stable. No new runtime behaviour vs v0.11.0; all substantive changes since are metadata (PyPI classifier), VS Code Marketplace assets (icon, LICENSE, listing rewrite), and CI/format hardening.

### Added
- VS Code extension package icon (`vscode-extension/icon.{svg,png}`) wired into the Marketplace listing via `package.json` `"icon"` field (#128)
- `vscode-extension/LICENSE` so `vsce package` no longer warns and the Marketplace listing shows the licence (#128)
- CI `ruff format --check .` step alongside the existing `ruff check .` lint step, with `ruff` pinned to `0.11.*` to match the pre-commit hook so the two enforcement points cannot diverge (#131)

### Changed
- PyPI classifier upgraded from `Development Status :: 4 - Beta` to `5 - Production/Stable` (#129)
- VS Code extension Marketplace listing rewritten — badges, hero pitch, features list, quick start, troubleshooting; bumped to v0.1.1 (#130)
- VS Code extension integration row in main README flipped from `🔜 Planned` to `✅ Manual install` and now points at the published Marketplace listing (#127)
- Full-repo `pre-commit run --all-files` normalization — 20 .py files ruff-formatted, `docs/overleaf.md` trailing whitespace stripped, `pipeline/__init__.py` EOF fixed. AST-verified reformat-only; 379 tests pass identically before and after (#131)
