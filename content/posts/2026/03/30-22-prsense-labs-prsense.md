---
title: PRSense - Repository Memory Infrastructure
date: 2026-03-30 22:19:23 +00:00
tags:
  - prsense-labs
  - GitHub Actions
draft: false
repo: https://github.com/prsense-labs/prsense
marketplace: https://github.com/marketplace/actions/prsense-repository-memory-infrastructure
version: v2.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/prsense-labs/prsense** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prsense-repository-memory-infrastructure) to find the latest changes.

## Action Summary

PRSense is a GitHub Action designed to streamline engineering workflows by leveraging organizational knowledge graphs and cross-repository intelligence. It automates tasks such as preventing duplicate engineering work, assessing developer expertise, and triaging high-risk code changes, enabling teams to optimize efficiency and reduce redundancy. Key capabilities include semantic search, risk scoring, duplicate detection across repositories, and auto-generated insights for pull requests and organizational knowledge management.

## What's Changed


**PRSense .** Following our vision to become the ultimate "Repository Memory Infrastructure," version 2.0.0 transforms the library into a truly provider-agnostic infrastructure layer. 

### 🔥 Major Highlights

- **Full GitLab & Bitbucket Integration**: We've expanded far beyond GitHub. PRSense now natively supports webhooks, MR/PR extraction, and automated pull request commenting across GitLab and Bitbucket infrastructures.
- **Cross-Repo Detection**: You can now detect duplicate PRs and overlapping work across an entire organization's repositories simultaneously.
- **Advanced Notification Engine**: Real-time notification dispatching to Slack and Discord for high-risk or duplicate PRs.

### 🛠 Core Additions
- **GitLab & Bitbucket Providers**: Full support for fetching PRs/MRs and posting comments via GitLab REST API v4 and Bitbucket Cloud API v2.
- **Cross-Repo Radar**: Organization-wide duplicate detection using DJB2 hash-based namespacing.
- **Zero-Click Descriptions Engine**: Upgraded the internal `DescriptionGenerator` to intelligently rely on Ollama/OpenAI for self-writing PR metadata directly on your Git provider.
- **Performance Optimized Graphs**: RAG knowledge graph duplicate edge detection upgraded from O(n) array lookups to O(1) Map indexing for instant response times.
- **Enhanced Duplicate Candidates**: `findCandidates()` now uses both text and diff embeddings concurrently for more accurate candidate retrieval.

### 🧹 Changes & Fixes
- **ESM Startup**: Fixed `require()` runtime crashes in the self-hosted Express server.
- **Type Safety**: Moved `files` natively into the `PRMetadata` interface, removing fragile module augmentation hacks.
- **Build**: Excluded the `action/` folder from the main TypeScript build to keep the npm footprint small.

### ⚠️ Breaking Changes
- **Minimum Node.js**: Remains `>=18.0.0`, but Node `v20+` is now strictly recommended for native `fetch()` support used by the new GitLab/Bitbucket provider services.

### 📦 Installation
To upgrade your Node.js environments:
```bash
npm install prsense@latest
# or to run the updated CLI
npx prsense run

