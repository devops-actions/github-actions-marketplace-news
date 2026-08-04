---
title: aicheck-scan
date: 2026-08-04 22:17:24 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v1.2.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `aicheck` GitHub Action automates the detection of AI services with unauthenticated access, providing visibility into potential security risks in a CI/CD pipeline. It supports multiple deployment platforms and offers various ways to integrate it, including as a Docker image, GitHub Action, or standalone command-line tool. The action helps ensure that AI services are securely configured and minimizes exposure by identifying services without authentication mechanisms.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v1.2.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

The `aicheck` GitHub Action automates the detection of AI services with unauthenticated access, providing visibility into potential security risks in a CI/CD pipeline. It supports multiple deployment platforms and offers various ways to integrate it, including as a Docker image, GitHub Action, or standalone command-line tool. The action helps ensure that AI services are securely configured and minimizes exposure by identifying services without authentication mechanisms.

## What's Changed

Drift-honest inventory (unreachable hosts no longer report fixed), probe-coverage surfacing, hardened fingerprints (validated against ~1,100 real Shodan banners, zero cross-FP), structured CVE fields in findings, Milvus + Attu checker, schema_version 1 on inventory output, HMAC-signed webhooks, supply-chain gates (SBOM, image provenance, digest-pinned base). SHA256 sums of the distributions are appended below by the publish workflow.

## SHA256

```
e7bf39779533902ccab8b2109b1c4ac83a59f8cf5ad2086e02a1c479c0f75088  aicheck_scan-1.2.3-py3-none-any.whl
1315bf900dad60619027088d8c07b1208c63926114ea48ba9d0b2db1a7ebafe1  aicheck_scan-1.2.3.tar.gz
```

