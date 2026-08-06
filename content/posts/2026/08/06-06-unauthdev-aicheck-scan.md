---
title: aicheck-scan
date: 2026-08-06 06:15:36 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v1.2.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `aicheck-scan` GitHub Action automates the detection of unauthenticated AI services in your environment. It provides a continuous inventory and performs live probes to identify exposed AI services in CI builds or across an estate. The action supports multiple deployment methods, including pip CLI, GitHub Actions, Docker containers, and a web-based scanner.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v1.2.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

The `aicheck-scan` GitHub Action automates the detection of unauthenticated AI services in your environment. It provides a continuous inventory and performs live probes to identify exposed AI services in CI builds or across an estate. The action supports multiple deployment methods, including pip CLI, GitHub Actions, Docker containers, and a web-based scanner.

## What's Changed

Two ways to find shadow AI, one engine:

**Passive**: `aicheck inventory --flow-logs vpc.log.gz` — turn AWS VPC Flow Logs (text/gz) or JSONL into an AI-service inventory offline. Port attribution with data-plane/management roles, flow-shape corroboration vs scanner noise, 'already internet-scanned' flags from Censys/Shodan ranges, zero packets sent. `--verify` upgrades flow-attributed rows with a Class A sweep.

**Class B pack #1**: `--deep --deep-packs data-plane --i-own-these-targets` — zero-byte TCP connect to Milvus :19530 / Qdrant :6334 / Weaviate :50051. Finding only on conjunction (Class A fingerprint AND data-plane accept); honest evidence: reachable, not data-accessible.

Also: drift-honest inventory, auth-state observations (1.2.4), Milvus + Attu checker, structured CVEs, schema_version 1, HMAC webhooks. SHA256 sums are appended below by the publish workflow.

## SHA256

```
7975a758ed0612745ad8d70383aa05319c57d60805a4eccbe35c132132d039d1  aicheck_scan-1.2.5-py3-none-any.whl
cfc50f337524b402720d68b272f6f9f32eb436b51cead3c13e5c7c7a670bd5b6  aicheck_scan-1.2.5.tar.gz
```

