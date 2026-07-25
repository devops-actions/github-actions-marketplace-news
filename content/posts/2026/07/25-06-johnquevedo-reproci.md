---
title: ReproCI capture
date: 2026-07-25 06:47:43 +00:00
tags:
  - johnquevedo
  - GitHub Actions
draft: false
repo: https://github.com/johnquevedo/reproci
marketplace: https://github.com/marketplace/actions/reproci-capture
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ReproCI captures and reproduces failed pytest jobs, providing a comprehensive trace of the test environment and execution process. It is designed to help developers debug issues by capturing detailed logs, configurations, and dependencies, and then replaying them locally or in isolated environments like Docker containers. This tool supports various runtime options and provides features for debugging and optimization.
---


Version updated for **https://github.com/johnquevedo/reproci** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reproci-capture) to find the latest changes.

## Action Summary

ReproCI captures and reproduces failed pytest jobs, providing a comprehensive trace of the test environment and execution process. It is designed to help developers debug issues by capturing detailed logs, configurations, and dependencies, and then replaying them locally or in isolated environments like Docker containers. This tool supports various runtime options and provides features for debugging and optimization.

## What's Changed

ReproCI v0.2.0 adds a locally validated distributed control plane around the existing Python capture and replay engine.

## Highlights

- Signed GitHub webhook intake with idempotent delivery handling
- PostgreSQL durable queue, leases, checkpoints, retries, backoff, and DLQ
- AES-256-GCM encrypted, SHA-256 verified, Ed25519-signed S3/MinIO artifacts
- Isolated Docker workers and Kubernetes deployment manifests
- Per-tenant API credentials, secret redaction, audit logs, Prometheus, and OpenTelemetry
- Terraform AWS topology validated without applying paid infrastructure

## Controlled evidence

The retained local benchmark completed 172/172 controlled jobs across two runs at concurrency 1, 10, 25, and 50. The two 50-job runs reached 17.64 and 18.50 jobs/s. Worker-crash recovery, storage corruption, retries, dead-letter handling, PostgreSQL restart recovery, and Kind execution were exercised.

These results cover a synthetic owner-controlled fixture on local Docker Desktop. They do not establish external adoption, real-world reproduction rate, debugging-time savings, resolved flaky tests, cloud scale, or production operation. MinIO's one-day lifecycle rule was configured but its 24-hour deletion boundary was not awaited.

See docs/release-v0.2.0.md and docs/platform-validation.md for the complete limitations and evidence ledger.
