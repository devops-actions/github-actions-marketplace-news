---
title: Pipery Rust CI
date: 2026-04-28 22:04:18 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-rust-ci
marketplace: https://github.com/marketplace/actions/pipery-rust-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-rust-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-rust-ci) to find the latest changes.

## Action Summary

The **Pipery Rust CI** GitHub Action provides a reusable, end-to-end Rust continuous integration pipeline with structured logging via the Pipery platform. It automates key tasks such as static analysis (SAST, SCA), linting, building, testing, versioning, packaging, releasing, and reintegration, streamlining the software delivery process for Rust projects. By leveraging Pipery's structured logging, it also enhances pipeline observability for better debugging and monitoring.

## What's Changed

## v1.0.0

Complete Rust CI pipeline: SAST (cargo-geiger), SCA (cargo audit), clippy lint, cargo build --release, cargo test, version, cargo package, GitHub Release + SHA tag, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-rust-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-rust-ci#readme) for the full inputs reference.
