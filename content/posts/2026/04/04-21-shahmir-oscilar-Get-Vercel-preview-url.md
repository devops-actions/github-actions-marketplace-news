---
title: Get Vercel deployment Preview URL
date: 2026-04-04 21:40:10 +00:00
tags:
  - shahmir-oscilar
  - GitHub Actions
draft: false
repo: https://github.com/shahmir-oscilar/Get-Vercel-preview-url
marketplace: https://github.com/marketplace/actions/get-vercel-deployment-preview-url
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shahmir-oscilar/Get-Vercel-preview-url** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-vercel-deployment-preview-url) to find the latest changes.

## Action Summary

This GitHub Action retrieves the correct preview URL for Vercel deployments during CI workflows, supporting both `pull_request` and `push` triggers. Unlike similar actions, it accurately resolves preview URLs by filtering using both the commit SHA and branch name, ensuring proper URL assignment when multiple branches share the same commit. It automates the process of fetching deployment URLs, streamlining tasks like performance audits or integration testing.

## What's Changed

- [Update packages, and use node 24](https://github.com/thundermiracle/Get-Vercel-preview-url/commit/576abd7b401a27ba83b501e1eed4e7615c126783)
- [Use the sha and branch filters when fetching URL from vercel](https://github.com/thundermiracle/Get-Vercel-preview-url/commit/65b7c335591fe53df7bd633f7c51088af71c1145)
- [Don't need limit?](https://github.com/thundermiracle/Get-Vercel-preview-url/commit/cf0e3c0eb760065ad99c8a1cf6cd721d5292ae87)
