---
title: latex2arxiv pre-flight
date: 2026-05-15 14:57:47 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v0.11.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v0.11.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

The `latex2arxiv` GitHub Action simplifies the process of preparing and submitting LaTeX projects to arXiv by automating project cleanup, error detection, and upload guidance. It addresses common challenges like removing unnecessary files, cleaning LaTeX source code, and identifying potential submission blockers, ensuring the project is arXiv-compliant. Additionally, it provides features like PDF compilation, metadata extraction, and step-by-step upload instructions to streamline the submission workflow.

## What's Changed


API stability, CI hardening, and test coverage ahead of v1.0. MCP error envelope is now a list (`"errors"` instead of singular `"error"`), which is a breaking change for MCP clients.

### Added
- `__all__` in `converter.py` exports the stable public API: `Issues`, `ConverterError`, `convert`
- JSON schema stability contract in `docs/json-schema.md`
- Deprecation-strict CI job (`pytest -W error::DeprecationWarning`)
- Coverage gate at 85% in CI; `mcp_server.py` excluded (requires optional `[mcp]` extra)
- Pre-commit config (ruff, ruff-format, trailing-whitespace, end-of-file-fixer, check-yaml, check-toml)
- CI Python matrix expanded to 3.10–3.13; `pyyaml`, `mcp`, `fastmcp` added to test deps
- 55 behavioral audit tests covering all documented features before v1.0 (#122)
- Fixture manifest assertions: output zip contents verified, not just error/warning counts (#124)
- Overleaf-style zip tests: `__MACOSX/`, `.DS_Store`, wrapper-directory handling (#124)
- New fixture `10-multifile-graphicspath`: `\graphicspath` + `\input` from subdirectory + pruning (#124)
- End-to-end `--guide` tests with complex `\author{}` blocks (#124)

### Fixed
- `convert()` raised `FileNotFoundError` on missing input instead of `ConverterError` (#122)
- `--resize` without a value now uses the default 1600 px instead of exiting with error code 2
- MCP directory zip excluded `__pycache__`, `.pyc` files, and symlinks escaping the project root
- Config and BibTeX warnings now routed through `issues.warn` (visible in `--json` and MCP output)
- `find_used_images` return type annotation corrected to `tuple[set[Path], set[str]]`

### Changed
- MCP error envelope (breaking): responses use `{"errors": [...]}` instead of `{"error": str}`
- Publish workflow split into `publish` + `release-assets` jobs for independent re-runs
- `requirements.txt` removed; `pyproject.toml` is the single source of dependencies
- `[project.urls]` added to `pyproject.toml` (Homepage, Source, Issues, Changelog)

---
