---
title: Skill Seekers - AI Knowledge Builder
date: 2026-03-18 06:03:50 +00:00
tags:
  - yusufkaraaslan
  - GitHub Actions
draft: false
repo: https://github.com/yusufkaraaslan/skill-seekers-action
marketplace: https://github.com/marketplace/actions/skill-seekers-ai-knowledge-builder
version: v3.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yusufkaraaslan/skill-seekers-action** to version **v3.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-seekers-ai-knowledge-builder) to find the latest changes.

## Action Summary

The Skill Seekers GitHub Action automates the conversion of various content types, such as documentation, GitHub repositories, PDFs, and videos, into AI-ready skills and retrieval-augmented generation (RAG) knowledge assets within a CI/CD pipeline. It simplifies the process of preparing content for use with AI tools and platforms like OpenAI, LangChain, and Claude, enabling seamless integration and knowledge extraction. Key capabilities include support for 17+ source types, multi-format output generation, and flexible configuration for custom workflows.

## Release notes

## Skill Seekers GitHub Action
Transform documentation, GitHub repos, PDFs, videos, and 13 other source types into AI-ready skills and RAG knowledge — directly in your CI/CD pipeline.
### Quick Start
```yaml
- uses: yusufkaraaslan/skill-seekers-action@v3
  with:
    source: 'https://react.dev'
Features
- 17 source types: docs, GitHub, PDF, video, Jupyter, OpenAPI, Word, EPUB, PowerPoint, AsciiDoc, HTML, RSS, man pages, Confluence, Notion, Slack/Discord
- 16+ target platforms: Claude, OpenAI, Gemini, LangChain, LlamaIndex, Haystack, Cursor, Windsurf, and more
- Auto-detection: Source type is detected automatically from the input
- Configurable: 6 inputs for full control, 2 outputs for downstream steps
 
Inputs
Input		Required	Default		Description
source		Yes			—			Source URL, file path, or owner/repo
command 	No			create		Command to run
target		No			claude		Target platform
config		No			—			Path to JSON config
output-dir	No			output		Output directory
extra-args	No			—			Additional CLI args

