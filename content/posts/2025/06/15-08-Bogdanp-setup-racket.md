---
title: Setup Racket environment
date: 2025-06-15 08:59:09 +00:00
tags:
  - Bogdanp
  - GitHub Actions
draft: false
repo: https://github.com/Bogdanp/setup-racket
marketplace: https://github.com/marketplace/actions/setup-racket-environment
version: v1.14
dependentsNumber: "1,160"
---


Version updated for **https://github.com/Bogdanp/setup-racket** to version **v1.14**.
- This action is used across all versions by **1,160** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-racket-environment) to find the latest changes.

## Release notes

# Changed

* The snapshot sites [have been updated](https://racket.discourse.group/t/new-snapshot-builds-configuration/3790) to consolidate the set of builds provided between the Utah and Northwestern sites. BC snapshots are now no longer available, so if you currently use `version: current` with `variant: BC`, you'll have to change `variant` to `CS` to fix your builds going forward. Additionally, the "test" distribution from Northwestern is no longer available. In the highly unlikely case you were setting `distribution` to `test`, change it to `full`. The `test` option is rejected by the action as of this version.
