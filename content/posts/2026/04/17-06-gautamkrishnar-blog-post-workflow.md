---
title: Blog Post Workflow
date: 2026-04-17 06:33:36 +00:00
tags:
  - gautamkrishnar
  - GitHub Actions
draft: false
repo: https://github.com/gautamkrishnar/blog-post-workflow
marketplace: https://github.com/marketplace/actions/blog-post-workflow
version: 1.9.6
dependentsNumber: "11,350"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/gautamkrishnar/blog-post-workflow** to version **1.9.6**.

- This action is used across all versions by **11,350** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blog-post-workflow) to find the latest changes.

## Action Summary

The "Blog Post Workflow" GitHub Action automates the process of updating a repository's README file with the latest blog posts from specified RSS feeds. It solves the problem of manually keeping blog post links up to date by running on a scheduled basis or being triggered manually. This action is ideal for developers or content creators who wish to showcase their latest blog content dynamically in their GitHub repositories.

## What's Changed

## What's Changed

* fix: `customTags` variable is now accessible inside `item_exec`, restoring backward compatibility broken in 1.9.5 (fixes #292)

### Details
The migration to ES modules in 1.9.5 changed `item_exec` evaluation from `eval()` to `new Function()`, which removed access to local scope variables like `customTags`. This release passes `customTags` into the `item_exec` execution context so existing workflows continue to work as expected.

Thanks to @bnbong for reporting the issue and providing a detailed bug report with a clear reproduction case! 🙏

**Full Changelog**: https://github.com/gautamkrishnar/blog-post-workflow/compare/1.9.5...1.9.6
