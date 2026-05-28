---
title: rekipedia — AI Codebase Wiki
date: 2026-05-28 06:42:40 +00:00
tags:
  - unrealandychan
  - GitHub Actions
draft: false
repo: https://github.com/unrealandychan/rekipedia
marketplace: https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki
version: py/v0.17.29
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/unrealandychan/rekipedia** to version **py/v0.17.29**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki) to find the latest changes.

## Action Summary

**Rekipedia** is a GitHub Action designed to transform any code repository into an AI-powered knowledge base, complete with features like automated wiki generation, codebase Q&A, and architectural analysis. It streamlines common development challenges, such as onboarding new developers, locating key code components, and reducing refactor risks, by indexing the repository and providing insights like symbol relationships, hotspot detection, and source-backed answers to natural language queries. Additionally, it integrates seamlessly with AI agents via the Model Context Protocol (MCP) to enable intelligent and citation-backed interactions with the codebase.

## What's Changed

## What's Changed
* Feat/golang rewrite by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/12
* rebrand: close-wiki → rekipedia (reki short alias) by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/13
* Fix diagram builder showing "No relationships detected" for all projects by @Copilot in https://github.com/unrealandychan/rekipedia/pull/41
* fix: strip YAML frontmatter before rendering wiki pages and summaries by @Copilot in https://github.com/unrealandychan/rekipedia/pull/42
* fix(rag): route proxy embeddings through litellm `api_base` instead of raw httpx by @Copilot in https://github.com/unrealandychan/rekipedia/pull/57
* fix: embed CLI uses LLM proxy URL for embedding requests by @Copilot in https://github.com/unrealandychan/rekipedia/pull/58
* feat: add `reki refactor` command (Python + Go) by @Copilot in https://github.com/unrealandychan/rekipedia/pull/74
* feat: LLM enrichment for refactoring issues with --no-llm flag by @Copilot in https://github.com/unrealandychan/rekipedia/pull/71
* feat: graph-based static analysis metrics for refactoring detection by @Copilot in https://github.com/unrealandychan/rekipedia/pull/72
* feat: generate REFACTOR.md + refactor_report.json from analysis pipeline by @Copilot in https://github.com/unrealandychan/rekipedia/pull/73
* fix: add Rich progress indicators to reki scan and reki note import by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/100
* fix: algorithm improvements — BM25 IDF, impact edges, parallel tool calls, configurable gap threshold by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/106
* fix: make _score_bm25 idf param optional — restore backward compat for tests by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/107
* Handle invalid onboard DB schema without traceback by @Copilot in https://github.com/unrealandychan/rekipedia/pull/152
* Debugging reki tour command error by @Copilot in https://github.com/unrealandychan/rekipedia/pull/153
* fix: reki domain/impact/affected/search/mcp crash with "No rekipedia DB" after scan by @Copilot in https://github.com/unrealandychan/rekipedia/pull/154
* fix(ask): early API key validation with helpful error (closes #156) by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/161
* fix(diff,storage): filter .rekipedia/ from diff + SqliteStore str path (closes #157, closes #160) by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/162
* docs: --no-llm quick start + multi-provider LLM setup (closes #158, closes #159) by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/163
* feat(ask): --brief flag for minimal token output by @unrealandychan in https://github.com/unrealandychan/rekipedia/pull/168

## New Contributors
* @Copilot made their first contribution in https://github.com/unrealandychan/rekipedia/pull/41

**Full Changelog**: https://github.com/unrealandychan/rekipedia/commits/py/v0.17.29
