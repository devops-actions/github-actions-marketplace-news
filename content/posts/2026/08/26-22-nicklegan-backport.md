---
title: github-backport
date: 2026-08-26 22:51:58 +00:00
tags:
  - nicklegan
  - GitHub Actions
draft: false
repo: https://github.com/nicklegan/backport
marketplace: https://github.com/marketplace/actions/github-backport
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action "backport" automates the process of cherry-picking pull requests onto long-running backport branches and ensures that both the original pull request and its backports are merge-ready. It helps maintain stability by ensuring that all changes in the original PR are also included in the backported branches.
---


Version updated for **https://github.com/nicklegan/backport** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-backport) to find the latest changes.

## Action Summary

The GitHub Action "backport" automates the process of cherry-picking pull requests onto long-running backport branches and ensures that both the original pull request and its backports are merge-ready. It helps maintain stability by ensuring that all changes in the original PR are also included in the backported branches.

## What's Changed

# backport v1.0.0

The first release of **backport** — a GitHub Action that cherry-picks a pull request onto long-running backport branches and gates the original pull request and its backports with a bidirectional, all-or-nothing merge-readiness check.

## Highlights

- **Automatic backport PRs** — on open (or via `backport:<branch>` labels), the PR's own commits are cherry-picked onto each selected branch and the backport PR is opened right away.
- **Bidirectional, all-or-nothing gate** — `backports-ready` on the original and `original-ready` on each backport form a mutual barrier: nothing in the set merges until every pull request is independently mergeable. Readiness is reconstructed from non-circular signals, so the mutual dependency never deadlocks.
- **Label-driven & idempotent** — `backport:<branch>` labels are the single source of truth: add to create, remove to close (branch kept), re-add to reopen. Everything is reconstructed each run, so it is fully stateless.
- **GitHub App authentication** — opens backport PRs with an App installation token so their CI actually runs (which the gate depends on).
- **Merge-method-aware cherry-picks** — `auto`, `individual`, or `squash`.
- **Signed commits** — optional GPG or SSH signing for branches that require it.
- **Metadata sync** — optionally keep the original PR's labels, milestone, assignees, and reviewers copied onto its backports.
- **Auto-merge** — optionally merge each backport once the original is merged and its own checks pass.
- **Tunable readiness** — `respect-required-only` and `require-conversation-resolution` control what the gate treats as blocking.

## Getting started

```yaml
- uses: nicklegan/backport@v1
  with:
    app-id: ${{ secrets.APP_ID }}
    private-key: ${{ secrets.APP_PRIVATE_KEY }}
    backport-branches: |
      release/v1.x
      release/v2.x
```

See the [README](https://github.com/nicklegan/backport#readme) and the [end-to-end setup guide](https://github.com/nicklegan/backport/blob/v1.0.0/docs/end-to-end-setup.md) for creating the GitHub App, configuring branch protection, and adding the pull request template.

