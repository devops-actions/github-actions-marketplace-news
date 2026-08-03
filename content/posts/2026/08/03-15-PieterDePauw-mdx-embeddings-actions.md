---
title: mdx-embeddings-actions
date: 2026-08-03 15:10:35 +00:00
tags:
  - PieterDePauw
  - GitHub Actions
draft: false
repo: https://github.com/PieterDePauw/mdx-embeddings-actions
marketplace: https://github.com/marketplace/actions/mdx-embeddings-actions
version: v0.0.11
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action converts markdown files into embeddings and stores them in a Postgres/Supabase database, allowing for vector similarity search within documentation. It integrates with OpenAI's API to generate embeddings and uses Supabase as the storage backend for efficient retrieval. The action is designed to be used alongside the `headless-vector-search` repository for comprehensive documentation search capabilities.
---


Version updated for **https://github.com/PieterDePauw/mdx-embeddings-actions** to version **v0.0.11**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mdx-embeddings-actions) to find the latest changes.

## Action Summary

This GitHub Action converts markdown files into embeddings and stores them in a Postgres/Supabase database, allowing for vector similarity search within documentation. It integrates with OpenAI's API to generate embeddings and uses Supabase as the storage backend for efficient retrieval. The action is designed to be used alongside the `headless-vector-search` repository for comprehensive documentation search capabilities.

## What's Changed

- TOTAL OVERHAUL (2cd1eba)
- Refactor processMdxForSearch function for improved code readability and performance (b002cf3)
- Refactor parsePaths function to improve code clarity and consistency (d3aa6c6)
- Add /dist files (15b298a)
- Refactor generateEmbeddings function for improved code readability and removal of unused code (2069271)
- Refactor generateEmbeddings function for improved code readability and removal of unused code (3d4485e)
- Refactor generateEmbeddings function to improve code readability and remove unused code (dffc3cb)
- Refactor generateEmbeddings function to improve code readability and remove unused code (9bc0822)
- chore: Update pages table schema to reference parent_page_id column (59d1dc9)
- chore: Update package.json to include release script (86e6b5f)
