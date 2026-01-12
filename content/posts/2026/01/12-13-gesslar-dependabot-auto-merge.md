---
title: Dependabot Auto Comment Merge
date: 2026-01-12 13:37:18 +00:00
tags:
  - gesslar
  - GitHub Actions
draft: false
repo: https://github.com/gesslar/dependabot-auto-merge
marketplace: https://github.com/marketplace/actions/dependabot-auto-comment-merge
version: v1.6.0
dependentsNumber: "1"
---


Version updated for **https://github.com/gesslar/dependabot-auto-merge** to version **v1.6.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependabot-auto-comment-merge) to find the latest changes.

## Action Summary

The "Dependabot Auto Merge" GitHub Action automates the process of enabling auto-merge on open Dependabot pull requests across repositories. It streamlines dependency updates by reducing manual intervention, ensuring that approved changes are merged efficiently based on a specified merge strategy (e.g., merge, rebase, or squash). This tool is particularly useful for maintaining up-to-date dependencies with minimal effort in multi-repository environments.

## Release notes

# Dependabot Auto Merge

A GitHub Action that automatically enables auto-merge on open Dependabot PRs using the GitHub CLI.

## Usage

```yaml
name: Auto-merge Dependabot PRs

on:
  schedule:
    - cron: '0 */6 * * *'  # Every 6 hours
  workflow_dispatch:       # Manual trigger

jobs:
  auto-merge:
    runs-on: ubuntu-latest
    steps:
      - name: Auto-merge Dependabot PRs
        uses: gesslar/dependabot-auto-comment-merge@main
        with:
          # GitHub token with permissions to merge PRs
          # For organization-wide access, use a personal access token
          token: ${{ secrets.GITHUB_TOKEN }}

          # Owner of the repositories (username or organization)
          # Default: current repository owner
          repo-owner: ${{ github.repository_owner }}

          # Comma-separated list of repositories to check for Dependabot PRs
          # If not set, all repositories of the owner will be processed
          # Example: "repo1,repo2,repo3"
          repositories: ${{ vars.DEPENDABOT_AUTO_COMMENT_REPOS }}

          # Comma-separated list of repositories to ignore
          # Useful when processing all repos but wanting to exclude specific ones
          # Example: "ignore-repo1,ignore-repo2"
          ignore-repositories: ${{ vars.DEPENDABOT_AUTO_COMMENT_IGNORE_REPOS }}

          # Dry run mode - if true, will only log actions without posting comments
          # Default: false
          dry-run: ${{ vars.DEPENDABOT_DRY_RUN }}

          # Merge type - controls which merge strategy is used: merge, rebase, or squash
          # Default: merge
          merge-type: merge
```

## Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| `token` | GitHub token with permissions to merge PRs (for example, `contents: write` and `pull-requests: write`). For accessing repositories across an organization, use a personal access token with appropriate permissions. | Yes | N/A |
| `repo-owner` | Repository owner (can be a username or organization name). Used to determine which repositories to scan for Dependabot PRs. | No | `${{ github.repository_owner }}` |
| `repositories` | Comma-separated list of repositories to check for Dependabot PRs. If not provided, all repositories of the owner will be checked. | No | All repos of owner |
| `ignore-repositories` | Comma-separated list of repositories to ignore. Useful when checking all repos but wanting to exclude a few. | No | None |
| `dry-run` | If set to "true", the action will log what it would do without actually merging. Useful for testing. | No | `false` |
| `merge-type` | Specifies the merge strategy to use when enabling auto-merge for Dependabot PRs. Valid values are: `merge`, `rebase`, or `squash`. | No | `merge` |

## License

Unlicensed. Feel free to use this code in any way you like.

