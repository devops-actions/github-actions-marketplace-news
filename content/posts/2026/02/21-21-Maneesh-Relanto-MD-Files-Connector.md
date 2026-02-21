---
title: MD Files Connector
date: 2026-02-21 21:28:40 +00:00
tags:
  - Maneesh-Relanto
  - GitHub Actions
draft: false
repo: https://github.com/Maneesh-Relanto/MD-Files-Connector
marketplace: https://github.com/marketplace/actions/md-files-connector
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Maneesh-Relanto/MD-Files-Connector** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/md-files-connector) to find the latest changes.

## Action Summary

The **MD Files Connector** is a CLI tool and GitHub Action designed to analyze Markdown files in a project, ensuring all `.md` files are referenced in the root `README.md`. It automates the detection of isolated or unlinked documentation files, providing a coverage report and an option to auto-link them into the root README. This tool helps maintain consistent and discoverable project documentation, preventing overlooked or forgotten files as projects grow.

## Release notes

## [1.0.0] — 2026-02-21

### Added
- Recursive `.md` file scanner with strict root-README-only coverage mode
- Rich terminal dashboard with linked / isolated file breakdown
- Plain-text fallback dashboard (when `rich` is not installed)
- `MD_REPORT.md` generation with summary stats, tables, and ready-to-paste link snippets
- GitHub Actions step summary output (`$GITHUB_STEP_SUMMARY`)
- `$GITHUB_OUTPUT` emission via `md_connector_outputs.py` companion script
- Composite GitHub Action (`action.yml`) with inputs: `project-root`, `exclude-dirs`, `report-path`, `skip-report`, `fail-on-isolated`
- Action outputs: `total-md-files`, `linked-files`, `isolated-files`, `coverage`
- Artifact upload of `MD_REPORT.md` via `actions/upload-artifact@v4`
- Interactive fix menu (Generic / Docs / Manual) with secondary sub-menu for missing docs section
- `--fail-on-isolated` CLI flag — exits with code 1 if isolated files found (CI-friendly)
- `--no-report` CLI flag — skip writing `MD_REPORT.md`
- `--exclude` CLI flag — space-separated directory names to skip
- Auto-exclusion of the generated report file (`MD_REPORT.md`) from the scan
- Whole-word docs heading regex to avoid false positives
- Test suite with unit tests, integration test, and complex fixture covering 15 edge cases
- Example workflow in `examples/md-check.yml`
- MIT License
