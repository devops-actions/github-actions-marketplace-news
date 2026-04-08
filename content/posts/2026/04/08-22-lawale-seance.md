---
title: Séance Ghost
date: 2026-04-08 22:08:57 +00:00
tags:
  - lawale
  - GitHub Actions
draft: false
repo: https://github.com/lawale/seance
marketplace: https://github.com/marketplace/actions/seance-ghost
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/lawale/seance** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/seance-ghost) to find the latest changes.

## Action Summary

Séance is a tool that automates publishing and managing Markdown files as posts in a Ghost CMS. It provides two key functionalities: a browser-based drag-and-drop uploader for quick manual uploads and a GitHub Action that syncs `.md` files from a repository to Ghost on every push, supporting tasks such as creating, updating, and unpublishing posts. This action streamlines content management for developers by integrating version control with Ghost, handling frontmatter parsing, HTML conversion, and image uploads.

## What's Changed

First release of Séance, a GitHub Action that syncs Markdown files to Ghost CMS.

Features

- Create and update Ghost posts from .md files on push
- YAML frontmatter support (title, tags, excerpt, slug, featured image, status)
- Automatic image uploads — relative paths get uploaded to Ghost, external URLs pass through
- Unpublish posts when their .md file is deleted
- Change detection via git diff (only processes what changed)
- Job summary with results table

Web UI

- Included at docs/index.html — a standalone drag-and-drop Markdown uploader for Ghost
- Deployable via GitHub Pages
