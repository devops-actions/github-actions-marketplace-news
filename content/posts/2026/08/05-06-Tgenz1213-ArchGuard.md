---
title: ArchGuard - Architectural Drift Detector
date: 2026-08-05 06:09:42 +00:00
tags:
  - Tgenz1213
  - GitHub Actions
draft: false
repo: https://github.com/Tgenz1213/ArchGuard
marketplace: https://github.com/marketplace/actions/archguard-architectural-drift-detector
version: v1.5.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  ArchGuard is a tool that uses LLMs to monitor code changes against established architectural decisions (ADRs) and helps prevent "architectural drift". It alerts developers of potential violations in ADRs before they are merged into the repository. ArchGuard supports local analysis using Ollama models or cloud-based services like OpenAI, with a focus on maintaining privacy by keeping all data local unless explicitly configured otherwise.
---


Version updated for **https://github.com/Tgenz1213/ArchGuard** to version **v1.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/archguard-architectural-drift-detector) to find the latest changes.

## Action Summary

ArchGuard is a tool that uses LLMs to monitor code changes against established architectural decisions (ADRs) and helps prevent "architectural drift". It alerts developers of potential violations in ADRs before they are merged into the repository. ArchGuard supports local analysis using Ollama models or cloud-based services like OpenAI, with a focus on maintaining privacy by keeping all data local unless explicitly configured otherwise.

## What's Changed

## Changelog
* 26ac1be4941fb06513e47710363e6193a1a088e2 build(deps): bump github.com/ollama/ollama from 0.32.4 to 0.32.5 (#59)
* f626c10be9870927e57e2182ba43aed984325eb1 build(deps): bump github.com/pgvector/pgvector-go from 0.4.0 to 0.4.1 (#60)
* 4ae73a9a897713e8f743afc579561d920ba3b92b build(deps): bump github.com/pgvector/pgvector-go/pgx (#58)
* 7cecf702f90bfa7438d2537fcb3754ebc3ef9f35 build(deps): bump google.golang.org/genai from 1.65.0 to 1.66.0 (#61)
* 379e47b60dbc3bf45caea2111d29796a2e7700e6 fix(index): enable hnsw.iterative_scan for project-filtered ArchGuard search (#65)
* 804c6a589966b87255a23f76a6e3f1420bba5112 test(index): add HNSW project_name-filter recall/latency benchmark (#44) (#63)


