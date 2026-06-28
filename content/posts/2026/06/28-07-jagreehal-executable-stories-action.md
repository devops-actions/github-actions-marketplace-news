---
title: Executable Stories
date: 2026-06-28 07:15:38 +00:00
tags:
  - jagreehal
  - GitHub Actions
draft: false
repo: https://github.com/jagreehal/executable-stories-action
marketplace: https://github.com/marketplace/actions/executable-stories
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jagreehal/executable-stories-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/executable-stories) to find the latest changes.

## What's Changed

## Breaking

Portal mode is removed. A living-docs site now comes from a committed Astro project: scaffold once with `executable-stories init-astro` and deploy with `astro build` in your own workflow. The action focuses on the PR and release surfaces: `report` (default), `review`, `gate-release`, and `deploy`.

If you depend on portal mode, stay on `@v1` (pinned to the last portal-capable release).

## Changed

The action is now developed in the [executable-stories monorepo](https://github.com/jagreehal/executable-stories/tree/main/packages/executable-stories-action) and mirrored to this repo, so it stays in sync with the CLI it drives. File issues and PRs against the monorepo.

## Usage

```yaml
- uses: jagreehal/executable-stories-action@v2
```
