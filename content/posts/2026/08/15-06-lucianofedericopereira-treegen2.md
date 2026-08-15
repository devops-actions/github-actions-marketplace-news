---
title: treegen2 — File Tree for README (Perl)
date: 2026-08-15 06:59:20 +00:00
tags:
  - lucianofedericopereira
  - GitHub Actions
draft: false
repo: https://github.com/lucianofedericopereira/treegen2
marketplace: https://github.com/marketplace/actions/treegen2-file-tree-for-readme-perl
version: v0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `treegen2` provides a file tree README generator written in pure Perl, with options to choose from ASCII, SVG, and collapsible formats. It ensures compatibility for twenty years by not relying on CPAN dependencies or interpreter setup steps. The action is optimized for long-term stability and reliability in CI pipelines.
---


Version updated for **https://github.com/lucianofedericopereira/treegen2** to version **v0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/treegen2-file-tree-for-readme-perl) to find the latest changes.

## Action Summary

The GitHub Action `treegen2` provides a file tree README generator written in pure Perl, with options to choose from ASCII, SVG, and collapsible formats. It ensures compatibility for twenty years by not relying on CPAN dependencies or interpreter setup steps. The action is optimized for long-term stability and reliability in CI pipelines.

## What's Changed

## 0.2.0 -  August 15, 2026

- Fixed four `uses: lucianofedericopereira/treegen2@v1` pins in the README that never matched any real tag — the actual published tag is `v0.1`; rewrote the "Publishing to Marketplace" section to describe the direct-tag-pin flow this project actually uses pre-1.0, instead of a `v1.0.0` release plus a floating `v1` alias that was never cut
- The README's "Read the Docs" link is now a proper badge (GitHub logo, `for-the-badge`, matching sigilbadges/sigilmd) instead of a one-off `<h2>` link with its own icon asset; the top logo image is now centered and size-capped to match its siblings
- The four places the README shows the action's version pin now derive from small snippet files declared in `sigilmd.toml`, kept in sync by `sigilmd` itself, instead of four separately hand-maintained copies of the same string

