---
title: lgtmaybe
date: 2026-07-26 14:47:04 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a tool for automated pull request review that provides inline comments and a summary. It reviews code changes in context by analyzing surrounding lines and posts security checks using an OpenAI-compatible endpoint, addressing various issues such as logic errors, security vulnerabilities, missing tests, and outdated documentation. The tool skips non-reviewable files and redacts sensitive information before sending the diff to the model for analysis.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a tool for automated pull request review that provides inline comments and a summary. It reviews code changes in context by analyzing surrounding lines and posts security checks using an OpenAI-compatible endpoint, addressing various issues such as logic errors, security vulnerabilities, missing tests, and outdated documentation. The tool skips non-reviewable files and redacts sensitive information before sending the diff to the model for analysis.

## What's Changed

## [1.6.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.5.5...lgtmaybe-v1.6.0) (2026-07-26)


### Features

* **cache:** widen prompt caching to vertex, zai, and openrouter routes ([#266](https://github.com/MattJColes/lgtmaybe/issues/266)) ([461c34a](https://github.com/MattJColes/lgtmaybe/commit/461c34a918b0da7e191df8f0b648315e057ed363))
* **preset:** four distinct lenses on every provider ([#268](https://github.com/MattJColes/lgtmaybe/issues/268)) ([2d81f5e](https://github.com/MattJColes/lgtmaybe/commit/2d81f5ec7cdf7f87b8d2dfa8ec9e1aee8a64d57a))
* **timeouts:** raise every wall-clock budget so slow calls finish ([#264](https://github.com/MattJColes/lgtmaybe/issues/264)) ([90591f4](https://github.com/MattJColes/lgtmaybe/commit/90591f486c2e0be520459aee6604cd5bd161a477))


### Performance Improvements

* overlap the three serial I/O stages, isolate resolve failures ([#270](https://github.com/MattJColes/lgtmaybe/issues/270)) ([f03c4bf](https://github.com/MattJColes/lgtmaybe/commit/f03c4bf6e0e679bd3a7dbb865ba3f9a5baf8f9ea))


### Documentation

* **preset:** fix the mangled --preset help and sweep the stale call counts ([#269](https://github.com/MattJColes/lgtmaybe/issues/269)) ([44a4776](https://github.com/MattJColes/lgtmaybe/commit/44a47769051e39a3a3a6b6f82b4b0cea4a94f770))
