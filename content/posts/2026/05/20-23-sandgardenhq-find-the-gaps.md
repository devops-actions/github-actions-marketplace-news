---
title: Find the Gaps
date: 2026-05-20 23:14:52 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/find-the-gaps
marketplace: https://github.com/marketplace/actions/find-the-gaps
version: v0.15.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sandgardenhq/find-the-gaps** to version **v0.15.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/find-the-gaps) to find the latest changes.

## Action Summary

Find the Gaps is a CLI tool designed to analyze a codebase and its associated documentation to identify outdated, missing, or inconsistent documentation, such as mismatched function signatures or undocumented APIs. By leveraging language parsing and external tools, it automates the process of cross-referencing code and documentation, providing maintainers with actionable insights to keep their documentation up-to-date. This helps address the common challenge of "documentation rot" and ensures that technical documentation accurately reflects the underlying codebase.

## What's Changed

## Highlights

Docs + site polish to catch up with the v0.15.0 dead-link feature.

- **README refresh.** Documents the `render` command, the new `--no-pdf` / `--no-serve` flags, doctor's new `--llm-*` flags, the `report.pdf` artifact, and the auto-serve / open-browser behavior added back in #85. Adds a "Dead links at-a-glance" section pointing readers at the new bucket layout.
- **Home-page stat cards for dead links.** The site's home page now renders a third row of priority-style cards — Broken / Auth required / Redirected — alongside the existing Features and Gaps rows. The row is gated on whether the link check actually ran on that project; if `--no-link-check` was used, the row stays hidden instead of showing zeroes.
- **`render` reuses what `links.json` already carries.** The `LinksRan` flag was being loaded and then discarded; `render` now threads it into the site's `Inputs` so the home page renders correctly whether you ran `analyze` or `render`.

## What's Changed
* docs+site: refresh README for v0.15.0; add dead-links at-a-glance section by @britt in https://github.com/sandgardenhq/find-the-gaps/pull/105

**Full Changelog**: https://github.com/sandgardenhq/find-the-gaps/compare/v0.15.0...v0.15.1

