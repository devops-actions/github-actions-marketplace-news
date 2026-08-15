---
title: sigilmd
date: 2026-08-15 07:00:33 +00:00
tags:
  - lucianofedericopereira
  - GitHub Actions
draft: false
repo: https://github.com/lucianofedericopereira/sigilmd
marketplace: https://github.com/marketplace/actions/sigilmd
version: v0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, sigilmd, automates the insertion of file contents and config-defined values into a README.md file using marker comments. It provides a single Perl script solution without external dependencies, ensuring compatibility over time. The action supports declaring tables with key-value pairs and referencing values from files or other tables within the same format.
---


Version updated for **https://github.com/lucianofedericopereira/sigilmd** to version **v0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigilmd) to find the latest changes.

## Action Summary

This GitHub Action, sigilmd, automates the insertion of file contents and config-defined values into a README.md file using marker comments. It provides a single Perl script solution without external dependencies, ensuring compatibility over time. The action supports declaring tables with key-value pairs and referencing values from files or other tables within the same format.

## What's Changed

## v0.2 -  August 15, 2026

- Fixed table/reference markers hard-erroring whenever a file also contained `sigilbadges`' own `badge:` / `badge-row:` markers — both tools share the same `<!--[[ ]]-->` bracket syntax with no namespace, so `sigilmd` now recognizes and skips sigilbadges' (unambiguous, colon-prefixed) marker shapes instead of dying on it
- Fixed `uses: lucianofedericopereira/sigilmd@v1` pins in the README that never matched any real tag — the actual published tag is `v0.1`; rewrote the "Publishing to Marketplace" section to describe the direct-tag-pin flow this project actually uses pre-1.0
- Replaced the placeholder pencil-icon brand mark (nav, hero, footer, favicon) with the real `sigilmd.png` logo across the site
- Added a "Read the Docs" badge, matching the shared style used by sigilbadges/treegen2 (GitHub logo, `for-the-badge`, centered under the top logo)
- Reworked the README's marker-grammar "Example" section into a real before/after: the "after" half is now shown rendered rather than as a second code block, since that's what a reader actually sees on the page
