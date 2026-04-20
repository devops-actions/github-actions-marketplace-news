---
title: Code Per Day SVG
date: 2026-04-20 06:26:15 +00:00
tags:
  - mpge
  - GitHub Actions
draft: false
repo: https://github.com/mpge/code-per-day
marketplace: https://github.com/marketplace/actions/code-per-day-svg
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mpge/code-per-day** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-per-day-svg) to find the latest changes.

## Action Summary

The **Code Per Day** GitHub Action automates the creation of visually appealing SVG charts that showcase daily code additions and deletions across all repositories a user has contributed to. It uses the GitHub GraphQL API to gather commit data (without exposing sensitive details) and is designed for embedding these charts in profile READMEs, providing a clear, aesthetic summary of coding activity. This action simplifies tracking and sharing coding contributions while supporting customization of chart styles and themes.

## What's Changed

## Fix

**Private repos are now included in the chart.** GitHub's `contributionsCollection.commitContributionsByRepository` field silently drops private contributions it classifies as restricted, even when the token has `repo` scope. When running against the token owner (no `username` override), the action now backfills by enumerating every repo the token can read directly via `viewer.repositories` and merges the two lists.

Measured impact on a real profile: **47 → 65 repos, 1,333 → 1,511 commits**.

## Also

- README gains a **Limitations** section covering profile privacy, SAML SSO authorization, fine-grained PAT caveats, org-enforced member privacy, and unlinked-email commits.
- Per-repo log line no longer prints `null commits` for repos discovered via direct enumeration.

## Upgrading

If you pin by `v1`, it's already been updated — just re-run your workflow. If you pin a specific SHA, update to this release.
