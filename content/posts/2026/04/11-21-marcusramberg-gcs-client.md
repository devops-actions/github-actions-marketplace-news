---
title: Setup GCS Client
date: 2026-04-11 21:46:09 +00:00
tags:
  - marcusramberg
  - GitHub Actions
draft: false
repo: https://github.com/marcusramberg/gcs-client
marketplace: https://github.com/marketplace/actions/setup-gcs-client
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/marcusramberg/gcs-client** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-gcs-client) to find the latest changes.

## Action Summary

The **Google Cloud Storage client GitHub Action** provides a lightweight CLI tool that replicates common `gcloud storage` commands, enabling users to interact with Google Cloud Storage without installing the full Google SDK. It automates tasks such as copying, moving, deleting, listing, and signing URLs for GCS objects, simplifying CI workflows by reducing setup overhead. Key capabilities include compatibility with standard Google Cloud authentication methods and support for shell completion.

## What's Changed

 Improve performance by parallelising with gRPC
  - add --parallelism flag with NumCPU default
  - replace ChunkSize=0 with adaptive resumable chunk sizing
  - switch to gRPC transport for DirectPath and lower overhead
