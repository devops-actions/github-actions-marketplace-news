---
title: accessibility-scanner
date: 2026-04-02 06:34:12 +00:00
tags:
  - github
  - GitHub Actions
draft: false
repo: https://github.com/github/accessibility-scanner
marketplace: https://github.com/marketplace/actions/accessibility-scanner
version: v3.0.0
dependentsNumber: "34"
actionType: Composite
---


Version updated for **https://github.com/github/accessibility-scanner** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **34** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accessibility-scanner) to find the latest changes.

## Action Summary

The AI-powered Accessibility Scanner is a GitHub Action designed to identify and address accessibility issues in websites, repositories, and dynamic content. It automates the detection of accessibility barriers, creates actionable GitHub issues, and utilizes GitHub Copilot to suggest AI-powered fixes that can be reviewed before implementation. This tool streamlines the process of improving digital accessibility and ensures teams can efficiently track and resolve accessibility gaps in their products.

## What's Changed

## What's Changed

> [!IMPORTANT]
> Reference the Accessibility Scanner action using:
> 
> ```YAML
> uses: github/accessibility-scanner@v3
> ```
>
> See the [README](https://github.com/github/accessibility-scanner/blob/v3/README.md) for further details and examples.

### BREAKING CHANGES

> [!WARNING]
> The Find action’s `findings` output was replaced with `findings_file` in v3.0.0. If you use the `findings` output, please migrate to the new [`findings_file` output](https://github.com/github/accessibility-scanner/tree/main/.github/actions/find#findings_file).
> 
> The File action’s `findings` and `cached_filings` inputs were replaced with `findings_file` and `cached_filings_file`. The `filings` output was replaced with `filings_file` in v3.0.0. If you use those inputs or outputs, please migrate to the new [file action's inputs/output](https://github.com/github/accessibility-scanner/tree/main/.github/actions/file).
>
> The Fix action’s `issues` input was replaced with `issues_file`. The `fixings` output was replaced with `fixings_file` in v3.0.0. If you use that input or output, please migrate to the new [fix action's input/output](https://github.com/github/accessibility-scanner/tree/main/.github/actions/fix).

Writing to and reading from file content instead of directly passing a `findings` string (which can be a large JSON object) prevents maximium system argument size errors.

* Replace github-script with file-based approach to avoid large JSON output max limit by @lindseywild in https://github.com/github/accessibility-scanner/pull/177
* Replace JSON string I/O with file-based approach in find, file, fix actions by @lindseywild in https://github.com/github/accessibility-scanner/pull/179

**Full Changelog**: https://github.com/github/accessibility-scanner/compare/v2.12.0...v3.0.0
