---
title: Load JIRA Issues
date: 2025-12-22 21:12:33 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/load-jira-issues
marketplace: https://github.com/marketplace/actions/load-jira-issues
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/sandgardenhq/load-jira-issues** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/load-jira-issues) to find the latest changes.

## Action Summary

The "Load JIRA Issues" GitHub Action extracts JIRA issue references from Git commit history and provides structured outputs, such as issue keys and URLs, for use in downstream workflows. It automates the process of identifying and collecting relevant JIRA issues based on various changeset criteria, supporting both JIRA Cloud and Data Center deployments. Key capabilities include automatic project key detection, flexible changeset specification, and JSON artifact generation for advanced integrations.

## Release notes

# Load JIRA Issues v1.0 🎉

Extract JIRA issue references from your Git commits—bridge the gap between your code and your project tracker.

## What It Does

Scan your commit history for JIRA issue keys, fetch project info from the JIRA API, and output browse URLs for downstream actions. Works with both JIRA Cloud and Data Center.

## Why You Want This

- **Release Notes That Connect**: Pair with doc-holiday-action to generate docs that link back to the tickets you shipped
- **No More Ticket Hunting**: Stop digging through commits to figure out what's in a release
- **Flexible Commit Selection**: Last N commits, tag ranges, time windows, specific SHAs—pick your poison
- **One Config, Both Flavors**: Cloud or Data Center, same setup

## Quick Start

```yaml
- uses: actions/checkout@v4
  with:
    fetch-depth: 0

- uses: sandgardenhq/load-jira-issues@v1
  id: jira
  with:
    jira-base-url: https://company.atlassian.net
    jira-api-token: ${{ secrets.JIRA_API_TOKEN }}
    jira-user-email: ${{ secrets.JIRA_USER_EMAIL }}
    commits-count: 50

- run: echo "${{ steps.jira.outputs.issue-keys }}"
```

Done. Your commits are linked to your tickets.

✅ 8 changeset types (commits, tags, time ranges, releases)
✅ Outputs keys, URLs, and count
✅ JSON artifact for advanced workflows
✅ Auto-detects Cloud vs Data Center

Ship code that knows what it contains. Get back to building.

---

**Docs:** [README](https://github.com/sandgardenhq/load-jira-issues#readme)
**Issues:** [GitHub Issues](https://github.com/sandgardenhq/load-jira-issues/issues)

**Full Changelog**: https://github.com/sandgardenhq/load-jira-issues/commits/v1
