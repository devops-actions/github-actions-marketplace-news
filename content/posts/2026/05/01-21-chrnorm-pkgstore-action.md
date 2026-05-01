---
title: pkgstore publish
date: 2026-05-01 21:51:31 +00:00
tags:
  - chrnorm
  - GitHub Actions
draft: false
repo: https://github.com/chrnorm/pkgstore-action
marketplace: https://github.com/marketplace/actions/pkgstore-publish
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/chrnorm/pkgstore-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pkgstore-publish) to find the latest changes.

## Action Summary

The `pkgstore-action` GitHub Action automates the process of publishing signed APT repositories to an S3-compatible storage service. It downloads and verifies the `pkgstore` binary, then uses it to upload `.deb` package files to an S3 bucket, sign the APT repository metadata with a GPG key, and optionally handle CDN cache invalidation for services like CloudFront or Cloudflare. This action simplifies the creation and maintenance of secure, distributed APT repositories for Debian packages.

## What's Changed

- update to pkgstore v0.1.0 with baked-in checksums (fb2d171)
- add S3 endpoint and multi-CDN inputs (336ef4b)
- initial commit: GitHub Action for pkgstore (64b3d91)
