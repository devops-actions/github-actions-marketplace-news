---
title: Honeycomb Buildevents
date: 2026-04-08 22:09:21 +00:00
tags:
  - honeycombio
  - GitHub Actions
draft: false
repo: https://github.com/honeycombio/gha-buildevents
marketplace: https://github.com/marketplace/actions/honeycomb-buildevents
version: v4.0.0
dependentsNumber: "20"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/honeycombio/gha-buildevents** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **20** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/honeycomb-buildevents) to find the latest changes.

## Action Summary

The `gha-buildevents` GitHub Action integrates Honeycomb's `buildevents` tool into workflows to generate detailed traces of build processes, capturing metadata from the GitHub Actions environment. It automates the creation and submission of traces for all jobs, even in cases of build failure, enabling improved visibility and debugging of CI/CD pipelines. Key capabilities include support for single and multi-job workflows, trace organization with unique step IDs, and handling job or workflow status for accurate trace completion.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v4.0.0 -->

## What's Changed

v4 requires the `node24` action runtime. GitHub Action runners must have Node.js 24 available.

### 🐛 Fixes

* fix: preserve .exe extension when installing buildevents on Windows by @muhammadarslan-techsol & @robbkidd in https://github.com/honeycombio/gha-buildevents/pull/334

### 🛠 Maintenance

* maint: upgrade to Node 24 by @robbkidd in https://github.com/honeycombio/gha-buildevents/pull/333
* build(deps-dev): bump @types/node from 24.12.2 to 25.3.5 in the major-types group by @dependabot[bot] in https://github.com/honeycombio/gha-buildevents/pull/346
* build(deps-dev): bump the major-typescript-eslint group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/honeycombio/gha-buildevents/pull/345
* build(deps-dev): bump the patch-and-minor group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/honeycombio/gha-buildevents/pull/343
* build(deps): bump the major-actions group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/honeycombio/gha-buildevents/pull/344


**Full Changelog**: https://github.com/honeycombio/gha-buildevents/compare/v3.1.1...v4.0.0
