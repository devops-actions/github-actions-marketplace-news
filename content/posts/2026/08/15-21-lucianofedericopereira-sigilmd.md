---
title: sigilmd
date: 2026-08-15 21:47:27 +00:00
tags:
  - lucianofedericopereira
  - GitHub Actions
draft: false
repo: https://github.com/lucianofedericopereira/sigilmd
marketplace: https://github.com/marketplace/actions/sigilmd
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The sigilmd GitHub Action automates the process of inserting file contents and config-defined values into a README.md file using marker comments. It is designed to be lightweight, with no external dependencies or complex templating languages, relying solely on Perl's built-in capabilities. This ensures that the generated content remains consistent and easily updatable in the future, reducing maintenance overhead for project documentation.
---


Version updated for **https://github.com/lucianofedericopereira/sigilmd** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigilmd) to find the latest changes.

## Action Summary

The sigilmd GitHub Action automates the process of inserting file contents and config-defined values into a README.md file using marker comments. It is designed to be lightweight, with no external dependencies or complex templating languages, relying solely on Perl's built-in capabilities. This ensures that the generated content remains consistent and easily updatable in the future, reducing maintenance overhead for project documentation.

## What's Changed

Fixed table/reference markers hard-erroring whenever a file also contained the new `pdf-preview` sibling's own `pdf:` / `pdf-gallery:` markers — same `<!--[[ ]]-->` bracket-sharing issue already fixed for sigilbadges in 0.2.0, now closed for the fourth project in the suite too
