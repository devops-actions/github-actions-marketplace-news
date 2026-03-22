---
title: GHAGGA Code Review
date: 2026-03-22 06:04:42 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v2.6.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/JNZader/ghagga** to version **v2.6.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is an AI-powered code review tool designed to automate pull request reviews by combining large language model (LLM) analysis, static code analysis (using 16 tools), and project memory that learns from previous reviews. It identifies issues, provides structured feedback with severity and suggestions, and supports multiple integration modes (self-hosted, GitHub Action, CLI). GHAGGA streamlines code review processes, enhances code quality, and improves collaboration by automating in-depth analysis and applying project-specific insights.

## Release notes

Fix: npm global install

Problem: npm install -g ghagga failed with Unsupported URL Type workspace

Solution:
- Published ghagga-core@2.6.0 and ghagga-db@2.6.0 to npm
- Changed CLI dependency from workspace to ^2.6.0
- CLI bumped to v2.6.1

Now works: npm install -g ghagga
