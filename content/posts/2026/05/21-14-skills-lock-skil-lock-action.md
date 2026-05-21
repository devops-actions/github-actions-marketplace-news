---
title: SkilLock CI
date: 2026-05-21 14:51:33 +00:00
tags:
  - skills-lock
  - GitHub Actions
draft: false
repo: https://github.com/skills-lock/skil-lock-action
marketplace: https://github.com/marketplace/actions/skillock-ci
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skills-lock/skil-lock-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillock-ci) to find the latest changes.

## Action Summary

The **skil-lock-action** GitHub Action automates the validation of AI Skill behaviors in pull requests by running the `skil-lock` tool to detect unauthorized changes in shell commands, network URLs, and file operations. It ensures compliance with predefined policies by flagging or blocking unapproved capability changes, and can optionally post detailed diffs as PR comments or integrate findings with GitHub Code Scanning using SARIF. This action enhances security and governance in AI workflows by enforcing strict behavior controls and providing actionable insights directly within CI processes.

## What's Changed

**Adds**: optional `sarif: true` input. When enabled, runs `skil-lock ci --format sarif` and uploads the report to GitHub Code Scanning so capability deltas appear inline in the PR diff and in the repo's Security tab.

Requires the calling workflow to grant `security-events: write` permission.

Pairs with `skills-lock/skil-lock@v0.1.1`.

```yaml
- uses: skills-lock/skil-lock-action@v0.1.1
  with:
    pin-binary: v0.1.1
    sarif: true
```

See README for full inputs and the [SkilLock CI Marketplace listing](https://github.com/marketplace/actions/skillock-ci).
