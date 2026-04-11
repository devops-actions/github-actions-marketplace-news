---
title: MergeDoc AI
date: 2026-04-11 21:46:43 +00:00
tags:
  - ArslanYM
  - GitHub Actions
draft: false
repo: https://github.com/ArslanYM/mergedoc
marketplace: https://github.com/marketplace/actions/mergedoc-ai
version: v0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/ArslanYM/mergedoc** to version **v0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergedoc-ai) to find the latest changes.

## Action Summary

MergeDoc is a GitHub Action that automates the generation of categorized and beautifully formatted changelog entries from pull request (PR) diffs using AI-powered large language models (LLMs). It streamlines release documentation by analyzing merged PRs, filtering diffs, and automatically updating the `CHANGELOG.md` file, saving developers time and ensuring consistent release notes. This action is particularly useful for teams looking to simplify release management and maintain clear project documentation.

## What's Changed

# 🚀 MergeDoc AI v1.0.0

**AI-powered changelog generation from merged PR diffs — free by default.**

MergeDoc AI automatically generates categorized, beautifully formatted release notes whenever a PR is merged into `main`, and commits the updated `CHANGELOG.md` back to your repository.

---

## ✨ Highlights

- **🆓 Free by default** — Ships with Google Gemini (gemini-2.0-flash) as the default provider. No credit card required — just grab a free key from [aistudio.google.com/apikey](https://aistudio.google.com/apikey)
- **🤖 Triple LLM support** — Choose between Gemini (free), Anthropic Claude, or OpenAI GPT
- **📐 Smart diff handling** — Token-safe chunking with greedy file packing and map-reduce fallback for massive PRs
- **⚡ Post-CI execution** — `workflow_run` trigger ensures release notes are only generated after CI passes
- **📝 Beautiful output** — Categorized notes (Features, Fixes, Chores) following Keep a Changelog conventions

## 📦 What's Inside

### Core Pipeline
- 8-step orchestration: config → PR discovery → diff fetch → filter → chunk → LLM → changelog → commit
- Zero SDK dependencies for LLM calls — all providers use raw `fetch()` (613 KB total bundle)
- Priority-ranked file filtering (source code first, auto-excludes lockfiles/binaries/generated)
- Git commit via `github-actions[bot]` with `[skip ci]` to prevent infinite loops

### LLM Providers
| Provider | Model | Cost |
|----------|-------|------|
| **Google Gemini** (default) | `gemini-2.0-flash` | ✅ Free |
| Anthropic | `claude-sonnet-4-20250514` | Paid |
| OpenAI | `gpt-4o` | Paid |

### Trigger Architecture
Uses `workflow_run` chaining — fires **only after** your CI pipeline passes on the merge commit. No more release notes for broken builds.

## 🚀 Quick Start

```yaml
# .github/workflows/release-notes.yml
name: "📝 Release Notes"
on:
  workflow_run:
    workflows: ["CI"]
    types: [completed]
    branches: [main]

jobs:
  generate-release-notes:
    runs-on: ubuntu-latest
    if: >-
      github.event.workflow_run.conclusion == 'success' &&
      github.event.workflow_run.event == 'push'
    permissions:
      contents: write
      pull-requests: read
    steps:
      - uses: actions/checkout@v4
        with:
          ref: main
          fetch-depth: 0
      - uses: ArslanYM/mergedoc@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          llm_api_key: ${{ secrets.LLM_API_KEY }}

