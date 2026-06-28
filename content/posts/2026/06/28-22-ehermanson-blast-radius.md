---
title: Blast Radius - Change Impact
date: 2026-06-28 22:20:49 +00:00
tags:
  - ehermanson
  - GitHub Actions
draft: false
repo: https://github.com/ehermanson/blast-radius
marketplace: https://github.com/marketplace/actions/blast-radius-change-impact
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ehermanson/blast-radius** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blast-radius-change-impact) to find the latest changes.

## What's Changed


### Added

- The PR comment now includes an **"Impact by area"** hotspot chart showing
  where a change's impact lands, with each bar split into direct vs transitive
  reach. It is suppressed when the radius is small enough to read at a glance or
  lands in a single area (a one-row chart adds nothing).

### Changed

- The PR comment now **leads with the direct consumers** of a change and demotes
  transitive reach, so reviewers see the most relevant impact first.
- The terminal report's hotspot chart now splits each bar into direct vs
  transitive impact and is renamed **"Impact by area"** for parity with the PR
  comment.

### Fixed

- The PR comment is hardened against large and malformed inputs: it enforces a
  global size budget so a huge radius stays under GitHub's comment limit,
  degrades to a sticky fallback comment on malformed analyzer output instead of
  crashing, and surfaces changed files it had to skip as a coverage caveat.

### Documentation

- Restructured the README into a concise overview and moved reference material
  into dedicated `docs/` pages (CLI reference, reading the output,
  configuration) plus a new `CONTRIBUTING.md`.


