---
title: Rust Cache S3
date: 2026-03-25 05:59:33 +00:00
tags:
  - silafood
  - GitHub Actions
draft: false
repo: https://github.com/silafood/rust-cache-s3
marketplace: https://github.com/marketplace/actions/rust-cache-s3
version: v2.1.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/silafood/rust-cache-s3** to version **v2.1.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-cache-s3) to find the latest changes.

## Action Summary

The **Rust Cache S3 Action** is a GitHub Action that accelerates Rust project builds by caching dependencies and build artifacts, with added support for S3-compatible storage solutions like AWS S3, MinIO, and RustFS. It automates cache management, enabling seamless integration with both GitHub-hosted and self-hosted runners while offering flexibility to switch between different cache providers. This action optimizes build times and resource usage by leveraging efficient cache storage mechanisms tailored to diverse infrastructure setups.

## Release notes

Fork of [Swatinem/rust-cache](https://github.com/Swatinem/rust-cache) with S3-compatible storage support.

## What's New

- **S3 cache provider** — routes cache operations to S3-compatible backends (RustFS, MinIO, AWS S3)
- **Auto-detection** — automatically activates when `RUNS_ON_S3_BUCKET_CACHE` env var is set; no workflow changes needed
- **Explicit opt-in** — set `cache-provider: s3` to force S3 mode
- All original providers (`github`, `buildjet`, `warpbuild`) remain unchanged

## Configuration

S3 is configured via environment variables:

| Variable | Purpose |
|---|---|
| `RUNS_ON_S3_BUCKET_CACHE` | Bucket name (presence triggers S3 mode) |
| `RUNS_ON_S3_BUCKET_ENDPOINT` | Custom endpoint for self-hosted S3 |
| `RUNS_ON_S3_FORCE_PATH_STYLE` | Set `true` for RustFS/MinIO |
| `AWS_ACCESS_KEY_ID` | S3 access key |
| `AWS_SECRET_ACCESS_KEY` | S3 secret key |
| `AWS_REGION` | S3 region (default: `us-east-1`) |

## Usage

```yaml
- uses: silafood/rust-cache-s3@v2.1.4
```
