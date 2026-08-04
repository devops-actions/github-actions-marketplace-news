---
title: Vale Linter
date: 2026-08-04 07:07:06 +00:00
tags:
  - vale-cli
  - GitHub Actions
draft: false
repo: https://github.com/vale-cli/vale-action
marketplace: https://github.com/marketplace/actions/vale-linter
version: v3.0.0
dependentsNumber: "4,052"
actionType: Docker
actionSummary: |
  This GitHub Action automates the process of running Vale, a tool for static code analysis, in pull requests. It solves problems related to managing and executing Vale across various repositories by providing an official action that simplifies installation, management, and execution with ease. The key capabilities include:
  
  - Running Vale on Linux, macOS, and Windows
  - Handling different markup formats by installing external parsers
  - Offering suggested changes for resolved alerts
  - Using specific reporters like `github-pr-review` to post comments in pull requests
  - Caching style paths to speed up subsequent runs
---


Version updated for **https://github.com/vale-cli/vale-action** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **4,052** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vale-linter) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running Vale, a tool for static code analysis, in pull requests. It solves problems related to managing and executing Vale across various repositories by providing an official action that simplifies installation, management, and execution with ease. The key capabilities include:

- Running Vale on Linux, macOS, and Windows
- Handling different markup formats by installing external parsers
- Offering suggested changes for resolved alerts
- Using specific reporters like `github-pr-review` to post comments in pull requests
- Caching style paths to speed up subsequent runs

## What's Changed

## Breaking

Nothing was renamed or removed, but several behaviors changed. Each has a way back.

- **reviewdog 0.17.0 → 0.21.0.** Workflows triggered on `push` using a `github-pr-*` reporter previously reported nothing (`this is not PullRequest build`, exit 0). They now lint, and can fail. Pin `reviewdog_version: 0.17.0` to keep the old behavior.
- **The `level` input is honored.** It was read from `action.yml` and never used. Checks that concluded *neutral* can now conclude *failure*. Leave `level` unset for the previous behavior.
- **`fail_on_error: true` fails on errors only.** It previously failed on a finding of any severity for every reporter except the check ones, so a lone suggestion ended the run. Use `fail_level: any` to restore that.
- **GitHub's 10-annotation limit no longer fails the job** when `fail_on_error: false`. You get a warning naming how many alerts went unshown.
- **Pinning `@reviewdog`** tracks the branch, which is now v3. Pin `@v3`, or `@v2` to stay put.

## Added

- **Suggested fixes.** Alerts that Vale knows how to resolve are posted as suggested changes you can commit from the pull request — the same replacements the language server offers. Requires `reporter: github-pr-review`.
- **macOS, Windows, and ARM runners.** The action previously only ran on Linux x86-64.
- **New inputs:** `config`, `filter`, `glob`, `min_alert_level`, `fail_level`, `sync`, `reviewdog_version`. `workdir` is now declared and documented.
- **Caching.** Binaries go in the runner's tool cache, and `sync: false` lets you restore a cached `StylesPath` instead of re-downloading every package each run.
- **Downloads are verified** against each release's published checksums.

## Fixed

- Crash on large output — `write EPIPE` when reviewdog exited before reading it all (#122)
- An empty `files` list failing with `lstat : no such file or directory` (#141)
- Pull requests whose diff exceeds 20,000 lines (#153)
- The annotation limit failing runs regardless of `fail_on_error` (#89, #150)
- A warning failing the workflow under `fail_on_error: true` (#84)
- Nothing reported on `push` events (#103)
- The `level` input being ignored (#106)
- Wildcards in `files` — use the `glob` input; the warning now says so (#123)
- Scheduled runs on runners that write a thin event payload (#69)
- `vale_flags` splitting on whitespace, which broke `--filter='.Level == "error"'`
- Vale's own error is reported when it exits with a runtime error, instead of an exit code

## Internal

The action now ships as a single bundled `dist/index.js`; `node_modules` is no longer committed, taking the repository from 1,035 tracked files to 23. CI fails if the bundle is out of date with the source.

**Full Changelog**: https://github.com/vale-cli/vale-action/compare/2.1.2...v3.0.0
