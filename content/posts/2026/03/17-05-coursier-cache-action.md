---
title: coursier-cache-action
date: 2026-03-17 05:53:36 +00:00
tags:
  - coursier
  - GitHub Actions
draft: false
repo: https://github.com/coursier/cache-action
marketplace: https://github.com/marketplace/actions/coursier-cache-action
version: v8.1.0
dependentsNumber: "5,696"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/coursier/cache-action** to version **v8.1.0**.
- This action is used across all versions by **5,696** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/coursier-cache-action) to find the latest changes.

## Action Summary

The **Coursier Cache Action** is a GitHub Action designed to automate the caching and restoration of build tool caches, including those for Coursier, sbt, Mill, and Ammonite, during CI workflows. This action reduces build times and improves efficiency by ensuring that dependencies and build artifacts are reused across workflow runs. It provides flexible caching mechanisms with customizable keys, cache paths, and support for additional files that influence cache invalidation.

## Release notes

## What's Changed
* Clean up ephemeral files before saving sbt/ivy2 cache by @Copilot in https://github.com/coursier/cache-action/pull/806
* Add `disableFallback` option to prevent cache key fallback by @Copilot in https://github.com/coursier/cache-action/pull/807
* Add COURSIER_CACHE_ACTION_CACHE_VERSION env var for manual cache invalidation by @Copilot in https://github.com/coursier/cache-action/pull/808

## Updates / maintenance
* Bump @stylistic/eslint-plugin-ts from 2.13.0 to 3.1.0 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/792
* Bump prettier from 3.7.4 to 3.8.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/789
* Bump @types/node from 25.2.0 to 25.3.0 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/791
* Bump eslint from 8.57.0 to 10.0.0 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/793
* Bump @actions/glob from 0.5.0 to 0.6.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/790
* Update dist by @github-actions[bot] in https://github.com/coursier/cache-action/pull/798
* Bump @stylistic/eslint-plugin-ts from 3.1.0 to 4.4.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/800
* Bump @typescript-eslint/parser from 8.56.0 to 8.56.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/801
* Bump eslint from 10.0.0 to 10.0.2 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/802
* Bump @types/node from 25.3.0 to 25.3.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/804
* Bump @typescript-eslint/eslint-plugin from 8.56.0 to 8.56.1 by @dependabot[bot] in https://github.com/coursier/cache-action/pull/803
* Update dist by @github-actions[bot] in https://github.com/coursier/cache-action/pull/805
* Update dist by @github-actions[bot] in https://github.com/coursier/cache-action/pull/809


**Full Changelog**: https://github.com/coursier/cache-action/compare/v8...v8.1.0
