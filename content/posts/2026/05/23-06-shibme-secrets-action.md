---
title: Secrets Action
date: 2026-05-23 06:13:44 +00:00
tags:
  - shibme
  - GitHub Actions
draft: false
repo: https://github.com/shibme/secrets-action
marketplace: https://github.com/marketplace/actions/secrets-action
version: v1.0.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shibme/secrets-action** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secrets-action) to find the latest changes.

## Action Summary

The `secrets-action` GitHub Action automates the process of securely writing secrets to an organization, repository, or environment directly from a workflow. It is particularly useful for dynamically generating and managing secrets during CI/CD pipelines. The action provides key capabilities such as handling secret creation, updating existing secrets, and supporting multiple permission scopes for secure secret management.

## What's Changed

**Bug Fix: Octokit authentication initialization**

Simplified the GitHub client (`Octokit`) initialization by removing the explicit `createTokenAuth` strategy. The previous implementation conditionally constructed two different Octokit instances depending on whether a token was provided - this caused issues with createTokenAuth. The fix consolidates to a single instance using auth: token || undefined, which is the idiomatic approach and lets Octokit handle auth internally.

- Removed `@octokit/auth-token` dependency (`createTokenAuth` import)
- Simplified `Octokit` setup to a single construction path
- Updated dev dependencies: `eslint` → 10.4.0, `jest` → 30.4.2
