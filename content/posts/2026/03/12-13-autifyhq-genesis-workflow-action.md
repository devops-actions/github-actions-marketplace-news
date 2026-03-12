---
title: Genesis Workflow
date: 2026-03-12 13:36:13 +00:00
tags:
  - autifyhq
  - GitHub Actions
draft: false
repo: https://github.com/autifyhq/genesis-workflow-action
marketplace: https://github.com/marketplace/actions/genesis-workflow
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/autifyhq/genesis-workflow-action** to version **v1.0.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/genesis-workflow) to find the latest changes.

## Action Summary

The Genesis Workflow Action is a GitHub Action designed to automate the triggering, monitoring, and output retrieval of Genesis workflows, enabling seamless integration into CI/CD pipelines. It solves the problem of manually executing and tracking Genesis workflows by providing capabilities to initiate workflows, wait for their completion, and extract results programmatically. Additionally, it supports configurable inputs, multiple output formats, and compatibility with both hosted and self-hosted Genesis instances.

## Release notes

## What's Changed

- Updated default `api-url` from `https://genesis-v2.autify.com` to `https://genesis.autify.com` following the production domain migration.

No action required if you already set `api-url` explicitly. If you rely on the default, requests will now go to the new domain.
