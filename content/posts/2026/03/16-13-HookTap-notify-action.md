---
title: HookTap Notify
date: 2026-03-16 13:46:02 +00:00
tags:
  - HookTap
  - GitHub Actions
draft: false
repo: https://github.com/HookTap/notify-action
marketplace: https://github.com/marketplace/actions/hooktap-notify
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/HookTap/notify-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hooktap-notify) to find the latest changes.

## Action Summary

The **HookTap Notify Action** allows users to send instant push notifications to their iPhone from GitHub Actions workflows. It automates the process of delivering real-time updates about workflow events, such as build statuses, test results, deployments, or releases, directly to a user's device. This action streamlines communication by enabling customizable notifications with titles and messages, improving visibility into CI/CD processes and repository activity.

## Release notes

 Send instant iPhone push notifications from any GitHub Actions workflow — powered by [HookTap](https://hooktap.me).                               
                                                                                                                                                    
  ## Usage

  ```yaml
  - uses: HookTap/notify-action@v1
    with:
      webhook-url: ${{ secrets.HOOKTAP_WEBHOOK_URL }}
      title: "✅ Build passed"
      body: "${{ github.ref_name }} · ${{ github.sha }}"

  Inputs

  ┌─────────────┬──────────┬─────────┬──────────────────────────┐
  │    Input    │ Required │ Default │       Description        │
  ├─────────────┼──────────┼─────────┼──────────────────────────┤
  │ webhook-url │ Yes      │ —       │ Your HookTap webhook URL │
  ├─────────────┼──────────┼─────────┼──────────────────────────┤
  │ title       │ Yes      │ —       │ Notification title       │
  ├─────────────┼──────────┼─────────┼──────────────────────────┤
  │ body        │ No       │ ""      │ Notification body text   │
  ├─────────────┼──────────┼─────────┼──────────────────────────┤
  │ type        │ No       │ push    │ push · feed · widget     │
  └─────────────┴──────────┴─────────┴──────────────────────────┘

  Get HookTap

  Install https://apps.apple.com/app/hooktap/id6670671021, copy your personal webhook URL, and add it as HOOKTAP_WEBHOOK_URL to your repo secrets.
  ```
