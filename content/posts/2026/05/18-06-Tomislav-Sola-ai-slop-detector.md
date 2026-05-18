---
title: AI Slop Detector for Pull Requests
date: 2026-05-18 06:33:32 +00:00
tags:
  - Tomislav-Sola
  - GitHub Actions
draft: false
repo: https://github.com/Tomislav-Sola/ai-slop-detector
marketplace: https://github.com/marketplace/actions/ai-slop-detector-for-pull-requests
version: v1.1.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Tomislav-Sola/ai-slop-detector** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-slop-detector-for-pull-requests) to find the latest changes.

## Action Summary

The `ai-slop-detector` GitHub Action is designed to help open-source maintainers identify low-effort, AI-generated pull requests ("slop") by leveraging a LangGraph pipeline with Retrieval-Augmented Generation (RAG). It automates the evaluation of pull requests upon opening or reopening, providing a binary verdict and posting a detailed comment if flagged as slop, thereby streamlining the process of filtering out potentially problematic contributions. Key capabilities include scoring PRs based on AI-generated patterns, identifying vague descriptions, and detecting broad, unfocused changes to the codebase.

## What's Changed

## What's Changed
* fix: v-prefix GHCR image tags so action.yml :v1 resolves by @Tomislav-Sola in https://github.com/Tomislav-Sola/ai-slop-detector/pull/11


**Full Changelog**: https://github.com/Tomislav-Sola/ai-slop-detector/compare/v1.1.0...v1.1.1
