---
title: powerplatform-actions
date: 2023-09-22 03:10:53 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: microsoft/powerplatform-actions
marketplace: https://github.com/marketplace/actions/powerplatform-actions
version: v1.1.0
dependentsNumber: "11"
---


Version updated for **microsoft/powerplatform-actions** to version **v1.1.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/powerplatform-actions) to find the latest changes.

## Release notes

## Release Notes
* `actions-install` now supports obtaining and install PAC from sources other than public nuget.org via https://github.com/microsoft/powerplatform-actions/pull/441
  * `nuget-feed-override` can be set to any feed location, including private feeds or even a local folder where the *.nupkg files exist on the actions runner disk
  *  `nuget-feed-username` and `nuget-feed-password` can be set for authenticated feeds.  Not that Azure DevOps feeds will typically use an PAT in the password field with any non-empty string for the username
  * Alternatively, users who already have PAC installed on their actions runner can point our actions to the preinstalled copy via the `use-preinstalled-pac` argument
* `branch-solution` now sets the commiter's email address to the current actor's github noreply address, or falls back to the github actions bot if no user actor is present https://github.com/microsoft/powerplatform-actions/pull/438
* corrected parameters used in `update-solution-version` and `set-online-solution-version` https://github.com/microsoft/powerplatform-actions/pull/435
 
## PRs merged since last release
* Fixes for the two Solution Version actions by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/435
* branch-solution commit author fix by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/438
* Updating actions-install to permit overriding the nuget feed by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/441
* Replacing old SPN used in rolling instance actions by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/446
* Update test SPN again by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/447
* Bump esbuild from 0.18.11 to 0.19.3 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/449
* Bump eslint from 8.44.0 to 8.49.0 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/443
* Bump glob from 10.3.3 to 10.3.4 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/439
* Bump node-fetch from 3.3.1 to 3.3.2 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/429
* August Refresh by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/453


**Full Changelog**: https://github.com/microsoft/powerplatform-actions/compare/v1.0.0...v1.1.0
