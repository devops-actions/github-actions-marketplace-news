---
title: Motoish CalVer Release
date: 2026-08-17 13:58:15 +00:00
tags:
  - motoish
  - GitHub Actions
draft: false
repo: https://github.com/motoish/calver-release-action
marketplace: https://github.com/marketplace/actions/motoish-calver-release
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The CalVer Release Action automates the process of publishing immutable daily builds, maintaining a daily prerelease channel, and promoting an explicitly selected build to a monthly stable release. It helps manage versioning across releases in a project using Calendar Versioning (CalVer) conventions. The action requires permissions to write GitHub content and supports customizable timezone settings for the daily calendar.
---


Version updated for **https://github.com/motoish/calver-release-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/motoish-calver-release) to find the latest changes.

## Action Summary

The CalVer Release Action automates the process of publishing immutable daily builds, maintaining a daily prerelease channel, and promoting an explicitly selected build to a monthly stable release. It helps manage versioning across releases in a project using Calendar Versioning (CalVer) conventions. The action requires permissions to write GitHub content and supports customizable timezone settings for the daily calendar.

## What's Changed

## Bug fix

Daily and promote no longer fail the preflight check when the workflow uses `GITHUB_TOKEN`.

`GET /repos` reports collaborator ACL (`permissions.push`), not the job's `contents: write` grant. GitHub Actions tokens often show `push: false` even when they can create tags and Releases, which made v1.1.0 fail with:

`GitHub token requires contents: write permission`

The Action now only treats a real `403` from GitHub writes as a permission error. Callers that already set `permissions: contents: write` do not need a PAT.

## Upgrade

```yaml
uses: motoish/calver-release-action@v1
```

Move the `v1` tag to this release after publishing.
