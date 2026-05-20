---
title: latex2arxiv pre-flight
date: 2026-05-20 07:00:05 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

This GitHub Action, **latex2arxiv**, streamlines the process of preparing LaTeX projects for submission to arXiv by automating project cleanup, error detection, and submission guidance. It removes unnecessary files, cleans LaTeX code by addressing common rejection-causing issues, and generates a submission-ready `.zip` package along with a step-by-step upload guide. The tool simplifies the submission workflow, especially for first-time users, Overleaf-based projects, or those needing CI integration, ensuring a smooth and efficient arXiv submission process.

## What's Changed


Audited pre-flight checks against arXiv's official submission guidelines; added 6 new checks, corrected 3 existing ones, and introduced auto-detection of `arxiv_config.yaml`. MCP server gains `output_path` parameter and hardened symlink/stdout handling.

### Added
- Pre-flight `[error]`: `\bibliography{foo}` with missing `foo.bib` and no `.bbl` shipped — arXiv blocks these submissions. ([ref](https://info.arxiv.org/help/submit_tex.html#include-bib-or-bbl-files-if-you-use-bibtexbiber))
- Pre-flight `[error]`: shipped `psfig.sty` — arXiv forbids user-supplied copies. ([ref](https://info.arxiv.org/help/submit_tex.html#figure-inclusion-in-latex-submissions))
- Pre-flight `[warn]`: `\includeonly` restricts which chapters arXiv compiles. ([ref](https://info.arxiv.org/help/faq/mistakes.html))
- Pre-flight `[warn]`: hidden files (dot-files/directories) that survive pruning — arXiv deletes them on announcement. ([ref](https://info.arxiv.org/help/submit_tex.html#hidden-files-will-be-deleted-upon-announcement))
- Pre-flight `[warn]`: `-eps-converted-to.pdf` artifacts indicate reliance on on-the-fly conversion arXiv doesn't perform. ([ref](https://info.arxiv.org/help/submit_tex.html#figure-inclusion-in-latex-submissions))
- Pre-flight `[warn]`: PNG images exceeding 34 megapixels (arXiv threshold since Feb 2026). ([ref](https://info.arxiv.org/help/sizes.html))
- Auto-detect `arxiv_config.yaml` at project root when no `--config` is passed; prints `config: arxiv_config.yaml (auto-detected)` so the user knows it was applied.
- `clean_submission` MCP tool accepts `output_path` parameter — callers can direct the output zip to a known location instead of relying on a temp file. Caller-owned files are never unlinked, even on failure. (#147)
- Document `LATEX2ARXIV_MCP_BASE_DIR` sandboxing in `docs/mcp.md` with Claude Desktop / Cursor config examples. (#147)

### Changed
- `SIZE_WARN_MB` now lives in `pipeline/preflight.py`; `converter.SIZE_WARN_MB` is preserved as a backward-compat re-export. Code that monkeypatches the threshold must target `pipeline.preflight.SIZE_WARN_MB` — re-binding `converter.SIZE_WARN_MB` is now ineffective. (#142)
- Extract per-file processing pass from `convert()` into `pipeline/process.py`; add `pipeline.types.ConvertContext` to carry shared state. `converter.py` drops to 552 LOC. No behavior change. (#146)
- `.eps` warning now suppressed when `00README` specifies `compiler: latex` (dvips mode); message updated to mention the alternative. ([ref](https://info.arxiv.org/help/submit_tex.html#figure-inclusion-in-latex-submissions))
- biblatex `.bbl` warning softened: acknowledges arXiv runs Biber natively since late 2025; recommends `.bbl` as a version-mismatch fallback rather than implying it's required. ([ref](https://info.arxiv.org/help/submit_tex.html#include-bib-or-bbl-files-if-you-use-bibtexbiber))
- `fontspec`/`unicode-math` error message updated to reference both new `00README` JSON format (`compiler: xelatex`) and legacy `00README.XXX` syntax. ([ref](https://info.arxiv.org/help/00README.html#currently-supported-compiler-settings))
- MCP server no longer wraps `convert()` in `redirect_stdout`; pipeline progress goes to stderr, structured findings flow through `errors`/`warnings` lists. (#147)
- Directory-input zipper uses `os.walk(followlinks=False)` instead of `Path.rglob`; symlinked directories now emit a warning instead of being silently skipped. (#147)
