---
title: Landsafe — Postgres migration safety
date: 2026-07-19 14:48:28 +00:00
tags:
  - landsafe-dev
  - GitHub Actions
draft: false
repo: https://github.com/landsafe-dev/action
marketplace: https://github.com/marketplace/actions/landsafe-postgres-migration-safety
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Landsafe GitHub Action checks PostgreSQL migration PRs for potential issues that could cause downtime on production, such as blocking index builds or full table rewrites. It analyzes the `.sql` files in the PR diff and provides warnings about critical risks before merging the changes. The action does not connect to the database and is designed to be used alongside schema-as-code tools.
---


Version updated for **https://github.com/landsafe-dev/action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/landsafe-postgres-migration-safety) to find the latest changes.

## Action Summary

The Landsafe GitHub Action checks PostgreSQL migration PRs for potential issues that could cause downtime on production, such as blocking index builds or full table rewrites. It analyzes the `.sql` files in the PR diff and provides warnings about critical risks before merging the changes. The action does not connect to the database and is designed to be used alongside schema-as-code tools.

## What's Changed

Two small distribution additions — no rule or detection changes.

- A badge for repos that install Landsafe to show off:

  ```md
  [![Checked with Landsafe](https://img.shields.io/badge/checked%20with-Landsafe-brightgreen)](https://landsafe.dev)
  ```

- Free-tier PR comments now end with one footer line inviting whoever reads the PR to add Landsafe to their own repo, linking straight to the copy-paste Action YAML at [landsafe.dev/#quickstart](https://landsafe.dev/#quickstart). Pro and Business comments stay clean — that's part of what paying for it buys.

