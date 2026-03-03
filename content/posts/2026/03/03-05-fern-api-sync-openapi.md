---
title: Sync OpenAPI Files
date: 2026-03-03 05:51:57 +00:00
tags:
  - fern-api
  - GitHub Actions
draft: false
repo: https://github.com/fern-api/sync-openapi
marketplace: https://github.com/marketplace/actions/sync-openapi-files
version: v4.0.0
dependentsNumber: "25"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/fern-api/sync-openapi** to version **v4.0.0**.
- This action is used across all versions by **25** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-openapi-files) to find the latest changes.

## Action Summary

This GitHub Action, **sync-openapi**, automates the synchronization of OpenAPI specifications with a Fern setup. It enables seamless updates by either pulling OpenAPI specs from a public URL or syncing files between repositories, ensuring the latest API definitions are accurately integrated. Key features include automated pull requests, deduplication of PRs, and handling branch divergences, streamlining the process of maintaining up-to-date API documentation.

## Release notes

## What's Changed
* cut `addTimestamp`, release v3 by @patrickthornton in https://github.com/fern-api/sync-openapi/pull/10
* chore(deps): upgrade undici to 6.23.0 to address CVE-2026-22036 by @davidkonigsberg in https://github.com/fern-api/sync-openapi/pull/12
* Bump @isaacs/brace-expansion from 5.0.0 to 5.0.1 by @dependabot[bot] in https://github.com/fern-api/sync-openapi/pull/13
* Bump minimatch from 10.1.1 to 10.2.2 by @dependabot[bot] in https://github.com/fern-api/sync-openapi/pull/14
* fix: update minimatch to ^10.2.3 to address CVE-2026-27903 and CVE-2026-27904 by @davidkonigsberg in https://github.com/fern-api/sync-openapi/pull/15
* fix: reuse existing PR in updateFromSourceSpec instead of creating duplicates by @Swimburger in https://github.com/fern-api/sync-openapi/pull/16

## New Contributors
* @patrickthornton made their first contribution in https://github.com/fern-api/sync-openapi/pull/10
* @dependabot[bot] made their first contribution in https://github.com/fern-api/sync-openapi/pull/13
* @Swimburger made their first contribution in https://github.com/fern-api/sync-openapi/pull/16

**Full Changelog**: https://github.com/fern-api/sync-openapi/compare/v3...v4.0.0
