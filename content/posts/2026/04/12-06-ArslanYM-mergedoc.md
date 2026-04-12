---
title: MergeDoc AI
date: 2026-04-12 06:26:29 +00:00
tags:
  - ArslanYM
  - GitHub Actions
draft: false
repo: https://github.com/ArslanYM/mergedoc
marketplace: https://github.com/marketplace/actions/mergedoc-ai
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/ArslanYM/mergedoc** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergedoc-ai) to find the latest changes.

## Action Summary

MergeDoc is a GitHub Action that automates the generation of categorized and formatted changelog entries by analyzing the code changes in merged pull requests. It uses AI-powered language models to process PR diffs, filter irrelevant files, and update the `CHANGELOG.md` file with release notes, saving developers time and ensuring consistent documentation. This action integrates seamlessly into CI workflows or can run independently on PR merges, streamlining the release process.

## What's Changed

# 🚀 MergeDoc AI v1.2.0

**True plug-and-play changelog generation. No credit card, no complex configuration.**

MergeDoc AI automates your release documentation. Whenever a PR is merged into `main`, it intelligently generates categorized, beautifully formatted release notes from the diff and commits the updated `CHANGELOG.md` directly back to your repository.

---

## ✨ What's New in v1.2.0

- 🔌 **True Plug-and-Play Setup via OpenRouter:** We've introduced [OpenRouter](https://openrouter.ai/) as the default free provider! You can grab a free API key in literally 30 seconds using GitHub OAuth — absolutely zero credit cards required.
- 🪄 **Smart Auto-Routing Models:** By default, OpenRouter uses the `openrouter/auto` endpoint, automatically determining and routing your diff to the best and fastest *available* free model online at that exact millisecond.
- 🕵️ **Smart API Key Auto-Detection:** The `llm_provider` config is now fully optional. Our engine automatically sniffs your API key's prefix and dynamically configures the right provider logic (`sk-or-` = OpenRouter, `sk-ant-` = Anthropic, `sk-` = OpenAI, etc.).
- 🚀 **Marketplace Fixes:** Ensured action name uniqueness ("MergeDoc AI") and patched YAML string interpolation errors to ensure flawless workflow executions globally.

---

## 📦 Core Capabilities

- **🧠 Multi-LLM Freedom:** Drop in a key for OpenRouter (free), Google Gemini (free), Anthropic Claude, or OpenAI GPT.
- **📐 Infinite Diff Handling:** Features token-safe chunking with greedy file packing and map-reduce fallback. Easily digests massive 100+ file Multi-Feature PRs.
- **⚡ Flexible Execution Modes:** 
  - **With CI (`workflow_run`):** Waits for your test suites to pass before summarizing the changes.
  - **Without CI (`pull_request`):** Generates notes immediately upon a PR being merged.
- **📝 Beautiful Output:** Generates rigorously categorized notes (**🚀 Features**, **🐛 Bug Fixes**, **🔧 Chores**) following standard *Keep a Changelog* structure.
- **🪶 Zero SDK Dependencies:** Built natively using raw API `fetch()` logic, yielding a lightning-fast <650 KB execution bundle.

## 🚀 Quick Start Example

*(Works immediately with an OpenRouter key!)*

```yaml
# .github/workflows/release-notes-standalone.yml
name: "📝 Release Notes"
on:
  pull_request:
    types: [closed]
    branches: [main]

jobs:
  generate-release-notes:
    runs-on: ubuntu-latest
    if: github.event.pull_request.merged == true
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
          llm_api_key: ${{ secrets.LLM_API_KEY }}  # Just drop in your sk-or-... key!

