---
title: cloud-audit - AWS Security Scanner
date: 2026-05-27 06:34:28 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v2.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v2.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The `cloud-audit` GitHub Action is an open-source CLI tool designed to identify AWS security vulnerabilities, such as attack paths and IAM privilege escalation routes, while prioritizing critical issues for remediation. It automates the detection of attack chains, simulates fixes, and focuses on resolving root causes rather than individual findings. Key features include a "Blast Radius" tool to assess potential attack impacts and an interactive visualizer for analyzing attack scenarios.

## What's Changed


### Added

- **DynamoDB hygiene module** - new `ddb.py` module adds 3 checks covering
  production-baseline DynamoDB configuration. cloud-audit previously had zero
  DynamoDB coverage across 23 services; v2.3.1 closes that gap.

  - **`aws-ddb-001` - Encryption at rest visibility** (tiered severity).
    Surfaces tables where `SSEDescription` is absent (AWS-owned default key,
    `LOW` - encryption is on but no CloudTrail audit trail, no rotation
    control, no incident-time revocation), `InaccessibleEncryptionDateTime`
    is set (`CRITICAL` - CMK was disabled or access revoked, table will be
    archived in 7 days), or `Status != ENABLED` on a steady-state table
    (`HIGH`). AWS-managed KMS (`alias/aws/dynamodb`) and customer-managed
    CMKs both pass. The AWS Security Hub managed standard has no equivalent
    control; cloud-audit is more opinionated because compliance auditors
    (SOC 2, HIPAA, ISO 27001) typically require an auditable key.
  - **`aws-ddb-002` - Point-in-time recovery enabled** (`MEDIUM`). Matches
    AWS Security Hub `DynamoDB.2` severity. Without PITR, accidental drops
    or mass conditional-update bugs are unrecoverable except from on-demand
    backups, which require explicit scheduling.
  - **`aws-ddb-003` - Autoscaling on PROVISIONED tables** (`MEDIUM`). Matches
    AWS Security Hub `DynamoDB.1` severity. PROVISIONED billing with manual
    capacity either over-provisions (cost waste, billed 24/7) or
    under-provisions (`ProvisionedThroughputExceededException`, client
    retries amplifying load). `PAY_PER_REQUEST` tables are skipped. Read-only
    or write-only autoscaling registrations produce a sub-finding identifying
    the missing dimension.

  All three checks include CLI + Terraform remediation. Pagination via
  `list_tables`. Application Auto Scaling targets are cached per-region for
  the duration of the scan (one API call returns every DDB target in the
  region).

- **`aws-cfg-003` - AWS Config recording group complete** (`MEDIUM`). Detects
  recorders that record only a subset of resource types - either via the
  legacy `allSupported=false` configuration or the modern
  `recordingStrategy.useOnly` set to `INCLUSION_BY_RESOURCE_TYPES` or
  `EXCLUSION_BY_RESOURCE_TYPES`. Also fires when `includeGlobalResourceTypes`
  is false, which silently drops every IAM/CloudFront/Route53 change from
  the configuration timeline. Filters out service-linked recorders
  (`recordingScope=INTERNAL`).

- **`aws-cfg-004` - AWS Config delivery channel exists and is configured**
  (tiered). Reports `HIGH` when a recorder exists but no delivery channel
  is configured (snapshots and configuration history items go nowhere).
  Reports `LOW` when the delivery channel exists but is throttled to the
  slowest `TwentyFour_Hours` snapshot frequency, or when `s3KmsKeyArn` is
  not set (delivery uses SSE-S3 instead of a CMK).

### Changed

- **`aws-s3-004` - Smarter S3 lifecycle check** (community feedback). The
  prior check only fired when a bucket had zero lifecycle rules - which
  missed the most expensive anti-pattern in production: a versioning-enabled
  bucket whose lifecycle rules don't include `NoncurrentVersionExpiration`.
  Without NCVE every object overwrite or delete retains the old version at
  full storage rates indefinitely. The check now cross-references bucket
  versioning state with lifecycle rules:

  - Versioning `Enabled` or `Suspended` + no `NoncurrentVersionExpiration` in
    any enabled rule -> `MEDIUM` (the storage runaway case; matches AWS
    Security Hub `S3.10`).
  - No enabled lifecycle on an unversioned bucket -> `LOW` (existing
    behaviour preserved).
  - No `AbortIncompleteMultipartUpload` rule -> `LOW` (new sub-finding;
    orphaned multipart uploads accumulate billable storage that never
    appears in regular object listings).

  Cross-check adds one `get_bucket_versioning` call per bucket; result is
  cached implicitly via the existing bucket-list cache pattern. Backward
  compatible: same check ID, no behaviour change for unversioned buckets.

