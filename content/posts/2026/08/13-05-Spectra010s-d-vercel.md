---
title: Deploy to Vercel
date: 2026-08-13 05:45:35 +00:00
tags:
  - Spectra010s
  - GitHub Actions
draft: false
repo: https://github.com/Spectra010s/d-vercel
marketplace: https://github.com/marketplace/actions/deploy-to-vercel
version: v1.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The d-vercel GitHub Action simplifies the deployment of frontend and full-stack applications to Vercel. It automates PR comments, supports monorepos, and allows for customized CI/CD pipelines. The action generates sticky comments on Pull Requests with deployment status, preview links, commit hashes, and logs, facilitating quick updates.
---


Version updated for **https://github.com/Spectra010s/d-vercel** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-vercel) to find the latest changes.

## Action Summary

The d-vercel GitHub Action simplifies the deployment of frontend and full-stack applications to Vercel. It automates PR comments, supports monorepos, and allows for customized CI/CD pipelines. The action generates sticky comments on Pull Requests with deployment status, preview links, commit hashes, and logs, facilitating quick updates.

## What's Changed

## What's Changed

### Γëí╞Æ├£├ç New: `comment-marker` input for monorepo workflows

`d-vercel` now supports a `comment-marker` input so you can set a **distinct sticky comment marker per job**. In monorepos (Turborepo/pnpm workspaces) where one workflow runs multiple `d-vercel` jobs ╬ô├ç├╢ one per app ╬ô├ç├╢ each job previously shared the same hardcoded marker, so the last job to finish overwrote the single PR comment.

Now each app keeps its own sticky comment, updated independently on subsequent commits.

```yaml
- uses: Spectra010s/d-vercel@v1
  with:
    comment-title: "Vercel Deployment ╬ô├ç├╢ Web"
    comment-marker: "vercel-sticky-comment-web"
```

- New "Monorepo: Multiple Apps, One Workflow" section in the README ([#13](https://github.com/Spectra010s/d-vercel/pull/13))
- Closes [#12](https://github.com/Spectra010s/d-vercel/issues/12)

### Maintenance

- Bumped [`git-aic`](https://git-aic.pages.dev) to `1.4.1`, `prettier` to `3.9.6`, and `rollup` to `4.62.4`
- Fixed git-aic links in `CONTRIBUTING.md`

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/Spectra010s/d-vercel/pull/14

**Full Changelog**: https://github.com/Spectra010s/d-vercel/compare/v1.2.0...v1.3.0


