---
title: Mordant Lints
date: 2026-08-12 14:52:10 +00:00
tags:
  - scarletindustries
  - GitHub Actions
draft: false
repo: https://github.com/scarletindustries/mordant-action
marketplace: https://github.com/marketplace/actions/mordant-lints
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the linting process using the Mordant library, which helps developers identify potential issues in their code. It builds Mordant against nightly pins and runs it over the workspace, providing findings annotated on the pull request diff, within the job log, and in the job summary. The action can fail if there are any findings or can run without failure based on user settings.
---


Version updated for **https://github.com/scarletindustries/mordant-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mordant-lints) to find the latest changes.

## Action Summary

This GitHub Action automates the linting process using the Mordant library, which helps developers identify potential issues in their code. It builds Mordant against nightly pins and runs it over the workspace, providing findings annotated on the pull request diff, within the job log, and in the job summary. The action can fail if there are any findings or can run without failure based on user settings.

## What's Changed

- Runs Mordant lints against any Rust workspace
- Needs no Cargo.toml change
- Annotates findings on the pull request diff
- Tabulates every finding in the job summary
- Exits non-zero on the first finding
- Caches the driver, library, and dylint binaries
- Reads dylint.toml, including the ratchet baseline
