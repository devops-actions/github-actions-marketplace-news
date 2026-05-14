---
title: Dormant Users Action
date: 2026-05-14 14:37:35 +00:00
tags:
  - matsumo-and
  - GitHub Actions
draft: false
repo: https://github.com/matsumo-and/dormant-users-action
marketplace: https://github.com/marketplace/actions/dormant-users-action
version: v1.0.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/matsumo-and/dormant-users-action** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dormant-users-action) to find the latest changes.

## Action Summary

The **dormant-users-action** is a GitHub Action designed to identify inactive organization members by analyzing audit log events and cross-referencing them with the organization's member list, without making individual user API requests. It automates the detection of dormant users based on configurable activity thresholds, saving time and reducing manual oversight. Key capabilities include scalable API usage, customizable activity filters, and outputs in JSON or CSV formats for streamlined reporting.

## What's Changed

## Bug fixes

- **fix: embed audit log phrase as URL query param instead of `-f` field** — `gh api -f` sends parameters as request body fields, causing 404 on the audit log GET endpoint. The phrase is now embedded directly in the URL via `encodeURIComponent`.
- **fix: remove `actor_is_bot:false` from audit log phrase query** — Not a valid REST API qualifier; bot filtering is handled by excluding `type=Bot` members from the member list.
