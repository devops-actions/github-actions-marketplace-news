---
title: Read mise.toml versions
date: 2026-04-02 13:57:48 +00:00
tags:
  - yshrsmz
  - GitHub Actions
draft: false
repo: https://github.com/yshrsmz/action-mise-values
marketplace: https://github.com/marketplace/actions/read-mise-toml-versions
version: v0.2.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yshrsmz/action-mise-values** to version **v0.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/read-mise-toml-versions) to find the latest changes.

## Action Summary

The **action-mise-values** GitHub Action parses the `[tools]` table from a `mise.toml` file and outputs it as a JSON object for use in subsequent workflow steps. It addresses the need for a centralized source of truth for tool versions (e.g., Node.js, Python, Go) in CI/CD pipelines, enabling developers to avoid hardcoding versions across workflows. This action provides a read-only solution for dynamically retrieving and reusing version data, offering flexibility to integrate with official setup actions while maintaining granular control over tool installations.

## What's Changed

v0.2.4: PR #16 - chore(deps): update mikefarah/yq action to v4.52.5
