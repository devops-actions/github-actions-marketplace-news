---
title: DocVault Documentation Generator
date: 2026-05-23 21:40:44 +00:00
tags:
  - nico-builds
  - GitHub Actions
draft: false
repo: https://github.com/nico-builds/docvault-docs-action
marketplace: https://github.com/marketplace/actions/docvault-documentation-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nico-builds/docvault-docs-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docvault-documentation-generator) to find the latest changes.

## Action Summary

The **DocVault Documentation Generator** is a GitHub Action that automates the creation of comprehensive, AI-powered documentation for projects, including architecture overviews, API references, user guides, and glossaries. It streamlines the process of auditing and documenting codebases, websites, and apps by generating Markdown files and an optional single-page HTML UI with a clickable table of contents. This action simplifies documentation maintenance, enhances project clarity, and supports both developers and end-users.

## What's Changed

## DocVault Documentation Generator v1.0.0

Initial release for GitHub Marketplace.

### Features
- Multi-phase documentation audit and generation
- Modes: `plan` (safe audit) and `write` (generate files)
- Optional single-page HTML UI with clickable TOC in `.docvault/ui/`
- Output directory: `.docvault/`

### Usage

```yaml
- uses: nico-builds/docvault-docs-action@v1
  with:
    cursor-api-key: ${{ secrets.CURSOR_API_KEY }}
    mode: write
    ui: 'true'
```

Requires a [Cursor API key](https://cursor.com/dashboard/integrations).