- **`aws-cfg-001` and `aws-cfg-002` - service-linked recorder filtering**.
  Both existing checks now filter out service-linked recorders
  (`recordingScope=INTERNAL`), which are created by other AWS services
  (AWS Security Hub, AWS Audit Manager) and do not replace a
  customer-managed recorder.

### Tests

- 812 -> 836 (+24 net). New test files: `tests/aws/test_ddb.py` (12 tests
  covering all four encryption states, PITR enabled/disabled, autoscaling
  with read+write/read-only/none/pay-per-request). `tests/aws/test_config.py`
  expanded with 8 new tests for `aws-cfg-003` and `aws-cfg-004`.
  `tests/aws/test_s3.py` expanded with 4 new tests for the smart lifecycle
  cross-check (versioned without NCVE, versioned with NCVE, lifecycle
  rules-but-no-NCVE, AbortMPU missing).

### Compliance

Compliance framework mappings updated to cover the new check IDs:

- **SOC 2 Type II**: `aws-cfg-003` and `aws-cfg-004` added to CC2.1, CC3.4,
  CC4.1, CC7.1, CC8.1; `aws-ddb-001` mapped to CC6.1; `aws-ddb-002` mapped
  to A1.2.
- **HIPAA Security Rule**: `aws-cfg-003` and `aws-cfg-004` added to
  164.308(a)(1)(i) and 164.308(a)(8); `aws-ddb-001` to 164.312(a)(2)(iv);
  `aws-ddb-002` to 164.308(a)(7)(i).
- **ISO/IEC 27001:2022**: `aws-cfg-003` and `aws-cfg-004` added to A.5.9,
  A.5.23, A.5.36, A.8.9, A.8.32; `aws-ddb-001` to A.8.24; `aws-ddb-002` to
  A.8.13.
- **NIS2 Directive**: `aws-cfg-003` and `aws-cfg-004` added to NIS2-RM-01b,
  NIS2-RM-05, NIS2-RM-05b, NIS2-RM-06, NIS2-RM-06b, NIS2-GOV-01;
  `aws-ddb-001` to NIS2-RM-05b.
- **BSI C5:2020**: `aws-cfg-003` and `aws-cfg-004` added to AM-01, OPS-14,
  COS-07, COS-08, INQ-03; `aws-ddb-001` to CRY-04; `aws-ddb-002` to OPS-06.
- **CIS AWS Foundations Benchmark v3.0.0**: `aws-cfg-003` and `aws-cfg-004`
  added to control 3.3. CIS v3.0.0 has no DynamoDB controls; the gap is
  documented honestly rather than invented.

### Acknowledgments

These improvements were prompted by feedback received via community channels.

### Also in this release (carried over from prior unreleased work)

- **GitHub Action hardening** - `action.yml` now pins cloud-audit to a specific
  PyPI version via the new `cloud-audit-version` input (default tracks the
  action's release tag). Previously installed unpinned `cloud-audit` latest,
  which made builds non-reproducible. Version string is validated against
  `[0-9A-Za-z.+-]` before being passed to `pip install`.

- **GitHub Action shell injection prevention** - all `run:` blocks moved from
  direct `${{ inputs.* }}` interpolation to env-var pattern (`env:` map +
  bash arrays). `extra-args`, `regions`, `output`, and `diff-baseline` are
  now passed as argv entries to `cloud-audit`, not concatenated into shell
  strings. A malicious workflow author can still pass odd flag values but
  cannot break out of the cloud-audit invocation.

- **README polish** - dropped promotional "first/only" wording in three
  places (blast-radius section, AI-SPM row, IAM Privilege Escalation row).
  PMapper row reframed from "this is its open-source replacement" to a
  factual statement of PMapper's last release date and cloud-audit's
  distinct scope. Honest tone over marketing tone.

- **README Prowler comparison refreshed** - 572 checks / 83 services / 41
  frameworks updated to 600 / 84 / 44 (verified against
  github.com/prowler-cloud/prowler on 2026-05-25). Dropped unsubstantiated
  "55 fixers" reference and "10+ providers" puffery. Footnote datestamp
  changed from "April 2026" to "2026-05-25".

- **README broken links fixed** - two relative links to
  `docs/features/blast-radius.md` (gitignored - the file is published only
  via the docs site, not committed to git) replaced with absolute URLs
  pointing at `https://haitmg.pl/cloud-audit/features/blast-radius/`.

- **docs/features/blast-radius.md** - same "first pure-CLI open-source"
  wording softened to "aims to be a lightweight CLI-native alternative".

- **SECURITY.md supported versions matrix** - stale `1.1.x` / `1.2.x` rows
  replaced with `2.3.x` (current) / `2.2.x` (security fixes only) / `< 2.2`
  (no). The matrix had not been touched since the v1.x line was current.


