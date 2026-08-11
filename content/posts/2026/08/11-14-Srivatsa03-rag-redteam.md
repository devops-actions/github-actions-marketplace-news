---
title: rag-redteam
date: 2026-08-11 14:27:17 +00:00
tags:
  - Srivatsa03
  - GitHub Actions
draft: false
repo: https://github.com/Srivatsa03/rag-redteam
marketplace: https://github.com/marketplace/actions/rag-redteam
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The rag-redteam GitHub Action is designed to test RAG pipelines for potential security vulnerabilities such as indirect prompt injection and source-document leakage. It automates these tests by simulating attacks on the pipeline and failing the build if any vulnerabilities are found, ensuring that sensitive information remains protected in the retrieved documents. The action can be used with local or remote RAG implementations, providing a comprehensive security check for LLM-based retrieval pipelines.
---


Version updated for **https://github.com/Srivatsa03/rag-redteam** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rag-redteam) to find the latest changes.

## Action Summary

The rag-redteam GitHub Action is designed to test RAG pipelines for potential security vulnerabilities such as indirect prompt injection and source-document leakage. It automates these tests by simulating attacks on the pipeline and failing the build if any vulnerabilities are found, ensuring that sensitive information remains protected in the retrieved documents. The action can be used with local or remote RAG implementations, providing a comprehensive security check for LLM-based retrieval pipelines.

## What's Changed

`pip install rag-redteam==0.6.0` — still zero runtime dependencies.

## What changed

**Every probe now samples a grammar.** Six of the seven replayed between one and four hardcoded strings, which is too little to support a conclusion: cross-document decided a published 100% on a *single attempt*, and measures 17% at 300 trials. Grammars run from 480 to over 5,000 combinations. Use `--trials`.

**Reference defenses** (`rag_redteam.defenses`) wrap any target, and each declares whether it is **structural** — holding regardless of what the model decides — or **advisory**, working by persuading it. That distinction turned out to matter more than the defenses themselves.

**A utility metric** reported beside attack success, because a defense that refuses every query scores a perfect 0% on every probe and is also a broken product. This caught a real bug before release: the first real-model run read 0% across every security column while answering half the ordinary questions.

**An HTTP adapter** — point it at an endpoint instead of writing a Python target:

```bash
rag-redteam run --target-url https://my-rag.example.com/ask
```

Private and loopback addresses are refused by default, so the same code is safe in a hosted scanner.

## What the runs found

8,400 injection attempts across four models and four retrieval stacks:

- **Filter evasion anti-correlates with attack success, r = −0.79.** base64 evades a pattern filter 57% of the time and breaks the pipeline 0% of the time. Plain uppercase is caught 91% of the time and is the strongest attack tested.
- **That relationship moves with the model.** base64 goes 0% → 0% → 18% → 2% across the capability ladder; rot13 stays at 0% until the newest model obeys it 9% of the time. A filter's least important weakness becomes a live hole on upgrade day, with nothing about the filter having changed.
- **Alignment narrows the funnel, capability widens the door.** The hardest model to inject is the only one that obeys *every* encoding tested.
- **Defenses cut injection 37% → 10% and cannot close it**, and every point of that comes from an advisory defense. Structural defenses alone leave injection at exactly the undefended rate.

Full write-up in [`docs/FINDINGS.md`](https://github.com/Srivatsa03/rag-redteam/blob/main/docs/FINDINGS.md). Live demo and browser scanner: **https://srivatsa03.github.io/rag-redteam/**

## Limits

Everything here is non-adaptive, which is known to overestimate robustness, so read the numbers as a lower bound on exposure. All four models are OpenAI, so the ladder is a within-family result.
