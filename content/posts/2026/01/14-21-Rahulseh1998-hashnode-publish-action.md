---
title: Hashnode Auto Publisher
date: 2026-01-14 21:25:53 +00:00
tags:
  - Rahulseh1998
  - GitHub Actions
draft: false
repo: https://github.com/Rahulseh1998/hashnode-publish-action
marketplace: https://github.com/marketplace/actions/hashnode-auto-publisher
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Rahulseh1998/hashnode-publish-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hashnode-auto-publisher) to find the latest changes.

## Action Summary

The Hashnode Publish Action is a GitHub Action designed to automate the publishing, updating, and management of markdown-based blog posts on Hashnode directly from a GitHub repository. It provides full CRUD (Create, Read, Update, Delete) capabilities, along with features like draft support, series creation, co-authoring, SEO metadata, and error handling, simplifying content management workflows for developers. This action eliminates the need for manual post handling on Hashnode, streamlining the process of managing publications through version-controlled repositories.

## Release notes

# Hashnode Publish Action v1.0.0

A GitHub Action to publish markdown posts to Hashnode with full CRUD support.

## Features

- **Publish** markdown posts to Hashnode
- **Update** existing posts (auto-detected by slug)
- **Delete** posts via frontmatter flag
- **Draft** support for work-in-progress posts
- **Series** auto-creation and assignment
- Proper error handling and detailed logging

## Quick Start

```yaml
- uses: Rahulseh1998/hashnode-publish-action@v1
  with:
    access-token: ${{ secrets.HASHNODE_ACCESS_TOKEN }}
    publication-id: ${{ secrets.HASHNODE_PUBLICATION_ID }}
    publication-host: your-blog.hashnode.dev
```

See the [README](https://github.com/Rahulseh1998/hashnode-publish-action#readme) for full documentation.
