---
title: aicheck-scan
date: 2026-08-05 14:47:24 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v1.2.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `aicheck`, scans your AI infrastructure to detect unauthenticated services, ensuring security in CI/CD pipelines. It supports multiple deployment options including pip CLI, GitHub Actions, Docker containers, and a web interface. The action automatically checks for AI services without authentication and can fail the build if such services are detected.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v1.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

This GitHub Action, `aicheck`, scans your AI infrastructure to detect unauthenticated services, ensuring security in CI/CD pipelines. It supports multiple deployment options including pip CLI, GitHub Actions, Docker containers, and a web interface. The action automatically checks for AI services without authentication and can fail the build if such services are detected.

## What's Changed

Auth-state granularity: findings (no-auth, graded), observations (auth-present, INFO, never graded), unknown (partial probe coverage, surfaced). Wired for Ollama, vLLM, Jupyter, Ray, Qdrant, Milvus, ComfyUI, Gradio, n8n, Open WebUI. Also: hardened fingerprints (validated against ~1,100 real banners), structured CVE fields, Milvus + Attu checker, drift-honest inventory, schema_version 1, HMAC webhooks. SHA256 sums are appended below by the publish workflow.

## SHA256

```
2f8b50a16b5f1233b26a2b3fffe1d5aa7e4d773831c1e21b9941009a6bf3bbdf  aicheck_scan-1.2.4.tar.gz
3dad337ea530cce33d185c24a74c32227d8d3597f6bdf921dedbca069f739ade  aicheck_scan-1.2.4-py3-none-any.whl
```

