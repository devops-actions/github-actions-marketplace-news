---
title: PRSense - Repository Memory Infrastructure
date: 2026-03-09 13:35:25 +00:00
tags:
  - prsense-labs
  - GitHub Actions
draft: false
repo: https://github.com/prsense-labs/prsense
marketplace: https://github.com/marketplace/actions/prsense-repository-memory-infrastructure
version: v1.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/prsense-labs/prsense** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prsense-repository-memory-infrastructure) to find the latest changes.

## Action Summary

PRSense is a GitHub Action designed to create a "repository memory" by indexing pull requests, issues, and decisions for long-term recall. It automates tasks such as semantic search for historical context, duplicate detection, and cross-repository analysis, helping teams streamline workflows and avoid redundant work. Key features include AI-driven PR descriptions, stale PR detection, explainable scoring, and support for multiple platforms like GitHub, GitLab, and Bitbucket.

## Release notes

### Added
- **Custom Rules Engine**: Programmable checks running locally without LLMs to block or warn on PRs automatically.
- **Provider Abstraction**: Extracted GitHub logic and added full support for GitLab and Bitbucket.
- **Knowledge Graph**: Ingests files and authors over time, building an explorable relationship graph to query the history of files and authors.
- **AI-Powered PR Descriptions**: Generates descriptions programmatically by fetching contextually similar historical PRs locally via embeddings.
- **Stale PR Detection**: Flags old and inactive PRs based on customizable thresholds and suggests actions (close, merge, ping reviewers).
- **Smart Triage & Auto-Labeling**: Classifies PRs into categories with confidence scores and suggests reviewers.
- **Impact Scoring**: Calculates a PR risk score (0-100) based on blast radius and author experience.
- **Notification System**: Real-time alerts to Slack and Discord for duplicates, high-risk PRs, and rule violations.
- **Zero-Click AI Descriptions**: Auto-generates descriptions for empty PRs via webhook seamlessly.
- **Express API Endpoint Expansion**: Added `/api/rules/evaluate`, `/api/graph/query`, `/api/graph/history`, `/api/describe`, and `/api/stale`.
### Changed / Fixed
- **Infra (ESM Support)**: Added `exports` map to `package.json` for proper `./server` and `./bot` submodule resolution.
- **Infra (Dependencies)**: Moved heavy dependencies (`express`, `cors`, `@actions/*`) to optional `peerDependencies` to drastically reduce package size for library consumers.
- **Infra (Publishing)**: Created an exhaustive `.npmignore` to prevent source files, tests, and configuration from shipping to npm.
- **Infra (Config)**: Removed unnecessary React JSX configuration from `tsconfig.json`.
