---
title: Multi Git Mirror
date: 2026-08-07 07:24:03 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/multi-git-mirror
marketplace: https://github.com/marketplace/actions/multi-git-mirror
version: v1.2.0
dependentsNumber: "36"
actionType: Docker
actionSummary: |
  This Go-based GitHub Action automates the process of mirroring Git repositories to multiple Git hosting providers, including GitLab, GitHub, Bitbucket, AWS CodeCommit, and others. It supports selective branch mirroring, tag mirroring, force push, and parallel mirroring for efficient repository management across different platforms. The action also includes a dry run option to check connectivity before performing the mirroring process and outputs results in JSON format for downstream integration.
---


Version updated for **https://github.com/somaz94/multi-git-mirror** to version **v1.2.0**.

- This action is used across all versions by **36** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-git-mirror) to find the latest changes.

## Action Summary

This Go-based GitHub Action automates the process of mirroring Git repositories to multiple Git hosting providers, including GitLab, GitHub, Bitbucket, AWS CodeCommit, and others. It supports selective branch mirroring, tag mirroring, force push, and parallel mirroring for efficient repository management across different platforms. The action also includes a dry run option to check connectivity before performing the mirroring process and outputs results in JSON format for downstream integration.

## What's Changed


### CI/CD
- add concurrency guards to recurring workflows by @somaz94
- add DCO check via shared reusable workflow by @somaz94
- add PR welcome workflow stub by @somaz94
- add ok-to-test workflow stub by @somaz94
- use reusable contributors workflow by @somaz94
- use reusable dependabot-auto-merge workflow by @somaz94
- use reusable issue-greeting workflow by @somaz94
- use reusable stale-issues workflow by @somaz94
- adopt semantic-pr, labels, lock-threads, PR size, and auto-assign reusables by @somaz94
- remove DCO workflow by @somaz94
- add a golangci-lint config scoped to defect-finding linters by @somaz94

### Chore
- add git config protection to CLAUDE.md by @somaz94
- remove duplicate rules from CLAUDE.md (moved to global) by @somaz94
- bump softprops/action-gh-release from 2 to 3 by @dependabot[bot]
- bump dependabot/fetch-metadata from 2 to 3 by @dependabot[bot]
- bump actions/github-script from 8 to 9 by @dependabot[bot]
- bump alpine from 3.23 to 3.24 in the docker-minor group (#5) by @dependabot[bot] in #5
- bump actions/checkout from 6 to 7 (#6) by @dependabot[bot] in #6
- bump actions/setup-go from 6 to 7 by @dependabot[bot]

### Documentation
- remove duplicate rules covered by global CLAUDE.md by @somaz94

### Performance
- ship a prebuilt multi-arch image instead of building per run by @somaz94

**Full Changelog**: https://github.com/somaz94/multi-git-mirror/compare/v1.1.1...v1.2.0

