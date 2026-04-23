---
title: droast — Dockerfile linter
date: 2026-04-23 21:43:30 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

Droast is a Dockerfile linter designed to identify bad practices and provide actionable feedback with a humorous tone. It automates the detection of potential issues in Dockerfiles, streamlining code reviews and ensuring adherence to best practices, particularly in CI/CD pipelines. Key features include severity-based filtering, customizable rule exclusions, multiple output formats, and integration with GitHub Actions for inline annotations on pull request diffs.

## What's Changed

- feat: automate releases on tag push with cross-platform binary builds (fed3ca5)
- feat: add SARIF 2.1.0 output format for GitHub Advanced Security and IDE integration (95f144b)
- feat: add droast init subcommand to generate commented droast.toml template (fecf93a)
- feat: add optional droast.toml project-level config file support (b11416b)
- chore: update README.md (2fbba96)
- feat: add one-liner to install with curl | sh (9ba007b)
- fix(rules): handle ADD --chown flags and add .tar.bz2 in DF006 (b43179e)
- Merge pull request #8 from ddmunhoz/proposed-fix-DF006-false-positive (3f0dc2d)
- fix(rules): prevent DF062 false positive for quoted PATH extension patterns (cb7284a)
- feat: add 123 new test cases (fire + clear + edge cases) (c094d6e)
