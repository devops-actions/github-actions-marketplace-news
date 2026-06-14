---
title: AWS Secrets Manager Reader | Retrieve secrets
date: 2026-06-14 22:21:10 +00:00
tags:
  - LTomer
  - GitHub Actions
draft: false
repo: https://github.com/LTomer/aws-sm-reader-action
marketplace: https://github.com/marketplace/actions/aws-secrets-manager-reader-retrieve-secrets
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LTomer/aws-sm-reader-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-secrets-manager-reader-retrieve-secrets) to find the latest changes.

## What's Changed

This is the first stable release of the AWS Secrets Manager Reader GitHub Action. This action provides a powerful and flexible way to retrieve secrets from AWS Secrets Manager and expose them as masked environment variables
  or temporary files in your GitHub Actions workflows.

  Inspired by robust secret management patterns, this action uses a custom DSL (Domain Specific Language) to allow for complex secret retrieval logic within a single, readable configuration block.

  ✨ Key Features

   * Secure by Default: All secret values retrieved are automatically masked in the GitHub Actions logs using core.setSecret().
   * Flexible Instructions DSL: A simple, line-based syntax that supports comments, custom messages, and complex mapping.
   * Advanced Secret Handling:
       * var: Extract specific keys from JSON secrets into environment variables.
       * pre: Bulk-expand all keys from a JSON secret into prefixed environment variables.
       * raw: Save secret values directly to temporary files (perfect for SSH keys, PEM files, or kubeconfigs).
       * base64 & b64var: Decode base64-encoded secrets directly into files or variables.
       * rep: Dynamically render configuration templates by replacing __PLACEHOLDERS__ with secret values.
   * Smart Variable Substitution: Define and reuse variables ({varName}) within your instructions to keep your configuration DRY and maintainable.
   * Multi-Region Support: Easily fetch secrets from different AWS regions in a single step via the @region suffix or global region overrides.
   * Format Auto-Detection: Intelligently detects whether a secret is JSON-formatted or Plaintext.

  📖 Getting Started

  To start using this action, reference it in your workflow after configuring your AWS credentials (OIDC recommended):
```
   1 - uses: LTomer/aws-sm-reader-action@v1
   2   with:
   3     source-type: inline
   4     data: |
   5       # Retrieve individual fields
   6       var => myapp/prod/db => password => DB_PASSWORD
   7       
   8       # Retrieve all fields with a prefix
   9       pre => myapp/prod/api => * => API
```
  For comprehensive documentation and advanced usage examples, please refer to the README (https://github.com/LTomer/aws-sm-reader-action#readme).
