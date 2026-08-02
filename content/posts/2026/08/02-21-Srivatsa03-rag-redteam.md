---
title: rag-redteam
date: 2026-08-02 21:12:17 +00:00
tags:
  - Srivatsa03
  - GitHub Actions
draft: false
repo: https://github.com/Srivatsa03/rag-redteam
marketplace: https://github.com/marketplace/actions/rag-redteam
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `rag-redteam` is a GitHub Action designed to red-team RAG pipelines by testing them against common vulnerabilities like indirect prompt injection, context leakage, and tool use injection. It automates the process of identifying potential security flaws in the retrieval pipeline without relying solely on general LLM scanners or model-level probing tools.
---


Version updated for **https://github.com/Srivatsa03/rag-redteam** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rag-redteam) to find the latest changes.

## Action Summary

`rag-redteam` is a GitHub Action designed to red-team RAG pipelines by testing them against common vulnerabilities like indirect prompt injection, context leakage, and tool use injection. It automates the process of identifying potential security flaws in the retrieval pipeline without relying solely on general LLM scanners or model-level probing tools.

## What's Changed

CI-native everywhere. Adds SARIF 2.1.0 output (--sarif) so findings appear in the GitHub Security tab / code scanning, exposes it as a GitHub Action input, and adds a pre-commit hook. Install or upgrade: pip install -U rag-redteam
