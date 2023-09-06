---
title: WordPress Plugin Readme/Assets Update
date: 2023-09-06 03:05:12 +00:00
tags:
  - 10up
  - GitHub Actions
draft: false
repo: 10up/action-wordpress-plugin-asset-update
marketplace: https://github.com/marketplace/actions/wordpress-plugin-readme-assets-update
version: 2.1.2
dependentsNumber: 928
---


Version updated for **10up/action-wordpress-plugin-asset-update** to version **2.1.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **928** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wordpress-plugin-readme-assets-update) to find the latest changes.

## Release notes

### Added
- Include an example git workflow section in the README (props [@tedmasterweb](https://github.com/tedmasterweb), [@Preciousomonze](https://github.com/Preciousomonze), [@jeffpaul](https://github.com/jeffpaul), [@dkotter](https://github.com/dkotter) via [#23](https://github.com/10up/action-wordpress-plugin-asset-update/pull/23)).
- Ability to skip updating assets by setting `SKIP_ASSETS` to `true` (props [@azizultex](https://github.com/azizultex), [@cadic](https://github.com/cadic), [@Sidsector9](https://github.com/Sidsector9) via [#48](https://github.com/10up/action-wordpress-plugin-asset-update/pull/48)).

### Changed
- Replaced the deprecated `set-output` command with redirection to `$GITHUB_OUTPUT` (props [@Preciousomonze](https://github.com/Preciousomonze), [@peterwilsoncc](https://github.com/peterwilsoncc), [@jeffpaul](https://github.com/jeffpaul) via [#52](https://github.com/10up/action-wordpress-plugin-asset-update/pull/52)).

### Fixed
- Run an `svn update` to resolve error: `SVN commit failed: Directory out of date` (props [@zaerl](https://github.com/zaerl), [@cadic](https://github.com/cadic) via [#46](https://github.com/10up/action-wordpress-plugin-asset-update/pull/46)).

### New Contributors
* @dkotter made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/23
* @cadic made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/46
* @zaerl made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/46
* @azizultex made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/48
* @Sidsector9 made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/48
* @peterwilsoncc made their first contribution in https://github.com/10up/action-wordpress-plugin-asset-update/pull/52

---
Full Changelog: https://github.com/10up/action-wordpress-plugin-asset-update/compare/2.1.1...2.1.2
[View closed items in the milestone](https://github.com/10up/action-wordpress-plugin-asset-update/milestone/8?closed=1).
