---
title: ZeroFS Volume
date: 2026-04-13 06:28:53 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v1.0.11
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v1.0.11**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Action Summary

ZeroFS is a high-performance filesystem designed to make S3-compatible object storage function as primary storage by providing file-level access via NFS/9P and block-level access via NBD. It simplifies the process of using S3 storage for tasks like running databases, ZFS pools, or even booting operating systems, while offering features such as encryption, multi-layer caching, and a web-based UI for file management and monitoring. ZeroFS automates complex workflows with S3, enabling seamless integration with existing systems and ensuring strong POSIX compliance and high data integrity.

## What's Changed

## What's Changed
* Make NFS server address optional, consistent with other servers by @Barre in https://github.com/Barre/ZeroFS/pull/375
* Bump dependencies by @Barre in https://github.com/Barre/ZeroFS/pull/378
* Bump slatedb by @Barre in https://github.com/Barre/ZeroFS/pull/379
* Revert chunk reads to range scans and tune scan options by @Barre in https://github.com/Barre/ZeroFS/pull/380
* Don't fsync cache writes by @Barre in https://github.com/Barre/ZeroFS/pull/381
* Various performance improvements

**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v1.0.9...v1.0.11
