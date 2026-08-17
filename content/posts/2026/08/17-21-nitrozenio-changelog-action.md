---
title: Nitrozen Changelog
date: 2026-08-17 21:57:08 +00:00
tags:
  - nitrozenio
  - GitHub Actions
draft: false
repo: https://github.com/nitrozenio/changelog-action
marketplace: https://github.com/marketplace/actions/nitrozen-changelog
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Nitrozen Changelog Action automates the process of publishing a changelog entry to a Nitrozen project from within a GitHub Actions workflow. It simplifies the task of creating and managing changelogs by integrating with Nitrozen's API, reducing manual effort and improving consistency across releases. The action supports various inputs for customizing the changelog entry, such as title, content, category, and publishing settings.
---


Version updated for **https://github.com/nitrozenio/changelog-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nitrozen-changelog) to find the latest changes.

## Action Summary

The Nitrozen Changelog Action automates the process of publishing a changelog entry to a Nitrozen project from within a GitHub Actions workflow. It simplifies the task of creating and managing changelogs by integrating with Nitrozen's API, reducing manual effort and improving consistency across releases. The action supports various inputs for customizing the changelog entry, such as title, content, category, and publishing settings.

## What's Changed

## Nitrozen Changelog Action

Publish a [Nitrozen](https://nitrozen.io) changelog entry straight from a GitHub Actions workflow — most commonly triggered by a GitHub Release.

```yaml
- uses: nitrozenio/changelog-action@v1
  with:
    api-key: ${{ secrets.NITROZEN_API_KEY }}
    project-id: '123'
```

### Highlights

- **Zero setup.** Composite action, no `npm install` or build step — runs on the Node runtime every GitHub-hosted runner already ships.
- **Release-aware defaults.** On a `release` event, `title` and `content` default to the release's name/tag and body, so the  snippet above is a complete integration by itse
- **Draft or publish.** Set `is-published: 'false'` to import as a draft for manual review instead of publishing immediately. - **Preserves original dates.** `published-at` timestamp instead of always using "now".
- **Useful outputs.** `entry-id` and (when `project-slug` is set) `changelog-url`, so you can comment the published link back on the release or a PR.

See the [README](https://github.com/nitrozenio/changelog-action#readme) for the full input/output reference, and [nitrozen.io/docs/github-action](https://nitrozen.io/docs/github-action) for the hosted docs.
