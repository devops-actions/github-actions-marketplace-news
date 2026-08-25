---
title: Extract Changelog Release Notes
date: 2026-08-25 22:40:09 +00:00
tags:
  - theory
  - GitHub Actions
draft: false
repo: https://github.com/theory/changelog-version-notes-action
marketplace: https://github.com/marketplace/actions/extract-changelog-release-notes
version: v0.1.4
dependentsNumber: "16"
actionType: Composite
actionSummary: |
  This GitHub Action extracts release notes from a `CHANGELOG.md` file based on a specified version. It automates the process of generating concise release notes for a given tag, which can be particularly useful for creating GitHub releases. The action uses a Perl script to search for version headers and extract subsequent changes until the next version header is encountered.
---


Version updated for **https://github.com/theory/changelog-version-notes-action** to version **v0.1.4**.

- This action is used across all versions by **16** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/extract-changelog-release-notes) to find the latest changes.

## Action Summary

This GitHub Action extracts release notes from a `CHANGELOG.md` file based on a specified version. It automates the process of generating concise release notes for a given tag, which can be particularly useful for creating GitHub releases. The action uses a Perl script to search for version headers and extract subsequent changes until the next version header is encountered.

## What's Changed

### 🪲 Bug Fixes

*   Updated the reformatting to support nested lists, not just lists that start at the beginning of each line. Like this:
    *   Changed regex
    *   Updated changes
    *   Updated the integration test workflow, `.github/workflows/test.yml`, to emit this most recent change list, so you can see the wrapping in action

### 📚 Documentation

*   Updated the versions of the actions used in the [README]'s example workflows (and also in the project's own workflows)

  [README]: README.md

---

🆚 For more detail compare [changes since v0.1.3](https://github.com/theory/changelog-version-notes-action/compare/v0.1.3...v0.1.4).

