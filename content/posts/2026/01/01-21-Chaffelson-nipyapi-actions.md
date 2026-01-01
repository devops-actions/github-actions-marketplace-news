---
title: NiFi Flow CI/CD
date: 2026-01-01 21:11:22 +00:00
tags:
  - Chaffelson
  - GitHub Actions
draft: false
repo: https://github.com/Chaffelson/nipyapi-actions
marketplace: https://github.com/marketplace/actions/nifi-flow-ci-cd
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Chaffelson/nipyapi-actions** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nifi-flow-ci-cd) to find the latest changes.

## Action Summary

This GitHub Action, "NiPyAPI Actions," automates the testing, deployment, and management of Apache NiFi data flows using Git as the source of truth. It enables users to version control NiFi flow definitions in Git, automatically test and deploy them during pull/merge requests, and seamlessly promote flows across development, staging, and production environments. Key capabilities include deploying flows, starting/stopping process groups, managing flow versions, and exporting/importing flow definitions, streamlining CI/CD workflows for NiFi.

## Release notes

## What's New

### GitLab CI/CD Support
- Full support for GitLab CI/CD pipelines alongside GitHub Actions
- GitLab Flow Registry Client support (`GL_REGISTRY_TOKEN`)
- Auto-detection of CI platform

### CLI-First Architecture  
- All operations use the `nipyapi` CLI from main client library
- Requires `nipyapi[cli]>=1.2.0`
- Tested against NiFi 2.7.2

### New Commands
- `purge-flowfiles` - Purge queued FlowFiles
- `export-flow-definition` / `import-flow-definition` - JSON/YAML export/import
- `list-registry-flows`, `get-versions`, `get-diff` - Discovery operations

See [CHANGELOG.md](CHANGELOG.md) for full details.
