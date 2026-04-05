---
title: Trigger AWX job templates through REST APIs
date: 2026-04-05 06:27:24 +00:00
tags:
  - bilalahmad99
  - GitHub Actions
draft: false
repo: https://github.com/bilalahmad99/github-action-trigger-awx
marketplace: https://github.com/marketplace/actions/trigger-awx-job-templates-through-rest-apis
version: v2.1.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/bilalahmad99/github-action-trigger-awx** to version **v2.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigger-awx-job-templates-through-rest-apis) to find the latest changes.

## Action Summary

This GitHub Action enables users to trigger job or workflow templates on Ansible Tower/AWX directly from their GitHub workflows, automating the integration between CI/CD pipelines and Ansible-based automation tasks. It solves the problem of manually initiating Ansible Tower/AWX jobs by providing streamlined API-based interactions, supporting both token-based and basic authentication methods. Key capabilities include passing extra variables to templates, retrying API requests, and parsing outputs from job runs.

## What's Changed

## New Features
- 🔐 OAuth2 token authentication support (preferred method)
- ✅ Backward compatible with username/password authentication

## Improvements
- Enhanced authentication validation
- Better secret masking for sensitive values
- Improved logging with `core.info()` and `core.warning()`
- Refactored code structure for better maintainability
- Comprehensive test coverage

## Documentation
- Updated README with authentication examples
- Added workflow template example

