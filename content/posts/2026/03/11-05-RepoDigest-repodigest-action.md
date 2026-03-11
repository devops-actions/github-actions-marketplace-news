---
title: RepoDigest
date: 2026-03-11 05:53:49 +00:00
tags:
  - RepoDigest
  - GitHub Actions
draft: false
repo: https://github.com/RepoDigest/repodigest-action
marketplace: https://github.com/marketplace/actions/repodigest
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/RepoDigest/repodigest-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repodigest) to find the latest changes.

## Action Summary

RepoDigest Action automates the creation and distribution of weekly engineering reports by summarizing GitHub repository activity, such as commits, pull requests, and issues, into a concise, AI-generated email. This eliminates the need for manual report preparation and provides stakeholders with clear insights into recent development progress. Its key capabilities include fetching activity data, generating plain-English summaries, and emailing reports directly to specified recipients.

## Release notes

## RepoDigest Action v1.0.0

Generate and email a weekly engineering report from your GitHub activity — automatically.

### What it does

Every time it runs, RepoDigest:

1. Fetches commits, merged pull requests, and closed issues from your repository
2. Uses AI to write a plain-English summary your stakeholders will actually read
3. Emails the report to everyone on your list

No dashboards. No logins. Just a clean weekly email.

---

### Quick start

Add this to `.github/workflows/weekly-report.yml`:

```yaml
name: Weekly Engineering Report

on:
  schedule:
    - cron: "0 9 * * 1"  # Every Monday at 9am UTC
  workflow_dispatch:

jobs:
  report:
    runs-on: ubuntu-latest
    permissions:
      contents: read
    steps:
      - uses: RepoDigest/repodigest-action@v1
        with:
          api_key: ${{ secrets.REPODIGEST_API_KEY }}
          recipients: "ceo@company.com, investor@fund.com"
