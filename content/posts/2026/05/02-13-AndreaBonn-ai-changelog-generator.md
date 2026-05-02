---
title: AI Changelog Generator by Bonn
date: 2026-05-02 13:40:56 +00:00
tags:
  - AndreaBonn
  - GitHub Actions
draft: false
repo: https://github.com/AndreaBonn/ai-changelog-generator
marketplace: https://github.com/marketplace/actions/ai-changelog-generator-by-bonn
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/AndreaBonn/ai-changelog-generator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-generator-by-bonn) to find the latest changes.

## Action Summary

The **AI Changelog Generator** GitHub Action automates the creation of structured changelogs during release publishing by fetching commits and merged pull requests between tags, classifying changes based on conventional commit conventions, and generating a Markdown changelog using a language model (LLM). It solves the problem of manual changelog creation by automating the process, ensuring consistent and human-readable outputs. Key features include multi-language support, integration with multiple LLM providers, a fail-safe self-evaluation loop, and optional updates to a `CHANGELOG.md` file.

## What's Changed

Stop writing changelogs manually. AI Changelog Generator turns your GitHub releases into polished, structured changelogs  automatically. Just publish a release, and this Action does the  rest.

  **What it does**

  When you create a release, the Action:
  1. Fetches all commits and merged PRs since the previous tag
  2. Classifies them (breaking changes, features, fixes, docs, maintenance...)
  3. Sends the data to an LLM that writes a clean, human-readable changelog
  4. Publishes it as the release body — done

**Why use it**

  - Zero config to start — add 5 lines of YAML to your workflow, get a changelog
  - Free to run — works with Groq and Gemini free tiers, no LLM costs
  - 4 LLM providers with automatic fallback (Groq, Gemini, Anthropic, OpenAI)
  - Self-evaluation — the LLM reviews its own output for hallucinations and missing breaking changes
  - 5 languages — English, Italian, French, Spanish, German
  - Fail-safe — if anything goes wrong, your release still publishes normally

  **Quick start**

  - uses: AndreaBonn/ai-changelog-generator@v1
    with:
      github_token: ${{ secrets.GITHUB_TOKEN }}
      llm_api_key: ${{ secrets.LLM_API_KEY }}

That's it. Get a free API key from Groq, add it as a repository secret, and you're done.

Made by  @AndreaBonn
