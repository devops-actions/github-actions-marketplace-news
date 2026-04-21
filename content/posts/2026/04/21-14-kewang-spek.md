---
title: spek - OpenSpec Static Site
date: 2026-04-21 14:27:43 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

The **spek** GitHub Action provides a lightweight, read-only viewer for managing and navigating OpenSpec content locally. It automates tasks like browsing structured specifications, tracking changes, monitoring task progress, and conducting full-text searches, offering a user-friendly alternative to reading raw Markdown files. Key features include a searchable dashboard, BDD syntax highlighting, revision history tracking, and compatibility with web browsers, VS Code, and IntelliJ, making it a versatile tool for organizing and visualizing specification data.

## What's Changed

- Add table-of-contents (TOC) sidebar to spec detail pages — sticky navigation lists all `h2`/`h3` headings, with scrollspy highlighting and smooth scrolling on click
- Add TOC sidebar to change detail pages for the Proposal, Design, and Specs tabs (Tasks tab excluded); TOC updates when switching tabs
- Persist the active tab in the change detail URL (`?tab=<id>`) and support deep links with both tab + hash (e.g., `?tab=design#decision-1`)
- Specs tab: prefix each delta spec's heading ids with `<topic>--` so multiple specs with the same heading text no longer collide
- Support URL hash anchors on spec detail pages (e.g., `/specs/foo#requirement-bar` scrolls to that heading)
- Expand spec items in the VS Code sidebar to reveal their headings as child nodes; clicking a heading opens the webview at the corresponding section
- Add `extractHeadings` and `slugifyHeading` utilities to `@spek/core` for shared heading parsing across web and extension hosts
- Web: reloads and direct URL visits now restore the most recent repo from localStorage instead of bouncing back to the repo-selection page
