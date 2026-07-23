---
title: Redis Repo Memory
date: 2026-07-23 15:10:02 +00:00
tags:
  - redis-learn
  - GitHub Actions
draft: false
repo: https://github.com/redis-learn/redis-repo-memory
marketplace: https://github.com/marketplace/actions/redis-repo-memory
version: v1.0.3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Redis Repo Memory is a GitHub Action that automates the process of finding semantically related pull requests, issues, and commits from repository history. By using OpenAI's text-embedding-3-small API to embed the context of each commit or PR, it searches a Redis vector index for similar prior work and posts the results as a comment on pull requests and a status update in push events. The action helps teams stay informed about what has been done before by providing insights into related content across their repository history.
---


Version updated for **https://github.com/redis-learn/redis-repo-memory** to version **v1.0.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/redis-repo-memory) to find the latest changes.

## Action Summary

Redis Repo Memory is a GitHub Action that automates the process of finding semantically related pull requests, issues, and commits from repository history. By using OpenAI's text-embedding-3-small API to embed the context of each commit or PR, it searches a Redis vector index for similar prior work and posts the results as a comment on pull requests and a status update in push events. The action helps teams stay informed about what has been done before by providing insights into related content across their repository history.

## What's Changed

Remove npm caching and bump node-version to `24` 
