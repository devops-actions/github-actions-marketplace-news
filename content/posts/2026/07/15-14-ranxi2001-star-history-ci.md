---
title: Star History CI
date: 2026-07-15 14:54:15 +00:00
tags:
  - ranxi2001
  - GitHub Actions
draft: false
repo: https://github.com/ranxi2001/star-history-ci
marketplace: https://github.com/marketplace/actions/star-history-ci
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Star History CI GitHub Action automates the process of keeping star history charts alive in READMEs by rendering, renaming, and publishing SVG files to a stable output branch. It solves the problem of maintaining up-to-date star chart visualizations without manually updating images in the default repository branch. The action runs from source within the repository and does not rely on third-party services for rendering or publishing, ensuring security and control over the data.
---


Version updated for **https://github.com/ranxi2001/star-history-ci** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-ci) to find the latest changes.

## Action Summary

The Star History CI GitHub Action automates the process of keeping star history charts alive in READMEs by rendering, renaming, and publishing SVG files to a stable output branch. It solves the problem of maintaining up-to-date star chart visualizations without manually updating images in the default repository branch. The action runs from source within the repository and does not rely on third-party services for rendering or publishing, ensuring security and control over the data.

## What's Changed

## Breaking change

Version 2 requires a PAT owned by an admin or collaborator of every repository being charted. Store it as `STAR_HISTORY_TOKEN` and pass it through the `token` input.

## Highlights

- Vendors the Star History renderer and locked dependencies into this repository.
- Replaces third-party render and publishing Actions with local scripts.
- Handles both 403 and restricted empty stargazer responses safely.
- Adds offline renderer, access-control, filename, and publishing tests.

## Upgrade

```yaml
- uses: ranxi2001/star-history-ci@v2
  with:
    repos: ${{ github.repository }}
    token: ${{ secrets.STAR_HISTORY_TOKEN }}
```

See [CHANGELOG.md](https://github.com/ranxi2001/star-history-ci/blob/v2.0.0/CHANGELOG.md) for details.
