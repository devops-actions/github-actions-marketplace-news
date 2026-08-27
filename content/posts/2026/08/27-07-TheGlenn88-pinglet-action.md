---
title: Pinglet Notify
date: 2026-08-27 07:43:27 +00:00
tags:
  - TheGlenn88
  - GitHub Actions
draft: false
repo: https://github.com/TheGlenn88/pinglet-action
marketplace: https://github.com/marketplace/actions/pinglet-notify
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Pinglet Notify action automates the process of sending push notifications to a [Pinglet] topic from any GitHub Actions workflow. It simplifies integration with Pinglet by eliminating the need for SDKs or app configurations. The action allows users to send notifications with customizable titles, messages, and severity levels directly from their workflows.
---


Version updated for **https://github.com/TheGlenn88/pinglet-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinglet-notify) to find the latest changes.

## Action Summary

The Pinglet Notify action automates the process of sending push notifications to a [Pinglet] topic from any GitHub Actions workflow. It simplifies integration with Pinglet by eliminating the need for SDKs or app configurations. The action allows users to send notifications with customizable titles, messages, and severity levels directly from their workflows.

## What's Changed

Initial release.

Publish a push notification to a Pinglet topic from any workflow: deploy results, CI failures, release announcements. Inputs for title, message, level, priority, badges and metadata; retries on transient failures and fails the step with the API error body on a non-2xx.

```yaml
- uses: TheGlenn88/pinglet-action@v1
  with:
    key: ${{ secrets.PINGLET_KEY }}
    topic: acme/deploys
    title: "Deploy done"
    message: "${{ github.ref_name }} is live"
    level: success
```
