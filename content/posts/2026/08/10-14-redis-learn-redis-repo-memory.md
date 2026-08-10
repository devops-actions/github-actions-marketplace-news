---
title: Redis Repo Memory
date: 2026-08-10 14:26:52 +00:00
tags:
  - redis-learn
  - GitHub Actions
draft: false
repo: https://github.com/redis-learn/redis-repo-memory
marketplace: https://github.com/marketplace/actions/redis-repo-memory
version: v1.0.4
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Redis Repo Memory automates the process of finding semantically related pull requests, issues, and commits in repository history using Redis vector search. It extracts commit or PR context from titles, bodies, and changed files, embeds it with OpenAI's `text-embedding-3-small`, searches a Redis vector index for similar work, and posts results as comments or commit statuses on pull requests and pushes to non-main branches. The action helps teams quickly understand related content before reviewing new changes.
---


Version updated for **https://github.com/redis-learn/redis-repo-memory** to version **v1.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/redis-repo-memory) to find the latest changes.

## Action Summary

Redis Repo Memory automates the process of finding semantically related pull requests, issues, and commits in repository history using Redis vector search. It extracts commit or PR context from titles, bodies, and changed files, embeds it with OpenAI's `text-embedding-3-small`, searches a Redis vector index for similar work, and posts results as comments or commit statuses on pull requests and pushes to non-main branches. The action helps teams quickly understand related content before reviewing new changes.

## What's Changed

Fixes duplicate PR comments. The action now maintains a single comment per PR, updating it in place on every push instead of adding a new one. 
