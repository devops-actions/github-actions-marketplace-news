---
title: Google Cloud Storage Bucket Sync (GCP,GCS)
date: 2023-10-29 03:17:05 +00:00
tags:
  - patrickwyler
  - GitHub Actions
draft: false
repo: patrickwyler/gcs-bucket-sync-action
marketplace: https://github.com/marketplace/actions/google-cloud-storage-bucket-sync-gcp-gcs
version: 1.4
dependentsNumber: "20"
---


Version updated for **patrickwyler/gcs-bucket-sync-action** to version **1.4**.
- This action is used across all versions by **20** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/google-cloud-storage-bucket-sync-gcp-gcs) to find the latest changes.

## Release notes

- New optional input parameters `sync_dir_from` and `sync_dir_to`, which will make it possible to sync a specified directory from your repository to a specified directory to your bucket (thanks @maxletourneur)

If you used the `sync_dir` parameter before you will need to change it to `sync_dir_from` + `sync_dir_to`.
