---
title: GEO Optimizer Audit
date: 2026-04-03 13:46:30 +00:00
tags:
  - Auriti-Labs
  - GitHub Actions
draft: false
repo: https://github.com/Auriti-Labs/geo-optimizer-skill
marketplace: https://github.com/marketplace/actions/geo-optimizer-audit
version: v4.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Auriti-Labs/geo-optimizer-skill** to version **v4.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/geo-optimizer-audit) to find the latest changes.

## Action Summary

GEO Optimizer is a GitHub Action designed to audit, fix, and optimize websites for visibility and citation by AI-powered search engines like ChatGPT, Perplexity, and Claude. It automates tasks such as evaluating website compliance against 47 AI-focused optimization criteria, generating essential files (e.g., robots.txt, llms.txt, schema), and providing actionable recommendations to improve AI discoverability. This tool helps website owners ensure their content is appropriately structured and accessible for AI-driven search engines, addressing the challenge of being overlooked in AI-generated search results.

## What's Changed

5 new citability methods for RAG pipeline optimization. Citability engine now has **47 methods** (was 42).

### New Methods

| Method | Impact | What it detects |
|--------|--------|-----------------|
| **Answer Capsule Detection** | +12% | Self-contained paragraphs (30-120 words) with concrete facts, optimized for RAG chunk extraction |
| **Token Efficiency** | +8% | Content-to-noise ratio for LLM context window optimization |
| **Entity Resolution Friendliness** | +10% | Schema.org typing, sameAs links, first-use definitions for entity disambiguation |
| **Knowledge Graph Density** | +10% | Explicit relationship statements ("X is a Y", "founded by Z") for KG extraction |
| **Retrieval Trigger Patterns** | +10% | RAG retrieval phrases ("research shows", "best practice") + question headings |

### Stats
- 47 citability methods (was 42)
- max_score 208 (was 189, capped at 100)
- 1136 tests passing
- 30 files updated across code, docs, templates, MCP server

### Install
```bash
pip install geo-optimizer-skill==4.1.0
```

**Full Changelog**: https://github.com/Auriti-Labs/geo-optimizer-skill/compare/v4.0.1...v4.1.0
