---
title: ArchGuard - Architectural Drift Detector
date: 2026-07-21 14:55:27 +00:00
tags:
  - Tgenz1213
  - GitHub Actions
draft: false
repo: https://github.com/Tgenz1213/ArchGuard
marketplace: https://github.com/marketplace/actions/archguard-architectural-drift-detector
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  ArchGuard is a tool that uses LLMs to detect architectural drift in code changes by comparing them against established Architectural Decision Records (ADRs). It helps prevent "architectural drift" by ensuring code adheres to the rules defined in ADRs. ArchGuard supports local analysis without sending sensitive data over the internet and can be configured via a YAML file for detailed settings.
---


Version updated for **https://github.com/Tgenz1213/ArchGuard** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/archguard-architectural-drift-detector) to find the latest changes.

## Action Summary

ArchGuard is a tool that uses LLMs to detect architectural drift in code changes by comparing them against established Architectural Decision Records (ADRs). It helps prevent "architectural drift" by ensuring code adheres to the rules defined in ADRs. ArchGuard supports local analysis without sending sensitive data over the internet and can be configured via a YAML file for detailed settings.

## What's Changed

## Changelog
* dc7d7d97a225caa1dec90e418aeb0f91d59de63d build(deps): bump actions/setup-go from 6 to 7 (#31)
* c5acd680540a65e471b00e9a5f367b0c6ef00622 build(deps): bump google.golang.org/grpc (#34)
* a14af512df4af5442d0b905fc1f83095d9ced04e fix: use doublestar for recursive glob exclusion, fixing **/*_test.go depth bug (#25)
* 8ab6fa7eb2c89655aaca1de5e2b2743a70f34f9c refactor: replace hand-rolled worker pools with errgroup (#26)
* d04f88e6d4be27814880e3cb76f167131845fd72 refactor: use cenkalti/backoff for AnalyzeDrift retry loop (#27)
* 94a8337c5281ca925ca4cc51d22dccd0f085b62c refactor: use godotenv for .env loading (#28)
* 2d6fe5a3160b7b14431a356060bb9f4f6abaafab refactor: use goquery for Confluence HTML text extraction (#33)
* cf7c66051636357e6a113bae37c8be9854b1e0da refactor: use official google.golang.org/genai SDK for GeminiProvider (#30)
* f436a4e673a2883605c91bd6370238ba61a93f25 refactor: use official ollama/ollama api client for OllamaProvider (#32)
* dffc3859347e84703c4a5754794803f2a7b2b309 refactor: use official openai-go SDK for OpenAIProvider (#29)


