---
title: Doc Holiday Action
date: 2026-04-02 06:33:03 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/doc-holiday-action
marketplace: https://github.com/marketplace/actions/doc-holiday-action
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sandgardenhq/doc-holiday-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/doc-holiday-action) to find the latest changes.

## Action Summary

The **Doc Holiday GitHub Action** automates the generation of release notes and documentation by leveraging natural language requests sent to the doc.holiday Work States API. It simplifies and accelerates the documentation process by supporting various changeset specifications (e.g., releases, commits, time ranges) and provides non-blocking execution with built-in retry logic for improved reliability. This action is ideal for streamlining documentation workflows, especially for projects with frequent updates or complex version histories.

## What's Changed

## Doc Holiday Action v2.0.0

### Breaking Changes

- Migrated from Jobs API (`/api/v1/jobs`) to Work States API (`/api/v1/work_states/`)
- Removed inputs: `event-type`, `title`, `source-connection`, `comments`, `publications`
- `body` is now a required input
- Removed "smart mode" — no more automatic GitHub event context inference
- Outputs expanded from 3 to 18 fields (see action.yml for full list)

### New

- `publication` input (singular string, replaces `publications`)
- `stage` input (boolean, defer PR creation)
- Rich response outputs including `output-url`, `status`, `publication-name`, `entries`, and more

### Migration

Update your workflow from `v1` to `v2` and replace removed inputs with `body`:

```yaml
uses: sandgardenhq/doc-holiday-action@v2
with:
  api-token: ${{ secrets.DOC_HOLIDAY_TOKEN }}
  body: "Your documentation request"
```
