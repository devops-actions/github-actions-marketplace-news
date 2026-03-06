---
title: vcopy — Verified GitHub Repository Copy
date: 2026-03-06 20:58:37 +00:00
tags:
  - jpmicrosoft
  - GitHub Actions
draft: false
repo: https://github.com/jpmicrosoft/vcopy
marketplace: https://github.com/marketplace/actions/vcopy-verified-github-repository-copy
version: v1.4.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jpmicrosoft/vcopy** to version **v1.4.4**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcopy-verified-github-repository-copy) to find the latest changes.

## Action Summary

The **vcopy** GitHub Action enables seamless copying of repositories between organizations on GitHub, including GitHub Cloud and Enterprise, while ensuring data integrity through a five-layer cryptographic verification process. It automates the mirroring of branches, tags, commits, releases, and optionally metadata like issues, pull requests, and wikis, providing a reliable solution for repository migration, backup, or duplication tasks. Key features include batch processing, metadata and configuration filtering, GPG-signed verification reports, support for Git LFS, and robust handling of network or API failures.

## Release notes

### Cyclomatic Complexity Reduction

Refactored 13 high-complexity functions across 8 files to bring all functions to ≤15 cyclomatic complexity (Go Report Card threshold).

**Pure refactoring — no behavior changes.**

#### Functions refactored:
- \cmd/vcopy/main.go\: run() (61→10), batchRun() (46→12), applyConfig() (40→3), copyOneRepo() (21→13)
- \internal/copy/releases.go\: syncReleases() (28→10), copyOneRelease() (18→7)
- \internal/github/client.go\: DownloadReleaseAsset() (23→≤15), RoundTrip() (19→13)
- \internal/verify/objects.go\: VerifyObjects() (21→15), validateSince() (21→≤15)
- \internal/verify/refs.go\: VerifyRefs() (19→≤15)
- \internal/verify/bundle.go\: VerifyBundle() (16→≤15)
- \internal/copy/issues.go\: CopyIssues() (18→≤15)
- \internal/copy/repo.go\: MirrorRepo() (16→14)

## What's Changed
* refactor: reduce cyclomatic complexity to ≤15 for all functions by @jpmicrosoft in https://github.com/jpmicrosoft/vcopy/pull/20


**Full Changelog**: https://github.com/jpmicrosoft/vcopy/compare/v1...v1.4.4
