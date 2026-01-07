---
title: Vercel Preview URL with Status Polling
date: 2026-01-07 05:38:50 +00:00
tags:
  - RoyBkker
  - GitHub Actions
draft: false
repo: https://github.com/RoyBkker/github-action-vercel-preview-url-poller
marketplace: https://github.com/marketplace/actions/vercel-preview-url-with-status-polling
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/RoyBkker/github-action-vercel-preview-url-poller** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vercel-preview-url-with-status-polling) to find the latest changes.

## Action Summary

This GitHub Action retrieves the Vercel preview deployment URL and monitors the deployment status using Vercel's API, ensuring the environment is fully deployed before continuing in a CI/CD workflow. It eliminates reliance on GitHub deployment status events or webhooks, providing a more reliable and flexible solution for automating tasks such as end-to-end testing or multi-project workflows. Key features include real-time status polling, branch alias support, configurable timeouts, and custom deployment state handling.

## Release notes

## 🎉 New Feature

### Poll Specific Preview URLs

Added support for polling specific preview URLs when you already know the deployment URL you want to monitor. This is particularly useful for workflows that use `vercel deploy` directly and need to poll the exact deployment they created.

#### New Input Parameter

- `match_preview_url` (optional): Exact string to match the preview URL

#### Usage Example

```yaml
- name: Poll Vercel Deployment
  uses: RoyBkker/github-action-vercel-preview-url-poller@v1.1.0
  with:
    vercel_token: ${{ secrets.VERCEL_TOKEN }}
    vercel_project_id: ${{ secrets.VERCEL_PROJECT_ID }}
    match_preview_url: ${{ steps.deploy.outputs.preview-url }}
    max_timeout: 300
    polling_interval: 5
```

#### Benefits

- **Precise Polling**: Poll the exact deployment you care about, avoiding race conditions with parallel deployments
- **Backward Compatible**: Existing workflows continue to work without any changes
- **Graceful Fallback**: If the specified URL isn't found, falls back to the most recent deployment for the branch

## 🔄 What's Changed

* feat: support polling specific preview URLs by @jdtzmn in #1

## 🙏 Contributors

Thank you @jdtzmn for this contribution!

**Full Changelog**: https://github.com/RoyBkker/github-action-vercel-preview-url-poller/compare/v1.0.6...v1.1.0
