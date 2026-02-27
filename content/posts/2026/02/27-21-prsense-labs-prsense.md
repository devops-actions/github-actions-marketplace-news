---
title: PRSense - Repository Memory Infrastructure
date: 2026-02-27 21:26:17 +00:00
tags:
  - prsense-labs
  - GitHub Actions
draft: false
repo: https://github.com/prsense-labs/prsense
marketplace: https://github.com/marketplace/actions/prsense-repository-memory-infrastructure
version: v1.0.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/prsense-labs/prsense** to version **v1.0.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prsense-repository-memory-infrastructure) to find the latest changes.

## Action Summary

PRSense is a GitHub Action designed to provide a "Repository Memory" infrastructure by indexing pull requests, issues, and decisions for long-term recall. It enables semantic search, duplicate detection, and cross-repository comparison, helping engineering teams access historical context, avoid redundant work, and track attribution. The tool is optimized for performance with features such as vector-based semantic embeddings, batch processing, and configurable scoring, offering a cost-effective solution for managing repository intelligence in CI/CD workflows.

## Release notes


### What's New
The pivot from "duplicate detection tool" to **Repository Memory Infrastructure** is complete.

### Core Features
- ✅ **Multi-Signal Detection** — Text + Diff + File similarity with configurable weights
- ✅ **Bloom Filter** — Sub-millisecond rejection of unique items  
- ✅ **ONNX Embeddings** — 100% offline, zero API cost, privacy-first
- ✅ **Cross-Repo Detection** — Find duplicates across your entire org
- ✅ **Batch API** — Check 100s of PRs in CI/CD pipelines
- ✅ **Embedding Cache** — 90% API cost reduction
- ✅ **Score Breakdown** — Explainable results with multi-signal scores
- ✅ **Dry-Run Mode** — Test without indexing

### Storage
- SQLite (development) 
- PostgreSQL + pgvector (production)

### Integrations
- GitHub Action (`prsense-labs/prsense@v1`)
- CLI Tool (`npx prsense check`)
- VS Code Extension
- REST API / Microservice
- Node.js Library

### Stats
- **127 tests passing** across 9 test suites
- **108 kB** package size
- Node.js ≥18.0.0

### Install
```bash
npm install prsense

