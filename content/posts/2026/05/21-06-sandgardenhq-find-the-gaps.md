---
title: Find the Gaps
date: 2026-05-21 06:42:10 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/find-the-gaps
marketplace: https://github.com/marketplace/actions/find-the-gaps
version: v0.16.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sandgardenhq/find-the-gaps** to version **v0.16.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/find-the-gaps) to find the latest changes.

## Action Summary

Find the Gaps is a CLI tool designed to analyze codebases and their associated documentation to identify outdated, missing, or mismatched documentation. It automates the tedious task of verifying that documentation aligns with the current state of the code, such as ensuring function signatures and public APIs are accurately documented. This tool provides maintainers with a detailed report, helping them keep their documentation up-to-date and reducing the risk of "documentation rot."

## What's Changed

## Highlights

**Healthy redirects no longer count as dead links.** The `Redirected` bucket from v0.15.0 is removed end-to-end. A 301/302 that resolves to a healthy 2xx final URL is now treated as OK and isn't reported. Redirect *loops* still surface — they show up under Broken, where they belong.

### Why

A redirect to a healthy URL isn't a problem worth surfacing to a maintainer. Reporting them trained readers to skim past the dead-link section, which made it less likely they'd notice the real Broken and Auth Required entries underneath. Cutting the bucket sharpens the signal.

### What changed

The bucket disappears from every surface that mentioned it:

- **linkcheck core** — classifier no longer returns `Redirected`; the 2xx branch covers redirect-resolves-to-2xx.
- **`links.json`** — only `broken` and `auth_required` top-level keys remain.
- **`links.md`** — only `## Broken` and `## Auth Required` sections render.
- **Hugo site** — `/links/` page drops the Redirected card; home-page at-a-glance row goes from three cards to two.
- **PDF report** — "Dead Links" section drops its Redirected sub-section + TOC entry.
- **Analyze stdout** — summary line is now `links.md (N broken · M auth)`.

README, CHANGELOG, and Verification Plan Scenario 19 are updated to match.

## What's Changed
* feat(linkcheck): drop Redirected bucket; redirects-to-2xx count as OK by @britt in https://github.com/sandgardenhq/find-the-gaps/pull/106

**Full Changelog**: https://github.com/sandgardenhq/find-the-gaps/compare/v0.15.1...v0.16.0

