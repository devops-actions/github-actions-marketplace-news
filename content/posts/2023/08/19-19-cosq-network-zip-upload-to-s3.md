---
title: Zip Upload to S3
date: 2023-08-19 19:00:07 +00:00
tags:
  - cosq-network
  - GitHub Actions
draft: false
repo: cosq-network/zip-upload-to-s3
marketplace: https://github.com/marketplace/actions/zip-upload-to-s3
version: v1
dependentsNumber: '?'
---


Version updated for **cosq-network/zip-upload-to-s3** to version **v1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zip-upload-to-s3) to find the latest changes.

## Release notes

The zip-upload-to-s3 GitHub Action archives files and uploads them to an S3 bucket. It takes four inputs:

inputFiles: The files to archive. Can be a glob pattern, such as *.py.
s3BucketName: The name of the S3 bucket.
zipFileName: The name of the Zip archive to be created.
s3ObjectKey: The S3 object key for the uploaded Zip archive.
The action first archives the files specified by the inputFiles input into a Zip file with the name specified by the zipFileName input. It then uploads the Zip file to the S3 bucket specified by the s3BucketName input with the object key specified by the s3ObjectKey input.
