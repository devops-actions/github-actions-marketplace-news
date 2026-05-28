---
title: GitHub README.md Metrics
date: 2026-05-28 22:56:24 +00:00
tags:
  - thanhhaudev
  - GitHub Actions
draft: false
repo: https://github.com/thanhhaudev/github-stats
marketplace: https://github.com/marketplace/actions/github-readme-md-metrics
version: v1.5.9
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/thanhhaudev/github-stats** to version **v1.5.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-md-metrics) to find the latest changes.

## Action Summary

This GitHub Action automates the generation and updating of user activity metrics, such as coding streaks, commit patterns, and programming language usage, directly into a GitHub profile README. It simplifies the process of showcasing developer statistics by integrating data from GitHub and optional WakaTime analytics, enabling users to display dynamic and personalized coding insights on their profile. Key capabilities include customizable metrics and automated updates via scheduled workflows.

## What's Changed


### Fixed
- Push regression from the hardened-auth change in this release. `actions/checkout` (default `persist-credentials: true`) leaves an `http.https://github.com/.extraheader` entry in the workspace `.git/config`. Git treats `extraheader` as multi-valued, so the new entry injected via `GIT_CONFIG_VALUE_0` was sent **in addition to** the existing one. GitHub then rejected the push with HTTP 400 `Duplicate header: "Authorization"` before validating either token — even when both tokens were identical. `pushReadme` now runs `git config --local --unset-all http.https://github.com/.extraheader` before injecting its own, tolerating exit 5 when no prior entry exists.
- `HIDE_REPO_INFO=true` no longer collapses every git failure to a bare `exit status N`. The suppressed branch of `runGitCommandEnv` was capturing stdout/stderr into buffers and then discarding them. Sanitized stdout/stderr (still scrubbed of token, owner, URLs, and github-token patterns) are now included in the returned error so push failures are debuggable.

### Security
- Stop persisting `GITHUB_TOKEN` in `.git/config`. The `origin` URL is now set without credentials; auth is supplied per-push via `http.extraheader` injected through `GIT_CONFIG_COUNT/KEY_0/VALUE_0` env vars (same pattern as `actions/checkout`).
- Pin `Dockerfile` runtime base to `alpine:3.21` instead of the mutable `alpine:latest`.
- Pass `BRANCH_NAME` after a `--` separator to `git push` so a value starting with `-` cannot be reinterpreted as a flag.
- Strip backticks from WakaTime project/editor/language names before rendering inside the surrounding `text` code fence to prevent markdown-fence injection from upstream API data.


