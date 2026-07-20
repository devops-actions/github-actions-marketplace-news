---
title: Pipr Review
date: 2026-07-20 23:16:09 +00:00
tags:
  - somus
  - GitHub Actions
draft: false
repo: https://github.com/somus/pipr
marketplace: https://github.com/marketplace/actions/pipr-review
version: v0.5.0
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  Pipr is a code review tool that uses AI to analyze and generate structured comments in repositories. It automates the process of reviewing pull requests, issues, and comments, providing insights into potential security vulnerabilities, dependencies risks, and other issues. By keeping the review logic in the repository, Pipr ensures consistency and traceability of reviews across different code hosts. The tool supports integration with GitHub, GitLab, Azure DevOps Services, and Bitbucket Cloud, using provider adapters to maintain a neutral configuration format.
---


Version updated for **https://github.com/somus/pipr** to version **v0.5.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipr-review) to find the latest changes.

## Action Summary

Pipr is a code review tool that uses AI to analyze and generate structured comments in repositories. It automates the process of reviewing pull requests, issues, and comments, providing insights into potential security vulnerabilities, dependencies risks, and other issues. By keeping the review logic in the repository, Pipr ensures consistency and traceability of reviews across different code hosts. The tool supports integration with GitHub, GitLab, Azure DevOps Services, and Bitbucket Cloud, using provider adapters to maintain a neutral configuration format.

## What's Changed

## [0.5.0](https://github.com/somus/pipr/compare/v0.4.3...v0.5.0) (2026-07-20)


### Features

* **cli:** version local review JSON output ([#101](https://github.com/somus/pipr/issues/101)) ([312b31e](https://github.com/somus/pipr/commit/312b31e54f325befa3b67da7a1e4941d8c101508))
* **config:** add explicit memory curation ([#102](https://github.com/somus/pipr/issues/102)) ([30f8b01](https://github.com/somus/pipr/commit/30f8b01cbb8d5f7457eb11f8fdbf5d2aeacbb895))
* **runtime:** add run results and webhook history ([#106](https://github.com/somus/pipr/issues/106)) ([1aaed2b](https://github.com/somus/pipr/commit/1aaed2ba238df9bdf4fc133b204ac260eaa2a8ed))
* **sdk:** expose review run context ([#107](https://github.com/somus/pipr/issues/107)) ([9bc33ed](https://github.com/somus/pipr/commit/9bc33ed6b338575a242f073995bcf9d12b9836de))
* stabilize review outputs and release packages ([#104](https://github.com/somus/pipr/issues/104)) ([a25b6bc](https://github.com/somus/pipr/commit/a25b6bc0e85199d6381b43a31eb8c1943a50e7f9))


### Bug Fixes

* **runtime:** bound diff manifest construction ([#99](https://github.com/somus/pipr/issues/99)) ([9bb367a](https://github.com/somus/pipr/commit/9bb367a5d2cd9392e5e5e7fc858eb2ade9e20edd))
* **sdk:** harden public runtime boundaries ([#103](https://github.com/somus/pipr/issues/103)) ([d1f45c6](https://github.com/somus/pipr/commit/d1f45c638f24f8fe3e69934b7c10d916cc2ab83d))


### Miscellaneous Chores

* release 0.5.0 ([4656539](https://github.com/somus/pipr/commit/4656539e7260294675f2a3ad9688403519f6c07a))
