---
title: Get Vercel deployment Preview URL
date: 2026-05-26 22:52:08 +00:00
tags:
  - shahmir-oscilar
  - GitHub Actions
draft: false
repo: https://github.com/shahmir-oscilar/Get-Vercel-preview-url
marketplace: https://github.com/marketplace/actions/get-vercel-deployment-preview-url
version: v2.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shahmir-oscilar/Get-Vercel-preview-url** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-vercel-deployment-preview-url) to find the latest changes.

## Action Summary

This GitHub Action retrieves the preview URL of a Vercel deployment in continuous integration pipelines, supporting `pull_request` and `push` workflow triggers. It resolves issues with identifying deployments for branches sharing the same commit by filtering deployments based on both commit SHA and branch name. This ensures accurate preview URLs for each branch, streamlining deployment verification and integration workflows.

## What's Changed

## Changes

- Document the optional `vercel_project_id` input in the README
- Use floating `@v2` tag in README usage examples (instead of pinning to a specific patch)

No code changes — this release exists so the GitHub Marketplace listing picks up the updated README.

🤖 Generated with [Claude Code](https://claude.com/claude-code)
