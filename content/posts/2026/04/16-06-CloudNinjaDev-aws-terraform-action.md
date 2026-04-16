---
title: AWS Terraform Action
date: 2026-04-16 06:25:23 +00:00
tags:
  - CloudNinjaDev
  - GitHub Actions
draft: false
repo: https://github.com/CloudNinjaDev/aws-terraform-action
marketplace: https://github.com/marketplace/actions/aws-terraform-action
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/CloudNinjaDev/aws-terraform-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-terraform-action) to find the latest changes.

## Action Summary

The `aws-terraform-action` GitHub Action is a comprehensive CI/CD solution for automating the management of Terraform workflows in AWS environments. It streamlines tasks like formatting, validation, linting, security scanning, documentation generation, planning, and applying Terraform configurations, while optionally posting results to pull requests. This action simplifies infrastructure provisioning and ensures compliance, helping teams maintain consistent and secure Terraform practices.

## What's Changed

### ✨ New Feature: Provider & Plugin Caching

Added caching support to significantly speed up repeated runs.

#### New Input

| Input | Default | Description |
|-------|---------|-------------|
| `cache_plugins` | `true` | Cache Terraform providers and TFLint plugins |

#### How it works

- **Terraform providers** — cached to `~/.terraform.d/plugin-cache` via `TF_PLUGIN_CACHE_DIR`, keyed on `.terraform.lock.hcl` hashes
- **TFLint plugins** — cached to `~/.tflint.d/plugins`, keyed on `.tflint.hcl` hashes
- Both caches use `runner.os` in the key for correct cross-platform isolation

#### Usage

```yaml
- uses: CloudNinjaDev/aws-terraform-action@v2.0.0
  with:
    cache_plugins: 'true'   # default — set to 'false' to disable
```

## Full Changelog
https://github.com/CloudNinjaDev/aws-terraform-action/compare/v1.0.0...v2.0.0"
