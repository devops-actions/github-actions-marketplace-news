---
title: Setup Nextflow
date: 2023-10-26 11:17:07 +00:00
tags:
  - nf-core
  - GitHub Actions
draft: false
repo: nf-core/setup-nextflow
marketplace: https://github.com/marketplace/actions/setup-nextflow
version: v1.4.0
dependentsNumber: "11"
---


Version updated for **nf-core/setup-nextflow** to version **v1.4.0**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nextflow) to find the latest changes.

## Release notes

## Changed

- If `fs.renameSync` fails (e.g. because source and destination files are on different partitions), try `fs.copySync` and `fs.unlinkSync` instead (#14).
- Fail instead of warn, when `nextflow help`` doesn't work (#23).

## Fixed

- Re-enable npm run test in CI (#15).
- Fix release version check in unit test (#15).
- Add helper function for checking the latest releases in the unit tests (#15).
