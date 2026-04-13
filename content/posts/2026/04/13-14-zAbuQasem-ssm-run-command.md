---
title: SSM Run Command
date: 2026-04-13 14:19:09 +00:00
tags:
  - zAbuQasem
  - GitHub Actions
draft: false
repo: https://github.com/zAbuQasem/ssm-run-command
marketplace: https://github.com/marketplace/actions/ssm-run-command
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/zAbuQasem/ssm-run-command** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssm-run-command) to find the latest changes.

## Action Summary

This GitHub Action, **ssm-run-command**, allows users to execute shell commands on AWS EC2 instances via AWS Systems Manager (SSM) without the need for SSH access. It automates tasks such as deployments, updates, and configuration changes by leveraging OIDC or static credentials and supports targeting instances by ID or tags. Key capabilities include multi-line command execution, working directory specification, and real-time output retrieval.

## What's Changed

## New Features

- **Tag-based targeting** — new `targets` input to target instances by EC2 tags or resource groups instead of instance IDs (`Key=tag:env,Values=prod`)
- **Command output streaming** — new `wait-for-output` input polls SSM and streams stdout/stderr per instance directly into the Actions log
- **Wait timeout** — new `wait-timeout` input (1–3600s) controls how long to wait for output
- **Custom SSM documents** — new `document-name` input supports `AWS-RunPowerShellScript` for Windows, custom documents, and full document ARNs
- **GovCloud & ISO region support** — `aws-region` now accepts GovCloud, ISO, and ISO-B regions
- **New `output` action output** — combined stdout from all instances when `wait-for-output` is true

## Improvements

- Strict input validation for all fields before any AWS API call
- Unit tests covering all validation paths
- Ready-to-use example workflows in `examples/` (OIDC, tag targeting, multi-instance, Windows PowerShell, static credentials)

## Breaking Changes

- `instance-ids` is no longer required — exactly one of `instance-ids` or `targets` must be provided
