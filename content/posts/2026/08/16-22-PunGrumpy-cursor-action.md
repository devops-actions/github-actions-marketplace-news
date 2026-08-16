---
title: Cursor Action
date: 2026-08-16 22:11:09 +00:00
tags:
  - PunGrumpy
  - GitHub Actions
draft: false
repo: https://github.com/PunGrumpy/cursor-action
marketplace: https://github.com/marketplace/actions/cursor-action
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the execution of Cursor agents using the official @cursor/sdk. It runs on multiple platforms and allows for customization of prompts, models, and permissions through inputs. The action outputs a model response stored in `steps.<id>.outputs.summary`, which can be used in subsequent steps without interpolation to avoid security risks from untrusted model output.
---


Version updated for **https://github.com/PunGrumpy/cursor-action** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cursor-action) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of Cursor agents using the official @cursor/sdk. It runs on multiple platforms and allows for customization of prompts, models, and permissions through inputs. The action outputs a model response stored in `steps.<id>.outputs.summary`, which can be used in subsequent steps without interpolation to avoid security risks from untrusted model output.

## What's Changed

### Patch Changes

- cf2ab49: Publish a moving `v1` tag on every release, so `uses: PunGrumpy/cursor-action@v1`
  resolves to the latest `v1.x.x`. Previously only exact `vX.Y.Z` tags existed and
  `@v1` did not resolve at all.
- 2c2f2ba: Update `@cursor/sdk` to 1.0.28. It drops `sqlite3` from its dependencies in
  favour of an optional `@cursor/sdk/sqlite` entry point, so the action no longer
  pulls a native module that has to be prebuilt or compiled during install.
- cf2ab49: Document that `permissions` is validated but never enforced: the value is not
  passed to the SDK, so `read-only` does **not** stop the agent from editing files
  or running shell commands. Tool access follows your API key and account. It is
  wired to the SDK's tool restrictions in v2.

  `cursor-version` is likewise ignored — the SDK manages the agent version.

- cf2ab49: Fix the action failing with a module resolution error at every published tag.
  `dist/` was gitignored while `action.yml` executed `dist/index.mjs`, so the file
  never existed for consumers — only this repository's own smoke test worked,
  because it downloaded `dist/` as a build artifact first.

  `dist/` is now committed. It holds only this repository's own code (5.8 kB):
  `@cursor/sdk` cannot be bundled, because it dynamically imports its own webpack
  chunks at runtime and resolves a native `@cursor/sdk-<platform>` package, so it
  stays external and the action installs it.
