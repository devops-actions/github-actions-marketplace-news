---
title: seekrit — load secrets
date: 2026-07-19 22:02:27 +00:00
tags:
  - seekritdev
  - GitHub Actions
draft: false
repo: https://github.com/seekritdev/github-action
marketplace: https://github.com/marketplace/actions/seekrit-load-secrets
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the process of loading secrets from seekrit, a secure secret management tool. It decrypts secrets locally using a private key associated with a service token and injects them into subsequent steps as environment variables, ensuring that sensitive information is not exposed in logs or visible to other team members. The action supports various configurations such as prefixing variable names, filtering which secrets to include or exclude, and exposing secrets as step outputs.
---


Version updated for **https://github.com/seekritdev/github-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/seekrit-load-secrets) to find the latest changes.

## Action Summary

This GitHub Action automates the process of loading secrets from seekrit, a secure secret management tool. It decrypts secrets locally using a private key associated with a service token and injects them into subsequent steps as environment variables, ensuring that sensitive information is not exposed in logs or visible to other team members. The action supports various configurations such as prefixing variable names, filtering which secrets to include or exclude, and exposing secrets as step outputs.

## What's Changed

- feat: seekrit secrets loader for GitHub Actions (591d2ea)
