---
title: Matrix outputs - read node24
date: 2026-04-04 06:10:04 +00:00
tags:
  - mitchdz
  - GitHub Actions
draft: false
repo: https://github.com/mitchdz/github-action-matrix-outputs-read
marketplace: https://github.com/marketplace/actions/matrix-outputs-read-node24
version: v2-alpha
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mitchdz/github-action-matrix-outputs-read** to version **v2-alpha**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/matrix-outputs-read-node24) to find the latest changes.

## Action Summary

The GitHub Action `cloudposse/github-action-matrix-outputs-read` addresses a limitation in GitHub Actions where outputs from matrix jobs are only accessible for the latest iteration. This action automates the retrieval of all matrix job outputs using a workaround, enabling reference to outputs from multiple matrix runs in subsequent jobs. It streamlines workflows for complex builds or testing scenarios that utilize matrix strategies.

## What's Changed

Bump download-artifact from v4 to v7 to support the new GitHub
artifact backend. Bump install-jq-action from v2.1.0 to v3.0.0
and jq from 1.6 to 1.7 to resolve the Buffer() deprecation
warning under Node 24 runners. 

