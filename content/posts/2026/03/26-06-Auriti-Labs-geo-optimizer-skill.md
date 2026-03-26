---
title: GEO Optimizer Audit
date: 2026-03-26 06:14:44 +00:00
tags:
  - Auriti-Labs
  - GitHub Actions
draft: false
repo: https://github.com/Auriti-Labs/geo-optimizer-skill
marketplace: https://github.com/marketplace/actions/geo-optimizer-audit
version: v3.15.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Auriti-Labs/geo-optimizer-skill** to version **v3.15.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/geo-optimizer-audit) to find the latest changes.

## Action Summary

The **Geo Optimizer** GitHub Action helps websites improve their visibility and citation in AI-driven search engines like ChatGPT, Perplexity, Claude, and Gemini by optimizing content to align with AI citation methods. It automates tasks such as auditing AI-readiness, fixing visibility issues, integrating AI context files, and generating structured data (e.g., JSON-LD schemas). This toolkit addresses the challenge of ensuring websites are properly recognized and cited by AI systems, leveraging research-backed methods for increased AI discoverability and relevance.

## Release notes

## What's New

### Citability Engine: 30 Methods (was 18)

**Batch 2 — Quality Signals (7 new):**
- Attribution Completeness, Negative Signals Detection, Comparison Content
- E-E-A-T Composite, Content Decay, Boilerplate Ratio, Nuance Signals

**Batch 3+4 — Specialized (8 new):**
- Snippet-Ready Content, Chunk Quotability, Blog Structure
- AI Shopping Readiness, ChatGPT Shopping Feed Check
- E-commerce GEO Profile, llms.txt Policy Intelligence, Machine-Readable Presence

### Infrastructure
- `LlmsTxtResult` now includes `sections_count` and `links_count`
- `SchemaResult` now includes `ecommerce_signals` for Product schema analysis
- RSS feed recommendation in audit recommendations

**760 tests passing** | **30 citability methods** | **24 AI bots tracked**
