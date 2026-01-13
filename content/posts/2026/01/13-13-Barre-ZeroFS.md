---
title: ZeroFS Volume
date: 2026-01-13 13:23:32 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v0.23.6
dependentsNumber: "0"
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v0.23.6**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Action Summary

ZeroFS is a filesystem solution that transforms S3-compatible object storage into a high-performance, fully functional filesystem. It provides file-level access via NFS and 9P, as well as block-level access through NBD, enabling use cases like running ZFS or databases directly on S3. With built-in encryption, multi-layered caching, and POSIX-compliant operations, ZeroFS simplifies storage management by automating the integration of S3 as a primary storage backend while ensuring high performance and data integrity.

## Release notes

## What's Changed
* Parallelize independent DB reads in create, mkdir, symlink, mknod, and link operations by @Barre in https://github.com/Barre/ZeroFS/pull/327
* Use `u64::MAX` instead of `1 << 48` for available inodes calculation by @Barre in https://github.com/Barre/ZeroFS/pull/328
* Parallelize directory inode and entry lookup in `lookup()` by @Barre in https://github.com/Barre/ZeroFS/pull/329


**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v0.23.4...v0.23.6
