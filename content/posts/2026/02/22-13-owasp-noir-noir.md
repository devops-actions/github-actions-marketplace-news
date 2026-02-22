---
title: OWASP Noir Action
date: 2026-02-22 13:24:06 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v0.28.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/owasp-noir/noir** to version **v0.28.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

OWASP Noir is a security-focused tool that analyzes source code to generate a comprehensive inventory of application endpoints, including hidden routes, shadow APIs, and deprecated endpoints. By bridging static (SAST) and dynamic (DAST) testing, it eliminates blind spots in security scans, automates attack surface discovery, and integrates seamlessly into DevSecOps pipelines. Its AI-powered capabilities support multiple languages and frameworks, providing actionable insights to enhance application security.

## Release notes

## What's Changed
### New Features
- AI Agent Mode (@hahwul, @ksg97031)
- ACP (Agent Client Protocol) integration (@hahwul)
- CakePHP & Goyave detector + analyzer (@chei-l)

**AI Agent Mode**  
Iterative tool-calling AI workflow for deeper, autonomous endpoint discovery (uses tools like list_directory, read_file, grep, semantic_search).

**Example:**
```bash
noir -b ./myapp --ai-agent
```

**ACP (Agent Client Protocol)**  
With ACP integration, you can analyze using locally configured AI Agents even without API keys for AI Providers (local agent handles authentication).

**Example:**
```bash
noir -b ./myapp --ai-provider=acp:codex
```

### Improvements
- Cross-file Express.js router support (@fabiencheret)
- Enhanced analyzers: Kotlin Spring (static paths/body) (@chei-l), Flask (shortcut decorators/MethodView/async) (@fabiencheret), Tornado (cross-file handlers) (@fabiencheret), Chi (Group scope) (@fabiencheret)
- Detector performance optimization (Rocket, Kemal)  
- Endpoint deduplication improved to O(N)  
- Minimum Crystal version raised to 1.19 + CI updates  

### Bug Fixes
- Missing route patterns in JS/Express extractor (@fabiencheret)
- Flask & Tornado route parser fixes (@fabiencheret)

## New Contributors
* @fabiencheret made their first contribution in https://github.com/owasp-noir/noir/pull/1000

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v0.27.1...v0.28.0
