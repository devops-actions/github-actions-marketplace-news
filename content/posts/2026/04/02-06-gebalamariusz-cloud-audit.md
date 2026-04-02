---
title: cloud-audit - AWS Security Scanner
date: 2026-04-02 06:34:16 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v1.2.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The **`cloud-audit` GitHub Action** is an open-source CLI tool designed to detect exploitable attack chains in AWS environments and provide actionable remediation steps using AWS CLI and Terraform. By correlating vulnerabilities into comprehensive attack paths, it helps organizations identify critical security risks and resolve them efficiently. The tool automates the security scanning process, supports 80 checks across 18 AWS services, and eliminates the need for third-party SaaS solutions by running locally.

## What's Changed


### Added

- Parallel check execution via ThreadPoolExecutor for faster scans on large accounts
- Wildcard pattern support in suppressions (`aws-iam-*`, `arn:aws:*:*:*:role/deploy-*`)
- Debug logging in attack chain correlation engine for diagnosing collection failures
- Makefile with `make all` (lint + format + typecheck + test), `make test-cov`, `make security`
- `provider.client()` method with boto3 adaptive retry (max 5 attempts) and per-service client caching
- `_region_overlap()` helper for shared region-matching logic in attack chain rules
- 7 new tests for attack chains AC-25, AC-26, AC-27 and wildcard suppressions (345 total)

### Changed

- Thread-safe module-level caches in S3 and CloudTrail checks (threading.Lock)
- Cache reset abstracted into `BaseProvider.reset_caches()` (was hardcoded S3-only import)
- Scanner enforces canonical check_id from make_check metadata (single source of truth)
- `compute_summary()` optimized to single pass over findings (was 5+ iterations)
- IAM checks migrated to `provider.client()` for adaptive retry and client caching
- Demo command updated to show 80 checks (was 47)

### Fixed

- SARIF `artifactLocation.uri` now uses valid relative URI format (`checks/{check_id}`)
- Progress bar no longer advances past 100% in interactive mode
- Documentation URL in pyproject.toml points to docs site instead of GitHub README


