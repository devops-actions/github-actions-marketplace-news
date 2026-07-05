---
title: Setup runner cli
date: 2026-07-05 06:26:43 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.18.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.18.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Fixed

- The v0.18.0 npm packages spawn-failed with `EACCES`: the platform
  packages' new explicit `bin` field disabled `directories.bin` linking, so
  npm no longer marked the native binaries executable at install — breaking
  both `npx @runner-run/<platform> …` and the `runner-run` facade. Platform
  `bin` entries now point directly at the native binaries and expose both
  commands (`npx --package=@runner-run/<platform> runner …` and `… run …`);
  the launcher shim and the erroneous `bin` + `directories.bin` combination
  are gone. Versions up to 0.17.0 were unaffected; 0.18.0 is deprecated on
  npm.
- The npm dist artifact now crosses the build→publish handoff as a tarball
  so unix file modes survive the zip-based artifact store; the publish job
  refuses non-executable binaries and smoke-tests the packed tarballs
  (install + execute every bin) before publishing.

**Full Changelog**: https://github.com/kjanat/runner/compare/v0.18.0...v0.18.1

