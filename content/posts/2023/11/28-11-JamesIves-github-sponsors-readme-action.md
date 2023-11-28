---
title: Add GitHub Sponsors to Readme
date: 2023-11-28 11:13:20 +00:00
tags:
  - JamesIves
  - GitHub Actions
draft: false
repo: JamesIves/github-sponsors-readme-action
marketplace: https://github.com/marketplace/actions/add-github-sponsors-to-readme
version: v1.3.0
dependentsNumber: "7"
---


Version updated for **JamesIves/github-sponsors-readme-action** to version **v1.3.0**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/add-github-sponsors-to-readme) to find the latest changes.

## Release notes

## What's Changed
* The action is now developed against Node 20.
* The `sponsorship-status` output has been renamed to `sponsorshipStatus` to comply with best practices. **This has the potential to break some workflows, but it is unlikely as the way this variable was named previously makes it difficult to interface with. As such as this has not been marked as a breaking change, I apologize if this theory ends up being inaccurate.**
* Fixes an issue where if for some reason `monthlyPriceInCents` is undefined, we set the value to `0`. 
* Add note for organisation usage by @0xTim in https://github.com/JamesIves/github-sponsors-readme-action/pull/538

### Dependencies 🤖 
* chore(deps): bump @actions/core from 1.9.1 to 1.10.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/495
* chore(deps-dev): bump eslint from 8.24.0 to 8.27.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/532
* chore(deps-dev): bump eslint-plugin-jest from 27.0.4 to 27.1.5 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/539
* chore(deps-dev): bump prettier from 2.7.1 to 2.8.4 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/600
* chore(deps-dev): bump @typescript-eslint/eslint-plugin from 5.39.0 to 5.60.1 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/628
* chore(deps): bump cross-fetch from 3.1.5 to 3.1.6 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/629
* chore(deps-dev): bump eslint from 8.27.0 to 8.43.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/621
* chore(deps-dev): bump @types/node from 18.7.18 to 20.3.2 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/627
* chore(deps-dev): bump eslint-plugin-jest from 27.1.5 to 27.2.2 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/623
* chore(deps): bump @actions/io from 1.1.2 to 1.1.3 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/630
* chore(deps-dev): bump @types/node from 20.3.2 to 20.3.3 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/631
* chore(deps-dev): bump nock from 13.2.9 to 13.3.1 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/632
* chore(deps-dev): bump @types/node from 20.3.3 to 20.4.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/635
* chore(deps): bump tough-cookie from 4.0.0 to 4.1.3 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/640
* chore(deps): bump semver from 5.7.1 to 5.7.2 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/641
* chore(deps-dev): bump @typescript-eslint/eslint-plugin from 5.60.1 to 5.62.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/642
* chore(deps): bump actions/checkout from 3 to 4 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/660
* chore(deps-dev): bump @typescript-eslint/parser from 5.36.2 to 5.62.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/643
* chore(deps): bump word-wrap from 1.2.3 to 1.2.4 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/647
* chore(deps-dev): bump eslint-plugin-jest from 27.2.2 to 27.4.2 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/667
* chore(deps-dev): bump @types/mustache from 4.2.1 to 4.2.4 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/671
* chore(deps): bump @babel/traverse from 7.8.6 to 7.23.2 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/670
* chore(deps-dev): bump @types/node from 20.4.0 to 20.9.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/686
* chore(deps-dev): bump eslint from 8.43.0 to 8.54.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/689
* chore(deps-dev): bump @types/mustache from 4.2.4 to 4.2.5 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/688
* chore(deps): bump actions/setup-node from 3 to 4 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/679
* chore(deps): bump @actions/core from 1.10.0 to 1.10.1 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/691
* chore(deps-dev): bump @types/node from 20.9.0 to 20.10.0 by @dependabot in https://github.com/JamesIves/github-sponsors-readme-action/pull/692

## New Contributors
* @0xTim made their first contribution in https://github.com/JamesIves/github-sponsors-readme-action/pull/538

**Full Changelog**: https://github.com/JamesIves/github-sponsors-readme-action/compare/v1.2.2...v1.3.0
