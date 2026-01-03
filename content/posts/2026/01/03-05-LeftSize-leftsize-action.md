---
title: LeftSize Cloud Cost Optimization
date: 2026-01-03 05:35:48 +00:00
tags:
  - LeftSize
  - GitHub Actions
draft: false
repo: https://github.com/LeftSize/leftsize-action
marketplace: https://github.com/marketplace/actions/leftsize-cloud-cost-optimization
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/LeftSize/leftsize-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/leftsize-cloud-cost-optimization) to find the latest changes.

## Action Summary

The LeftSize GitHub Action enables automated scanning of AWS and Azure infrastructures for cost optimization opportunities using Cloud Custodian, directly within GitHub Actions without requiring additional infrastructure. It solves the challenges of identifying inefficiencies in cloud usage by providing secure, read-only scans, actionable findings, and support for multi-cloud environments. Key capabilities include out-of-the-box configuration, customizable policies, and integration with the LeftSize dashboard for tracking and managing optimization insights.

## Release notes

## Changes

- Switched to pre-built container image distribution
- Users now pull images from GHCR instead of building on every run
- Fixed Dockerfile (added unzip package)
- Simplified dependencies to use c7n[azure] bundle
- Reduces workflow runtime from 2-3 minutes to 5-10 seconds

## Container Images

- `ghcr.io/leftsize/leftsize-action:v1` (major version, auto-updates)
- `ghcr.io/leftsize/leftsize-action:v1.0.1` (pinned version)
- `ghcr.io/leftsize/leftsize-action:main` (latest from main branch)

Policies are embedded in the container for offline operation and version consistency.
