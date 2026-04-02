---
title: RepoForge AI
date: 2026-04-02 06:33:58 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/repoforge
marketplace: https://github.com/marketplace/actions/repoforge-ai
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JNZader/repoforge** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoforge-ai) to find the latest changes.

## Action Summary

RepoForge is an AI-powered GitHub Action designed to analyze codebases and automate the generation of technical documentation, AI agent skills, security scans, code graphs, and LLM-ready exports. It streamlines tasks such as creating comprehensive project documentation for various application types, enabling AI integrations, analyzing code dependencies, and improving code quality through advanced scanning capabilities. By automating these workflows, RepoForge reduces manual effort and enhances developer productivity while ensuring compatibility with multiple AI tools and large language models.

## What's Changed

## What's New in v0.5.0

### New Features

- **`diagram` CLI subcommand** — Generate Mermaid diagrams: dependency graphs, directory trees, and call flow visualizations
- **Symbol-level codebase mapping** — AST-based symbol extractor, call graph analysis, and renderer for deep code intelligence
- **Incremental docs generation** — Manifest + git diff based approach to only regenerate changed documentation
- **Dependency health report** — Audit dependency health for Node and Python projects
- **Coverage report unification** — Unified coverage reporting across Cobertura, lcov, coverage.py, and JaCoCo formats
- **`skills-from-docs` command** — Auto-generate SKILL.md files from documentation or URLs
- **`--watch` mode** — Live docs regeneration on file changes
- **`import-docs` command** — Fetch and ingest external dependency documentation
