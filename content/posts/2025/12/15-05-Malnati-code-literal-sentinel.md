---
title: Code Literal Sentinel
date: 2025-12-15 05:37:06 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/code-literal-sentinel
marketplace: https://github.com/marketplace/actions/code-literal-sentinel
version: v3.0.18
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/code-literal-sentinel** to version **v3.0.18**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-literal-sentinel) to find the latest changes.

## Release notes

Updated action version and modified input defaults and descriptions. Enhanced error handling for target paths and improved output generation. Malnati/code-literal-sentinel@v3.0.18
This pull request updates the `Code Literal Sentinel` GitHub Action to improve its flexibility, output handling, and robustness. The main changes include updating the default scan path, refining output variables, enhancing validation and reporting, and simplifying the output generation process.

**Configuration and Output Improvements:**

* Changed the default value of `target_path` from a file extension filter to `"."`, allowing the action to scan the entire repository by default.
* Added a new output variable `report_path` to explicitly provide the path to the generated JSON report. Updated the description of the `json` output to clarify that it now returns the path to the generated JSON file instead of its contents.

**Validation and Robustness:**

* Improved the validation logic to check if each path in `TARGET_PATH` is either a file or directory, not just a directory. Added `set -euo pipefail` for safer script execution.

**Scanning Logic and Output Handling:**

* Refactored the file discovery and matching logic to use temporary files for storing file lists and match results, improving reliability for large file sets. Now uses `find` piped to `grep` and writes results to a file, then checks if the file is empty to determine if files were found.
* Simplified the output logic: the `json` output now returns the path to the report file, not the report contents, and redundant meta output files and variables have been removed. The reporting of status and count is now more direct and consistent.

**Miscellaneous:**

* Updated the action to depend on version `v3.0.18` of `Malnati/code-literal-sentinel`.
