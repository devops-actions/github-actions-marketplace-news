---
title: art50-ci AI transparency checks
date: 2026-07-26 06:42:25 +00:00
tags:
  - Rubiss
  - GitHub Actions
draft: false
repo: https://github.com/Rubiss/art50-ci
marketplace: https://github.com/marketplace/actions/art50-ci-ai-transparency-checks
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `art50-ci` is a local-first CLI that automates the regression tests for AI transparency in products. It checks disclosures and C2PA provenance by opening real pages, observing initial page states, detecting overlay obstruction, basic accessible-name failures, and ensuring a source C2PA manifest label appears. The tool generates inspectable JSON, HTML, screenshots, timestamps, and hashes without making legal decisions or claiming authenticity.
---


Version updated for **https://github.com/Rubiss/art50-ci** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/art50-ci-ai-transparency-checks) to find the latest changes.

## Action Summary

`art50-ci` is a local-first CLI that automates the regression tests for AI transparency in products. It checks disclosures and C2PA provenance by opening real pages, observing initial page states, detecting overlay obstruction, basic accessible-name failures, and ensuring a source C2PA manifest label appears. The tool generates inspectable JSON, HTML, screenshots, timestamps, and hashes without making legal decisions or claiming authenticity.

## What's Changed

## Zero-setup GitHub Action

Practical guides:

- [Regression-test a declared Article 50 AI disclosure in CI](https://art50-ci.rubiss89.chatgpt.site/guides/article-50-ai-disclosure-ci)
- [Test whether C2PA Content Credentials survive CDN delivery](https://art50-ci.rubiss89.chatgpt.site/guides/test-c2pa-content-credentials-cdn-github-actions)

Use art50-ci in a GitHub-hosted Linux job without adding it to the caller's package manifest:

```yaml
- uses: actions/checkout@v6
- uses: Rubiss/art50-ci@v0.3.0
  with:
    config: .art50-ci.yml
```

The composite action installs its runtime under `GITHUB_ACTION_PATH` and installs Chromium by default. For a completed audit, it uploads the validated JSON/HTML/screenshot/provenance report directory before propagating exit code 0 or 1. Configuration or execution errors return 2; an error before report creation may produce no artifact.

Inspect the [public released-version C2PA pass and stripped-delivery proof](https://github.com/Rubiss/art50-ci/actions/runs/30101115839).

### Release safeguards

- JavaScript dependencies are installed from the tagged lockfile with lifecycle scripts disabled.
- The platform-specific C2PA native archive is verified against a release-pinned SHA-256 digest before extraction.
- Nested setup and artifact actions are pinned to full commit SHAs.
- The report output must be a new or empty repository-relative directory; escaping symlinks and generated symlinks are rejected.
- CI proves pass and intentional-failure behavior in an isolated non-Node consumer workspace, including evidence retention before exit 1.

Report and provenance schemas remain version 2. Configuration remains version 1; no configuration migration is required. The action currently supports GitHub-hosted Linux runners.

### Local install

```bash
npm install --save-dev art50-ci@0.3.0
npx playwright install chromium
```

The [npm package](https://www.npmjs.com/package/art50-ci/v/0.3.0), GitHub release tarball, and tagged Action are all available. For a release-asset install instead:

```bash
npm install --save-dev https://github.com/Rubiss/art50-ci/releases/download/v0.3.0/art50-ci-0.3.0.tgz
```

Release-asset SHA-256: `3d6fbe0c392becc3512d44183b06877e2ad19d4d274ddeb0bce3d4d3a468fda1`
