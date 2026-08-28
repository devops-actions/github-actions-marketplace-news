---
title: N-Plus-One Guardian
date: 2026-08-28 17:40:47 +00:00
tags:
  - whentony
  - GitHub Actions
draft: false
repo: https://github.com/whentony/n-plus-one-guardian
marketplace: https://github.com/marketplace/actions/n-plus-one-guardian
version: 1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The **N-Plus-One Guardian** GitHub Action is designed to analyze and protect Pull Requests against the N+1 database performance issue by detecting and preventing incorrect use of lazy loading or index loss in loops. It supports multiple programming languages, including PHP, TypeScript, JavaScript, and Python, using Tree-sitter for parsing ASTs. The action automatically detects N+1 queries and index loss within loops and comments on PRs to prevent these issues.
---


Version updated for **https://github.com/whentony/n-plus-one-guardian** to version **1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/n-plus-one-guardian) to find the latest changes.

## Action Summary

The **N-Plus-One Guardian** GitHub Action is designed to analyze and protect Pull Requests against the N+1 database performance issue by detecting and preventing incorrect use of lazy loading or index loss in loops. It supports multiple programming languages, including PHP, TypeScript, JavaScript, and Python, using Tree-sitter for parsing ASTs. The action automatically detects N+1 queries and index loss within loops and comments on PRs to prevent these issues.

## What's Changed

Inclusão da  identificação e alertar sobre o uso de conversões de tipo (casts) em consultas de banco de dados, que podem causar a invalidação de índices e resultar em problemas de performance (como full table scans).
