---
title: PruneTest
date: 2026-04-07 06:17:01 +00:00
tags:
  - cjlee1
  - GitHub Actions
draft: false
repo: https://github.com/cjlee1/PruneTest
marketplace: https://github.com/marketplace/actions/prunetest
version: 0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/cjlee1/PruneTest** to version **0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prunetest) to find the latest changes.

## Action Summary

PruneTest is a GitHub Action that optimizes continuous integration (CI) workflows by intelligently selecting and running only the tests relevant to code changes in pull requests. Using a multi-layered approach combining static analysis, semantic embeddings, machine learning, and optional LLM reasoning, it identifies tests likely to be impacted by a code diff, reducing unnecessary test executions. This action streamlines CI pipelines, saves computational resources, and improves testing efficiency without blocking workflows.

## What's Changed

Initial release of PruneTest — ML-backed CI test selection for GitHub Actions.

Runs only the tests that matter for your diff using a four-layer hybrid system:
- Static import graph analysis (tree-sitter)
- Semantic embeddings (Voyage-Code-3)
- GBDT ML model (activates after 100 runs)
- LLM reasoning layer (fires only on ambiguous cases)

Supports TypeScript, JavaScript, Python, Ruby, and Go. Ships in shadow mode by default — observes before skipping anything.

