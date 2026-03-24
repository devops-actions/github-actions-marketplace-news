---
title: RepoForge AI
date: 2026-03-24 14:01:38 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/repoforge
marketplace: https://github.com/marketplace/actions/repoforge-ai
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JNZader/repoforge** to version **v0.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoforge-ai) to find the latest changes.

## Action Summary

RepoForge is an AI-powered tool designed to analyze codebases and automate the generation of comprehensive technical documentation, AI agent skill files, security scans, dependency graphs, and large language model (LLM)-ready exports. It simplifies the process of creating project-specific documentation and AI integration assets, while also providing features like security analysis, code complexity scoring, and token optimization. By streamlining these tasks, RepoForge enhances productivity and ensures codebases are well-documented, secure, and ready for AI-driven workflows.

## Release notes

## What's New

### Full-Stack Web Application
- **FastAPI backend** with GitHub OAuth, SSE streaming, PostgreSQL, Alembic migrations
- **React 19 frontend** with Vite 6, Tailwind v4, TanStack Query
- Code generation UI with real-time streaming
- Analytics and history tracking
- Docker + docker-compose deployment

### Bug Fixes
- Fixed `__version__` mismatch (was stuck at 0.1.0)
- Fixed health endpoint hardcoded version (now reads dynamically)
- Fixed `--version` CLI crash (wrong package name)
- Fixed `skills --dry-run` calling LLM and writing files
- Added debug logging to 11 bare `except Exception` blocks
- Updated skills workflow to pin current version

### Testing
- **236 new integration tests** (1002 total, up from 766)
- Coverage improved from 83% to 88%
- New test modules: CLI, LLM, docs generator, docsify, scanner, generator

### Infrastructure
- Cloudflare Pages deployment with build script
- Updated base paths for Cloudflare (removed /repoforge/ prefix)

## Stats
- 1002 tests passing
- 88% code coverage
- 55+ commits since v0.3.0
