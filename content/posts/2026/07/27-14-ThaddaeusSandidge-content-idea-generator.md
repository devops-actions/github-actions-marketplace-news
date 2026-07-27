---
title: Content Idea Generator
date: 2026-07-27 14:52:33 +00:00
tags:
  - ThaddaeusSandidge
  - GitHub Actions
draft: false
repo: https://github.com/ThaddaeusSandidge/content-idea-generator
marketplace: https://github.com/marketplace/actions/content-idea-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Content Idea Generator GitHub Action gathers content signals from various sources, including Hacker News, GitHub, Reddit, and recent commits, and automates the creation of creator-ready content ideas as GitHub Issues. The action uses OpenAI's API to process the gathered data and is designed to be run on GitHub Actions without any server or database dependencies.
---


Version updated for **https://github.com/ThaddaeusSandidge/content-idea-generator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/content-idea-generator) to find the latest changes.

## Action Summary

The Content Idea Generator GitHub Action gathers content signals from various sources, including Hacker News, GitHub, Reddit, and recent commits, and automates the creation of creator-ready content ideas as GitHub Issues. The action uses OpenAI's API to process the gathered data and is designed to be run on GitHub Actions without any server or database dependencies.

## What's Changed

The first stable release of Content Idea Generator: a zero-infrastructure GitHub Action that turns current web and repository signals into a dated GitHub Issue full of creator-ready ideas.

## Highlights

- Collects signals from Hacker News, GitHub new-and-rising repositories, weekly Reddit Atom feeds, and recent repository commits.
- Uses the OpenAI Responses API with a validated structured-output contract.
- Creates one GitHub Issue per run with configurable, checkbox-formatted ideas.
- Supports scheduled and manual workflows with bring-your-own OpenAI API keys.
- Isolates individual source failures while failing clearly when no enabled source returns usable data.
- Bundles the complete Node.js action in `dist/` for Marketplace use.

## Reliability and security

- Fetches Reddit feeds sequentially, spaces requests, and retries HTTP 429 responses once using `Retry-After` when available.
- Masks the OpenAI key and never logs it.
- Treats gathered web and commit text as untrusted reference data.
- Verifies tests, TypeScript, and the committed bundle in CI.

## Install

Reference `ThaddaeusSandidge/content-idea-generator@v1` in a workflow, grant `contents: read` and `issues: write`, and provide an `OPENAI_API_KEY` repository secret. See the README for the complete copy-paste setup.

**Full Changelog:** https://github.com/ThaddaeusSandidge/content-idea-generator/commits/v1.0.0
