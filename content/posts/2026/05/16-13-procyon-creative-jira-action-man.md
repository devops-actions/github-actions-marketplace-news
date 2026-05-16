---
title: Jira Action Man
date: 2026-05-16 13:57:55 +00:00
tags:
  - procyon-creative
  - GitHub Actions
draft: false
repo: https://github.com/procyon-creative/jira-action-man
marketplace: https://github.com/marketplace/actions/jira-action-man
version: v2.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/procyon-creative/jira-action-man** to version **v2.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jira-action-man) to find the latest changes.

## Action Summary

The **Jira Action Man** GitHub Action automates the extraction of Jira issue keys from GitHub events (e.g., branch names, PR titles, commit messages, and PR descriptions) and integrates this data with Jira by posting pull request details as comments on linked Jira tickets. It simplifies the process of linking GitHub activity to Jira issues, ensures deduplication of comments on reruns, and supports attaching images from PR bodies to Jira while enforcing security measures. This action streamlines collaboration between development and project management teams by maintaining a synchronized workflow across GitHub and Jira.

## What's Changed

## ⚠️ Breaking change

This release bumps the action runtime from **Node 20 → Node 24**. Consumers must run on a GitHub Actions runner that ships Node 24 (`ubuntu-latest`, `ubuntu-24.04`, `macos-latest`, `windows-latest`, etc.). Older self-hosted runners or images pinned to Ubuntu 20.04 won't have it.

Anyone pinning `@v1` continues to receive the existing v1.0.0 build and is unaffected. To upgrade:

```yaml
- uses: procyon-creative/jira-action-man@v2
```

## Security

- **Hardened SSRF protection for PR-body image downloads** ([#12](https://github.com/procyon-creative/jira-action-man/pull/12)) — resolve all A/AAAA records and reject if any is private; normalize IPv4-mapped IPv6; gate the private-IP regex on `net.isIP()` so hostnames like `10.example.com` are no longer false-positive; block redirects to private targets via `redirect: "manual"`; allowlist is now a filter, not a bypass, so literal private IPs are rejected even when allowlisted.

## Features

- Action runtime upgraded to **Node 24 LTS** ([#14](https://github.com/procyon-creative/jira-action-man/pull/14))
- **Major version tag auto-update workflow** ([#15](https://github.com/procyon-creative/jira-action-man/pull/15)) — `v2` will move automatically on each future `v2.x.y` release.
- **Dependabot** for npm and github-actions dependencies, weekly schedule, grouped by dev/prod ([#14](https://github.com/procyon-creative/jira-action-man/pull/14))
- **Commitlint** + Husky `commit-msg` hook enforcing conventional commits ([#13](https://github.com/procyon-creative/jira-action-man/pull/13))

## Internal

- Stop tracking `dist/*.d.ts`; only `dist/index.js` is committed ([#12](https://github.com/procyon-creative/jira-action-man/pull/12))
- `github_token` and `allowed_image_hosts` now read through `parseInputs()` for consistency ([#23](https://github.com/procyon-creative/jira-action-man/pull/23))
- Documentation refresh, README typo fix ([#23](https://github.com/procyon-creative/jira-action-man/pull/23))

## Closes

JAM-7, JAM-8, JAM-9, JAM-10, JAM-11
