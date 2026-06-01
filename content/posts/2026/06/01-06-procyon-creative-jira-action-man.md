---
title: Jira Action Man
date: 2026-06-01 06:49:12 +00:00
tags:
  - procyon-creative
  - GitHub Actions
draft: false
repo: https://github.com/procyon-creative/jira-action-man
marketplace: https://github.com/marketplace/actions/jira-action-man
version: v2.1.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/procyon-creative/jira-action-man** to version **v2.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jira-action-man) to find the latest changes.

## Action Summary

The **Jira Action Man** GitHub Action automates the process of identifying Jira issue keys from GitHub events (e.g., branch names, PR titles, commit messages, PR body) and integrates them with Jira by posting PR descriptions as comments on corresponding Jira tickets. It streamlines workflows by enabling automatic issue linking, updating Jira tickets with PR details, and uploading PR body images as attachments, while offering configurable filters, regex patterns, and Jira comment management options. This action is ideal for teams looking to enhance traceability and communication between GitHub and Jira.

## What's Changed

## What's new

- **`transition_to` input** — move every matched Jira issue to a named status (e.g. `QA`, `Done`). Case-insensitive match against the issue's available transitions; warns and continues when no matching transition exists; obeys `jira_fail_on_error`. Event-agnostic and independent of `post_to_jira`.

This lets consumers drop hand-rolled `curl` transition steps in favor of a single tested action call.

See the *Transition Issues* section in the README. PR #24.
