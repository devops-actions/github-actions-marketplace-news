---
title: fixbuddy two-agent issue fixer
date: 2026-06-13 22:19:49 +00:00
tags:
  - Codevena
  - GitHub Actions
draft: false
repo: https://github.com/Codevena/fixbuddy
marketplace: https://github.com/marketplace/actions/fixbuddy-two-agent-issue-fixer
version: v0.7.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Codevena/fixbuddy** to version **v0.7.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fixbuddy-two-agent-issue-fixer) to find the latest changes.

## What's Changed

Patch release: the v0.7.0 `--notify-cmd` hook is now available as a GitHub Action input.

## Added
- **Action input `notify-cmd`** — one command **per line** (newline-separated, not comma-separated: shell commands may legitimately contain commas). Each non-empty line becomes a repeated `--notify-cmd` flag. Not fired in dry-run.

```yaml
- uses: Codevena/fixbuddy@v1
  with:
    severity: high
    notify-cmd: |
      curl -s -d @- ntfy.sh/my-fixbuddy-topic
```

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/Codevena/fixbuddy/v0.7.1/install.sh | bash
```

**Full changelog:** https://github.com/Codevena/fixbuddy/compare/v0.7.0...v0.7.1
