---
title: Website Indexability Gate
date: 2026-07-14 14:56:06 +00:00
tags:
  - unitedideas
  - GitHub Actions
draft: false
repo: https://github.com/unitedideas/website-indexability-monitor
marketplace: https://github.com/marketplace/actions/website-indexability-gate
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks a production website's indexability and returns HTTP status, robots meta, `X-Robots-Tag`, canonical URL, robots.txt policy, and optional synthetic AI crawler responses. If the homepage is noindex, it fails the job. The check is configured with inputs like fail-on-noindex and can also send synthetic requests to simulate crawler behavior.
---


Version updated for **https://github.com/unitedideas/website-indexability-monitor** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/website-indexability-gate) to find the latest changes.

## Action Summary

This GitHub Action checks a production website's indexability and returns HTTP status, robots meta, `X-Robots-Tag`, canonical URL, robots.txt policy, and optional synthetic AI crawler responses. If the homepage is noindex, it fails the job. The check is configured with inputs like fail-on-noindex and can also send synthetic requests to simulate crawler behavior.

## What's Changed

First Marketplace-ready release. Fail a GitHub Actions job when a public homepage returns noindex, while reporting status, canonical, robots.txt policy, and optional synthetic AI crawler responses. Uses the current actions/checkout runtime in the scheduled template.
