---
title: Docusaurus LLM Docs Generator
date: 2026-01-08 13:20:36 +00:00
tags:
  - osodevops
  - GitHub Actions
draft: false
repo: https://github.com/osodevops/docusaurus-llm-docs
marketplace: https://github.com/marketplace/actions/docusaurus-llm-docs-generator
version: v1.2.2
dependentsNumber: "?"
---


Version updated for **https://github.com/osodevops/docusaurus-llm-docs** to version **v1.2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docusaurus-llm-docs-generator) to find the latest changes.

## Action Summary

The "Docusaurus LLM Docs Generator" GitHub Action automates the creation of documentation optimized for AI assistants and large language models (LLMs) from Docusaurus sites. It generates structured indexes (`llms.txt`), full documentation archives (`llms-full.txt`), and clean markdown files (`markdown.zip`) while injecting LLM-related resources into the site's sidebar. This action simplifies the process of making technical content AI-accessible, eliminating the need for manual formatting and link adjustments.

## Release notes

## Bug Fix

Fixed sidebar injection being overwritten by React hydration.

**The Problem:**
The previous approach injected HTML directly into the static sidebar, but when React hydrated the page on the client side, it replaced the DOM with its own state, removing our injected content.

**The Solution:**
Now we inject a small script that:
1. Waits for React to finish hydrating
2. Adds the LLM Resources section to the sidebar
3. Uses MutationObserver to re-inject on SPA navigation

**Full Changelog**: https://github.com/osodevops/docusaurus-llm-docs/compare/v1.2.1...v1.2.2
