---
title: Retrieve Secrets from Azure KeyVault
date: 2026-01-06 20:27:32 +00:00
tags:
  - Andrews-McMeel-Universal
  - GitHub Actions
draft: false
repo: https://github.com/Andrews-McMeel-Universal/get-envs
marketplace: https://github.com/marketplace/actions/retrieve-secrets-from-azure-keyvault
version: v1.31
dependentsNumber: "3"
---


Version updated for **https://github.com/Andrews-McMeel-Universal/get-envs** to version **v1.31**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/retrieve-secrets-from-azure-keyvault) to find the latest changes.

## Action Summary

The "Get Environment Variables Action" is a GitHub Action designed to automate the retrieval of secrets from Azure Key Vaults and securely integrate them into GitHub workflows. It generates a `.env` file and adds secrets to the `$GITHUB_ENV` environment variable while masking sensitive values to enhance security. This action simplifies the management of environment variables for CI/CD pipelines, reducing manual effort and improving workflow efficiency.

## Release notes

## What's Changed

## 🐛 Fixes

- [DEVOPS-792] Fix Key Vault resolution failing if Key Vault prefix is not set by @ebronson68 in #30

**Full Changelog**: https://github.com/Andrews-McMeel-Universal/get-envs/compare/v1.30...v1.31

