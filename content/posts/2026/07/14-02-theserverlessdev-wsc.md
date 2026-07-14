---
title: Writing Style Checker
date: 2026-07-14 02:37:17 +00:00
tags:
  - theserverlessdev
  - GitHub Actions
draft: false
repo: https://github.com/theserverlessdev/wsc
marketplace: https://github.com/marketplace/actions/writing-style-checker
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  WSC is a GitHub Action designed to automate the detection of AI-generated text patterns, including problematic writing styles such as weasel words, passive voice, duplicate words, long sentences, nominalizations, hedging, filler adverbs, and AI-specific constructs. It offers real-time feedback in a web editor, can be accessed via an API, integrated into MCP servers, run as a CLI, and is available as a GitHub Action. WSC helps improve writing quality by identifying and correcting common issues without relying on authorship proof.
---


Version updated for **https://github.com/theserverlessdev/wsc** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/writing-style-checker) to find the latest changes.

## Action Summary

WSC is a GitHub Action designed to automate the detection of AI-generated text patterns, including problematic writing styles such as weasel words, passive voice, duplicate words, long sentences, nominalizations, hedging, filler adverbs, and AI-specific constructs. It offers real-time feedback in a web editor, can be accessed via an API, integrated into MCP servers, run as a CLI, and is available as a GitHub Action. WSC helps improve writing quality by identifying and correcting common issues without relying on authorship proof.

## What's Changed

- fix(cli,tests): force color via FORCE_COLOR; ANSI test no longer depends on module identity (3240491)
- feat(action): move composite action to repo root for Marketplace listing (558cef7)
- fix(core,web,mcp,cli): strip mask sentinels from aiTells text, correct stale counts, deterministic ANSI test (2d54f33)
- chore(release): wsc-lint 1.3.0, wsc-mcp 2.2.0 (b559496)
- feat(site,docs): AI-tells-first positioning, honest-detection statement, scoped privacy claim, freelance credit line (554b19b)
- fix(docs,meta): correct Action uses: path, drop phantom MCP tool and dead ai-plugin.json, complete npm metadata (573aae9)
- feat(cli): colored output via picocolors, working --no-color, version from package.json, reject unknown formats (0274017)
- feat(web): persisted Markdown-mode toggle in the editor (b597be5)
- feat(api,mcp): markdown-aware analysis on every surface; fix MCP version drift (7e708f5)
- feat(core): Markdown masking moves into analyzeText with sentinel-based inline masking (d1be05c)
