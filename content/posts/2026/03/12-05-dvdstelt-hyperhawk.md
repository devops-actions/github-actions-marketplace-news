---
title: HyperHawk Link Checker
date: 2026-03-12 05:56:37 +00:00
tags:
  - dvdstelt
  - GitHub Actions
draft: false
repo: https://github.com/dvdstelt/hyperhawk
marketplace: https://github.com/marketplace/actions/hyperhawk-link-checker
version: v1.8.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/dvdstelt/hyperhawk** to version **v1.8.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hyperhawk-link-checker) to find the latest changes.

## Action Summary

HyperHawk is a GitHub Action that automatically scans markdown files for broken links, including internal, same-organization GitHub links, and external URLs. It automates the process of identifying and reporting link issues by posting inline review comments with one-click fix suggestions on pull requests, and by generating summary reports for push and scheduled workflows. Its key capabilities include configurable link checks, integration with GitHub's API, and support for advanced features like cross-repo access and strict mode for failing workflows.

## Release notes

## Summary

GitHub's web UI silently redirects master -> main, but the API returns 404. When a file is not found at the URL's ref, retry on the repo's default branch and suggest updating the link if the file is found.

## PRs involved
* Suggest default branch when same-org link uses a renamed branch by @dvdstelt in https://github.com/dvdstelt/hyperhawk/pull/18

**Full Changelog**: https://github.com/dvdstelt/hyperhawk/compare/v1.8.1...v1.8.2
