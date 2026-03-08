---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-03-08 13:33:23 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.6
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.6**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a hybrid static analysis tool designed for Python, TypeScript, and Go that automates the detection of dead code, security vulnerabilities, and code quality issues with high precision. It leverages advanced techniques, including AST analysis and optional AI-powered engines, to eliminate false positives, uncover deep logic bugs, and enhance security scanning. Skylos streamlines CI/CD workflows by integrating automated analysis, quality gates, and inline PR reviews to improve code reliability and development efficiency.

## Release notes

## [3.5.6] - 2026-03-07

### Added
- `--diff [BASE_REF]` flag for line-level precision filtering — only reports findings in lines changed since BASE_REF (e.g. `--diff origin/main`). Use `--diff` without a value to auto-detect (`GITHUB_BASE_REF` or `origin/main`). Unlike `--diff-base` which filters at the file level, `--diff` uses unified diff hunk headers for exact line-range matching
- Git blame attribution: findings show the author who introduced the code
- Auto-upload: linked projects automatically upload scan results (use `--no-upload` to skip)
- SKY-L010: Security TODO/FIXME markers
- SKY-L011: Disabled security controls (e.g. `verify=False`)
- SKY-L012: Phantom calls — calls to undefined/unimported functions
- SKY-L013: Insecure randomness (CWE-330)
- SKY-L014: Hardcoded credentials (CWE-798)
- SKY-L017: Error information disclosure (CWE-209)
- SKY-L020: Overly broad file permissions (CWE-732)
- Dynamic signal tracking (`inspect.getmembers`, `dir()`) for smarter false-positive suppression
- Default exclude folders expanded for Go (`vendor`), TypeScript (`.next`, `.nuxt`, `.turbo`), VCS (`.hg`, `.svn`), and IDE (`.idea`, `.vscode`)
- Go engine now shares exclude folder list with main constants

### Fixed
- `--exclude-folder` with trailing slashes (e.g. `app/alembic/`) now works correctly. Also with paths relative to CWD that include the target directory prefix (e.g. `--exclude-folder app/alembic` when analyzing `app/`) now correctly excludes files
- `test_analyzer.py`: updated `proc_file` unpacking to include new `source_lines` return value
- `test_server.py`: updated expected bind host from `0.0.0.0` to `127.0.0.1`

### Changed
- Table output is now the default. TUI is now opt-in via `--tui`
- MCP credit checks fail-open on network errors and unexpected status codes

