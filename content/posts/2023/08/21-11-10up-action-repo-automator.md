---
title: Repo Automator
date: 2023-08-21 11:03:21 +00:00
tags:
  - 10up
  - GitHub Actions
draft: false
repo: 10up/action-repo-automator
marketplace: https://github.com/marketplace/actions/repo-automator
version: 2.0.0
dependentsNumber: 9
---


Version updated for **10up/action-repo-automator** to version **2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-automator) to find the latest changes.

## Release notes

**Note that this release renames action to "Repo Automator"**

### Added
- Support for automatically add a milestone. (props [@iamdharmesh](https://github.com/iamdharmesh), [@jeffpaul](https://github.com/jeffpaul), [@faisal-alvi](https://github.com/faisal-alvi) via [#47](https://github.com/10up/action-pr-automator/pull/47))
- Support for request PR review from multiple reviewers. (props [@iamdharmesh](https://github.com/iamdharmesh), [@faisal-alvi](https://github.com/faisal-alvi), [@jeffpaul](https://github.com/jeffpaul) via [#48](https://github.com/10up/action-pr-automator/pull/48))
- Support for auto-assigning issues to PR author. (props [@iamdharmesh](https://github.com/iamdharmesh), [@jeffpaul](https://github.com/jeffpaul), [@faisal-alvi](https://github.com/faisal-alvi) via [#49](https://github.com/10up/action-pr-automator/pull/49))
- Support for notify merge conflict (props [@iamdharmesh](https://github.com/iamdharmesh), [@dkotter](https://github.com/dkotter) via [#72](https://github.com/10up/action-pr-automator/pull/72))
- Support for welcome first-time contributors (props [@iamdharmesh](https://github.com/iamdharmesh), [@jeffpaul](https://github.com/jeffpaul), [@ravinderk](https://github.com/ravinderk) via [#82](https://github.com/10up/action-pr-automator/pull/82))
- Support auto-comment on new issues and pull requests (props [@iamdharmesh](https://github.com/iamdharmesh), [@jeffpaul](https://github.com/jeffpaul), [@ravinderk](https://github.com/ravinderk) via [#83](https://github.com/10up/action-pr-automator/pull/83))
- Support for auto-sync PR branch. (props [@iamdharmesh](https://github.com/iamdharmesh), [@ravinderk](https://github.com/ravinderk) via [#81](https://github.com/10up/action-pr-automator/pull/81))
- Support for passing pull request validation regex from workflow file. (props [@senhordaluz](https://github.com/senhordaluz), [@iamdharmesh](https://github.com/iamdharmesh), [@Sidsector9](https://github.com/Sidsector9) via [#84](https://github.com/10up/action-pr-automator/pull/84))

### Changed
- Renamed `reviewer` configuration field to `reviewers`. (props [@iamdharmesh](https://github.com/iamdharmesh), [@faisal-alvi](https://github.com/faisal-alvi), [@jeffpaul](https://github.com/jeffpaul) via [#48](https://github.com/10up/action-pr-automator/pull/48))
- Rename action to "Repo Automator" (props [@iamdharmesh](https://github.com/iamdharmesh), [@jeffpaul](https://github.com/jeffpaul) via [#87](https://github.com/10up/action-repo-automator/pull/87))

### Security
- Bump `@octokit/action` from 4.0.9 to 6.0.5 (props [@dependabot[bot]](https://github.com/apps/dependabot), [@jeffpaul](https://github.com/jeffpaul), [@iamdharmesh](https://github.com/iamdharmesh) via [#30](https://github.com/10up/action-pr-automator/pull/30), [#40](https://github.com/10up/action-pr-automator/pull/40), [#60](https://github.com/10up/action-pr-automator/pull/60), [#62](https://github.com/10up/action-pr-automator/pull/62), [#64](https://github.com/10up/action-pr-automator/pull/64), [#66](https://github.com/10up/action-pr-automator/pull/66), [#69](https://github.com/10up/action-pr-automator/pull/69), [#78](https://github.com/10up/action-pr-automator/pull/78))
- Bump `@vercel/ncc` from 0.34.0 to 0.36.1 (props [@dependabot[bot]](https://github.com/apps/dependabot), [@jeffpaul](https://github.com/jeffpaul), [@iamdharmesh](https://github.com/iamdharmesh) via [#35](https://github.com/10up/action-pr-automator/pull/35), [#41](https://github.com/10up/action-pr-automator/pull/41))
- Bump `actions/setup-node` from 3.5.1 to 3.8.0 (props [@dependabot[bot]](https://github.com/apps/dependabot), [@jeffpaul](https://github.com/jeffpaul), [@iamdharmesh](https://github.com/iamdharmesh) via [#38](https://github.com/10up/action-pr-automator/pull/38), [#71](https://github.com/10up/action-pr-automator/pull/71), [#89](https://github.com/10up/action-pr-automator/pull/89))
- Bump `eslint` from 8.25.0 to 8.47.0 (props [@dependabot[bot]](https://github.com/apps/dependabot), [@jeffpaul](https://github.com/jeffpaul), [@iamdharmesh](https://github.com/iamdharmesh) via [#31](https://github.com/10up/action-pr-automator/pull/31), [#32](https://github.com/10up/action-pr-automator/pull/32), [#33](https://github.com/10up/action-pr-automator/pull/33), [#34](https://github.com/10up/action-pr-automator/pull/34), [#36](https://github.com/10up/action-pr-automator/pull/36), [#37](https://github.com/10up/action-pr-automator/pull/37), [#39](https://github.com/10up/action-pr-automator/pull/39), [#42](https://github.com/10up/action-pr-automator/pull/42), [#50](https://github.com/10up/action-pr-automator/pull/50), [#53](https://github.com/10up/action-pr-automator/pull/53), [#54](https://github.com/10up/action-pr-automator/pull/54), [#55](https://github.com/10up/action-pr-automator/pull/55), [#56](https://github.com/10up/action-pr-automator/pull/56), [#57](https://github.com/10up/action-pr-automator/pull/57), [#58](https://github.com/10up/action-pr-automator/pull/58), [#61](https://github.com/10up/action-pr-automator/pull/61), [#65](https://github.com/10up/action-pr-automator/pull/65), [#67](https://github.com/10up/action-pr-automator/pull/67), [#70](https://github.com/10up/action-pr-automator/pull/70), [#75](https://github.com/10up/action-pr-automator/pull/75), [#86](https://github.com/10up/action-pr-automator/pull/86), [#88](https://github.com/10up/action-pr-automator/pull/88))

---
**Full Changelog**: https://github.com/10up/action-repo-automator/compare/1.0.1...2.0.0
[View closed items in the milestone](https://github.com/10up/action-repo-automator/milestone/3?closed=1).
