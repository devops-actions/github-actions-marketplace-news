---
title: Setup MinIO client
date: 2024-03-25 11:21:54 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/setup-minio-cli
marketplace: https://github.com/marketplace/actions/setup-minio-client
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/setup-minio-cli** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-minio-client) to find the latest changes.

## Release notes

# Setup MinIO client

[![Coverage](./badges/coverage.svg)](./badges/coverage.svg)
[![Test `setup-minio-cli` action](https://github.com/yakubique/setup-minio-cli/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/setup-minio-cli/actions/workflows/test-myself.yaml)


Sets up [MinIO client](https://min.io/docs/minio/linux/reference/minio-mc.html#install-mc) (And it caches it, too!)

[Usage workflow](https://github.com/yakubique/setup-minio-cli/actions/workflows/test-myself.yaml)


## Usage
```yaml
- name: Setup MinIO client
  uses: yakubique/setup-minio-cli@v1
- name: Test MinIO client
  run: |
    mc --help

```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED |                           DEFAULT                            |                                                 DESCRIPTION                                                 |
|-----------|--------|----------|--------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|  mc_url   | string |  false   | `"https://dl.min.io/client/mc/release/{platform}-{arch}/mc"` |                                           URL to obtain `mc` from                                           |
| use_cache | string |  false   |                           `"true"`                           | MC doesn't have `real` versions, you <br>can pass `use_cache=false` to fetch latest <br>version every time  |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

