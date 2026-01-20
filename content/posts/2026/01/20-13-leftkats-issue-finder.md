---
title: Multi-Repo Issue Finder
date: 2026-01-20 13:42:55 +00:00
tags:
  - leftkats
  - GitHub Actions
draft: false
repo: https://github.com/leftkats/issue-finder
marketplace: https://github.com/marketplace/actions/multi-repo-issue-finder
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/leftkats/issue-finder** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-repo-issue-finder) to find the latest changes.

## Action Summary

The **issue-finder** GitHub Action aggregates issues from multiple repositories based on specified labels and generates a centralized dashboard in the GitHub Actions Summary UI. It automates the process of tracking and organizing issues across repositories, making it ideal for project planning and managing contributions in open-source or collaborative projects. Key capabilities include multi-repository monitoring, multi-label filtering, and a user-friendly dashboard for efficient issue management.

## Release notes

# issue-finder
A high-performance GitHub Action designed to aggregate issues across multiple repositories based on a list of defined labels. This tool generates a centralized dashboard within the GitHub Actions Summary UI, facilitating efficient project planning and open-source contribution management.

## Features

* **Multi-Repository Support**: Monitor an unlimited number of public or private repositories.
* **Multi-Label Filtering**: Search for multiple labels (e.g., "good first issue", "help wanted") simultaneously.
* **Native YAML Integration**: Supports standard YAML list syntax for clean configuration.
* **UI Dashboard**: Outputs a formatted Markdown table directly to the GitHub Actions Step Summary.
* **GitHub CLI Powered**: Utilizes the native GitHub CLI for secure and efficient data retrieval.

## Implementation

### Basic Configuration

Create a file named `.github/workflows/issue-check.yml` in your repository.

```yaml
name: Contribution Dashboard
on:
  schedule:
    - cron: '0 15 * * *' # More info: https://crontab.guru/
  workflow_dispatch:

jobs:
  aggregate:
    runs-on: ubuntu-latest
    steps:
      - name: Fetch Issues using External Action
        uses: leftkats/issue-finder@main
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          repositories: |
            - feldroy/air
            - python/pymanager
          labels: |
            - good first issue

**Full Changelog**: https://github.com/leftkats/issue-finder/commits/v1
