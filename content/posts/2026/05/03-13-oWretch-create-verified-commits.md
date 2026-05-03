---
title: Create Verified Commit and Tag
date: 2026-05-03 13:53:27 +00:00
tags:
  - oWretch
  - GitHub Actions
draft: false
repo: https://github.com/oWretch/create-verified-commits
marketplace: https://github.com/marketplace/actions/create-verified-commit-and-tag
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/oWretch/create-verified-commits** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-verified-commit-and-tag) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of verified, signed commits and optional annotated tags directly via the GitHub API, eliminating the need for GPG or SSH keys. It solves the problem of unverified commits in workflows by ensuring every commit is signed and displays the "Verified" badge in the GitHub UI. Key capabilities include support across all runner OS types, flexible file selection using glob patterns, combined commit and tag creation, and idempotent workflows that prevent empty commits or unnecessary downstream steps.

## What's Changed

# 1.0.0 (2026-05-02)


### Features

* implement create-signed-commit GitHub Action ([43493a8](https://github.com/oWretch/create-verified-commits/commit/43493a8bc1a2c7281ff0eb90154cd4e5f32b9616))

