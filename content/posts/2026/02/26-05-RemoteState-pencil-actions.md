---
title: Pencil Actions
date: 2026-02-26 05:44:22 +00:00
tags:
  - RemoteState
  - GitHub Actions
draft: false
repo: https://github.com/RemoteState/pencil-actions
marketplace: https://github.com/marketplace/actions/pencil-actions
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/RemoteState/pencil-actions** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pencil-actions) to find the latest changes.

## Action Summary

Pencil Actions is a GitHub Action designed to automate design file reviews by generating visual previews of `.pen` files directly within pull requests. It detects changes to design files, compares updated frames with their previous versions, and provides before/after screenshots, facilitating streamlined design code reviews. This action solves the problem of manual design comparison in PRs, enhancing collaboration and accuracy in design development workflows.

## Release notes

Visual design diffs in GitHub PRs. Before/after screenshots for every `.pen` design change.

**Code review, but for designs.**

## Features

- 🔍 **Diff mode** — Only renders changed frames with before/after comparison
- 📸 **Full mode** — Renders every frame in changed files
- 💬 **PR comments** — Automatically posts/updates design previews
- 📦 **Artifacts** — Optionally uploads screenshots as workflow artifacts
- 🆓 **Free forever** — 1,000 screenshots/month, no API key needed

## Quick Start

```yaml
name: Design Review
on:
  pull_request:
    paths: ['**/*.pen']

permissions:
  contents: read
  pull-requests: write
  id-token: write

jobs:
  review:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: remotestate/pencil-actions@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Links

- [Product Page](https://www.remotestate.com/labs/pencil-actions)
- [Marketplace](https://github.com/marketplace/actions/pencil-actions)
- [Documentation](https://github.com/RemoteState/pencil-actions#readme)
- [Pencil](https://pencil.dev) — The design tool
