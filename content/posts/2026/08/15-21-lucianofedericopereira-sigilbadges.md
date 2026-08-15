---
title: sigilbadges — SVG badges for README (Perl)
date: 2026-08-15 21:48:39 +00:00
tags:
  - lucianofedericopereira
  - GitHub Actions
draft: false
repo: https://github.com/lucianofedericopereira/sigilbadges
marketplace: https://github.com/marketplace/actions/sigilbadges-svg-badges-for-readme-perl
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action sigilbadges generates SVG badges directly into a `README.md` file based on comments with specific syntax. It automates the process of creating and inserting badges, such as version numbers, build statuses, test coverage, and more, by leveraging pure Perl logic without external dependencies or binary requirements.
---


Version updated for **https://github.com/lucianofedericopereira/sigilbadges** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigilbadges-svg-badges-for-readme-perl) to find the latest changes.

## Action Summary

The GitHub Action sigilbadges generates SVG badges directly into a `README.md` file based on comments with specific syntax. It automates the process of creating and inserting badges, such as version numbers, build statuses, test coverage, and more, by leveraging pure Perl logic without external dependencies or binary requirements.

## What's Changed

Fixed `badge:`/`badge-row:` markers hard-erroring whenever a file also contained the new `pdf-preview` sibling's own `pdf:` / `pdf-gallery:` markers — same `<!--[[ ]]-->` bracket-sharing issue already fixed against sigilmd in 0.2.0, now closed for the fourth project in the suite too
