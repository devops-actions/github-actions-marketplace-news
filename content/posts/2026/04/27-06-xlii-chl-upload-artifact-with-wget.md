---
title: Upload an artifact with wget
date: 2026-04-27 06:35:57 +00:00
tags:
  - xlii-chl
  - GitHub Actions
draft: false
repo: https://github.com/xlii-chl/upload-artifact-with-wget
marketplace: https://github.com/marketplace/actions/upload-an-artifact-with-wget
version: v4.0.4-github
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/xlii-chl/upload-artifact-with-wget** to version **v4.0.4-github**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-an-artifact-with-wget) to find the latest changes.

## Action Summary

The `@actions/upload-artifact-with-wget` GitHub Action provides a lightweight solution for uploading artifacts in workflows, particularly optimized for simple workflows running on self-hosted runners using Alpine containers. It eliminates the need for a Node.js runtime by leveraging `wget` and `zip`, reducing resource overhead. This action automates the process of compressing and uploading files or directories as artifacts while providing essential outputs like artifact IDs and download URLs.

## What's Changed

- Merge tag 'v4.0.4' into v4-github (2244749)
- Simplifying artifact-url generation since Forgejo follows Github (fabd98e)
- Manual launch via workflow_dispatch + readme update (1922406)
- Merge tag 'v4.0.3' into v4-github (deb9a27)
- Stopping the mixing -> clear separation Forgejo/Github (17f9610)
- Comment to help switch from Github to Gitea/Forgejo (149151a)
- Fixup workflow trigger on Forgejo (67ac851)
- Merge branch 'v4' into v4-github (2cad203)
- Branding for Github's marketplace (9c77c26)
- Github's marketplace: Description must be less than 125 characters (61b070e)
