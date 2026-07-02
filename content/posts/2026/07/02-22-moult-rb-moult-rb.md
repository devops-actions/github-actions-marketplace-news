---
title: moult-action
date: 2026-07-02 22:20:56 +00:00
tags:
  - moult-rb
  - GitHub Actions
draft: false
repo: https://github.com/moult-rb/moult-rb
marketplace: https://github.com/marketplace/actions/moult-action
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/moult-rb/moult-rb** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/moult-action) to find the latest changes.

## What's Changed

First gem release since 0.1.0 (v0.2.0 was tagged but its publish failed; its changes are included here). Published to RubyGems as `moult`.

## moult-action

- The bare `uses: moult-rb/moult-rb@v1` workflow now works out of the box: the action installs moult from its own checkout (no Gemfile needed in your repo) and `moult-cloud-url` defaults to https://moultrb.com.
- Actionable first-run errors: a missing `permissions: id-token: write` now says exactly that instead of a Ruby backtrace; non-2xx responses from GitHub's token endpoint are reported with status and body.
- Pull requests from forks are gated in CI but skip the upload with a notice — GitHub issues no OIDC identity to fork PRs.
- `base-sha` defaults to the PR base branch (or the merge queue's base SHA), falling back to the repository default branch — repos whose base branch isn't `main` no longer fail their first PR scan.
- `merge_group` events are supported as `pr` scans; `pull_request_target` is rejected in auto mode (it checks out the base branch, which would silently gate an empty diff as a pass).

## Gem

- `Moult::CloudUpload.projection` — the sanitised upload payload builder (allow-listed keys, absolute paths stripped).
- License changed from MIT to Apache-2.0.

Full details in [CHANGELOG.md](https://github.com/moult-rb/moult-rb/blob/main/CHANGELOG.md).
