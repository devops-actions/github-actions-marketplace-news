---
title: latex2arxiv pre-flight
date: 2026-05-19 07:20:02 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

The `latex2arxiv` GitHub Action streamlines the process of preparing LaTeX projects for submission to arXiv by automating cleanup, error detection, and submission guidance. It condenses large project directories, removes unnecessary files and problematic LaTeX elements, flags common submission issues, and provides step-by-step instructions for uploading to arXiv. This tool eliminates manual cleanup and reduces the risk of submission rejection, making it ideal for researchers using Overleaf, first-time arXiv submitters, and CI-integrated workflows.

## What's Changed


Internal refactor. No user-visible behavior change vs v1.0.0. Verified on real arXiv-style projects: issues JSON byte-identical, output-zip member-content sha256 byte-identical.

### Changed
- Restructure `converter.py` (1,134 → 606 LOC, 46% reduction) by extracting four responsibility groups into focused `pipeline/` modules. Public API (`from converter import convert, Issues, ConverterError`) preserved via re-export — no caller-side change required.
  - `pipeline/types.py` — `Issues`, `ConverterError` (#138)
  - `pipeline/preflight.py` — `_check_compliance`, `_check_files`, `_check_output_size`, `_check_uncompressed_size`, `_SHELL_ESCAPE_PKGS` (#139)
  - `pipeline/build.py` — `_open_file`, `_format_pdflatex_errors`, `_compile` (#140)
  - `pipeline/resolve.py` — `find_main_tex`, `_is_git_url`, `_zip_directory`, `_resolve_input`, `_ZIP_EXCLUDE_*` (#141)

### Added
- Refactor safety net: per-fixture baselines (`tests/baselines/`) for Python-level `Issues`, CLI `--json` dry-run output, and zip member-content hashes; plus `tests/test_refactor_baseline.py` (Python-level detector) gated on Python 3.12 in CI. Pre-extract AST anchor archived under `docs/adr/`. (#137)
