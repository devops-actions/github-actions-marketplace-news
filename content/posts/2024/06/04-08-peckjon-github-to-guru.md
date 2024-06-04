---
title: GitHub to Guru
date: 2024-06-04 08:46:34 +00:00
tags:
  - peckjon
  - GitHub Actions
draft: false
repo: peckjon/github-to-guru
marketplace: https://github.com/marketplace/actions/github-to-guru
version: 1.9.0
dependentsNumber: "7"
---


Version updated for **peckjon/github-to-guru** to version **1.9.0**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-to-guru) to find the latest changes.

## Release notes

Fixes #25

This change makes it possible to add a footer to a card in an INTERNAL collection.
- In copyCardData() the line const cardpathRegex = /__CARDPATH__/g; is now declared at the top of the file, making it globally accessible.
- In processStandardCollection() the card footer is read from the GURU_CARD_FOOTER environment variable and, if it exists, will be appended to the card content. The text __CARDPATH__ in the footer is replaced with the URI-encoded filename of the card.

**Full Changelog**: https://github.com/peckjon/github-to-guru/compare/1.8.1...1.9.0
