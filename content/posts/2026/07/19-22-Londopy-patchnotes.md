---
title: patchnotes changelog validator
date: 2026-07-19 22:20:10 +00:00
tags:
  - Londopy
  - GitHub Actions
draft: false
repo: https://github.com/Londopy/patchnotes
marketplace: https://github.com/marketplace/actions/patchnotes-changelog-validator
version: v2.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The patchnotes GitHub Action parses and validates Keep a Changelog formatted CHANGELOG.md files or YAML changelogs into structured Python objects. It automates tasks such as parsing, diffing changes between versions, validating the format, and rendering changelogs to various formats like HTML, RSS, or plain text. The action is built for use in Python code, shell scripts, and CI/CD pipelines, with pure Python and type support, including YAML parsing.
---


Version updated for **https://github.com/Londopy/patchnotes** to version **v2.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchnotes-changelog-validator) to find the latest changes.

## Action Summary

The patchnotes GitHub Action parses and validates Keep a Changelog formatted CHANGELOG.md files or YAML changelogs into structured Python objects. It automates tasks such as parsing, diffing changes between versions, validating the format, and rendering changelogs to various formats like HTML, RSS, or plain text. The action is built for use in Python code, shell scripts, and CI/CD pipelines, with pure Python and type support, including YAML parsing.

## What's Changed

### Added

- `patchnotes init` scaffolds a spec-compliant starter CHANGELOG.md (strict-validation clean out of the box); `--workflow` also writes a ready-made `.github/workflows/changelog.yml` PR check.
- `dep --requirements old.txt new.txt` diffs two requirements files and runs the breaking/security analysis for every changed pin at once — built for reviewing lockfile bump PRs. With `--strict`, flagged changes fail CI.
- mkdocs plugin: add `patchnotes` to `plugins:` in mkdocs.yml and a `<!-- patchnotes -->` marker in any docs page renders the styled changelog at build time (`pip install patchnotes[mkdocs]`).

### Fixed

- An empty [Unreleased] section no longer triggers a PN203 warning — it's the normal state right after a release (and what `bump` leaves behind). Empty *versioned* releases still warn.
