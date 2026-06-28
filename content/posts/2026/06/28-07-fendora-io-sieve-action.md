---
title: Sieve Security Scan
date: 2026-06-28 07:18:24 +00:00
tags:
  - fendora-io
  - GitHub Actions
draft: false
repo: https://github.com/fendora-io/sieve-action
marketplace: https://github.com/marketplace/actions/sieve-security-scan
version: v1.4.0
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/fendora-io/sieve-action** to version **v1.4.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sieve-security-scan) to find the latest changes.

## What's Changed

## What's new

- **Per-finding emoji reactions**: For each flagged finding, Sieve now posts a dedicated sub-comment in the PR thread:
  > 🔍 **\`missing-user-entrypoint\`** · \`Dockerfile:7\` · score 0.97
  > React 👍 if this is a **real vulnerability** · 👎 if it's a **false positive**
- Reactions are picked up server-side every 15 minutes — no new tab, no typing required.
- Slash command fallback (`/sieve real|fp`) still works for keyboard users.

## Usage

```yaml
on:
  pull_request:
    types: [opened, synchronize, reopened]
  issue_comment:
    types: [created]

permissions:
  contents: read
  pull-requests: write

jobs:
  sieve:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: fendora-io/sieve-action@v1.4.0
```
