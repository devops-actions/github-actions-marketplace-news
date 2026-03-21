---
title: sustainable-npm
date: 2026-03-21 21:21:39 +00:00
tags:
  - lowlydba
  - GitHub Actions
draft: false
repo: https://github.com/lowlydba/sustainable-npm
marketplace: https://github.com/marketplace/actions/sustainable-npm
version: v3.0.0
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/lowlydba/sustainable-npm** to version **v3.0.0**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sustainable-npm) to find the latest changes.

## Action Summary

The `sustainable-npm` GitHub Action optimizes npm configurations in CI workflows to reduce installation times, lower resource consumption, and minimize energy usage. It automates the application of efficient npm defaults, such as disabling unnecessary processes (e.g., progress bars, update notifications), making it ideal for faster, greener, and cost-effective CI/CD pipelines. This lightweight, dependency-free action integrates seamlessly with `actions/setup-node` and supports all active Node.js LTS versions.

## Release notes

## 🚨  Breaking Changes

v3 adds a new `ignore-scripts` input, with a default of true. npm lifecycle scripts such as postinstall will now be skipped unless explicitly re-enabled. If your workflow depends on install scripts from trusted packages, set ignore-scripts: 'false' to preserve previous behavior.

This was done to maintain security by default on the action, in addition to further reducing unnecessary npm install activities in CI.

## What’s Changed

Add v2 release + docs updates by @lowlydba in [https://github.com/lowlydba/sustainable-npm/pull/12](vscode-file://vscode-app/c:/Users/Jonny/AppData/Local/Programs/Microsoft%20VS%20Code/07ff9d6178/resources/app/out/vs/code/electron-browser/workbench/workbench.html)
Add script skips by @lowlydba in [https://github.com/lowlydba/sustainable-npm/pull/13](vscode-file://vscode-app/c:/Users/Jonny/AppData/Local/Programs/Microsoft%20VS%20Code/07ff9d6178/resources/app/out/vs/code/electron-browser/workbench/workbench.html)



## Full Changelog
[https://github.com/lowlydba/sustainable-npm/compare/v2...v3.0.0](vscode-file://vscode-app/c:/Users/Jonny/AppData/Local/Programs/Microsoft%20VS%20Code/07ff9d6178/resources/app/out/vs/code/electron-browser/workbench/workbench.html)
