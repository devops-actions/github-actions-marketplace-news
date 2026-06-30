---
title: tmpltr
date: 2026-06-30 15:06:11 +00:00
tags:
  - scme0
  - GitHub Actions
draft: false
repo: https://github.com/scme0/tmpltr
marketplace: https://github.com/marketplace/actions/tmpltr
version: v1.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/scme0/tmpltr** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tmpltr) to find the latest changes.

## What's Changed

### Minor Changes

- 1c9fa97: Add language selection and a duration builtin.

  - New `-l`/`--lang` flag selects a language for localised fields: a property whose
    value is a map containing the active language key (e.g. `{ en: ..., fr: ... }`) is
    reduced to that language's value. Non-localised values are unaffected, so one data
    file builds one language per run.
  - New `@duration` builtin (`<< start | @duration >>`) formats an employment length
    from a `{ start, end? }` date object (localised, `end` defaults to today), or passes
    a plain string through unchanged for fixed labels.
  - The GitHub Action gains a `language` input mapped to `-l`.
