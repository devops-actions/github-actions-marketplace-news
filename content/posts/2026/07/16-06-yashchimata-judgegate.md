---
title: judgegate
date: 2026-07-16 06:16:36 +00:00
tags:
  - yashchimata
  - GitHub Actions
draft: false
repo: https://github.com/yashchimata/judgegate
marketplace: https://github.com/marketplace/actions/judgegate
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  judgegate is a CI trust gate for LLM judges that measures their reliability against human labels using Cohen's kappa and bootstrap confidence intervals. It helps teams avoid relying solely on AI judgments by verifying their accuracy and identifying noisy or unreliable judges. The action verifies a judge, asks the label budget question, stops labeling early, and validates any labels file before running.
---


Version updated for **https://github.com/yashchimata/judgegate** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/judgegate) to find the latest changes.

## Action Summary

judgegate is a CI trust gate for LLM judges that measures their reliability against human labels using Cohen's kappa and bootstrap confidence intervals. It helps teams avoid relying solely on AI judgments by verifying their accuracy and identifying noisy or unreliable judges. The action verifies a judge, asks the label budget question, stops labeling early, and validates any labels file before running.

## What's Changed

First public release.

You gate releases on an LLM judge's scores. judgegate checks the judge. It measures agreement against your human labels with Cohen's kappa and bootstrap confidence intervals, probes for position, verbosity, stability, and format bias, and returns a verdict CI can enforce: TRUSTED (0), UNTRUSTED (1), or INCONCLUSIVE (2) with the label count that would decide it.

## Highlights

- `judgegate verify`: the trust gate, with interval-disciplined decisions for both agreement and probes
- `judgegate power`: the label budget calculator, validated against the real bootstrap decision procedure
- `judgegate sequential`: always-valid early stopping for the labeling effort itself
- `judgegate probe` and `judgegate validate` for the battery and pre-flight checks
- Fully offline in CI when labels files carry precomputed judge verdicts: no network, no API key
- Works with any OpenAI-compatible endpoint, with retries, bounded concurrency, and a SQLite response cache
- Composite GitHub Action with sticky PR comments

## Live demo

Two open pull requests on this repository show the gate working on real data: [a judge upgrade it certifies](https://github.com/yashchimata/judgegate/pull/1) and [a cheaper judge it refuses to trust](https://github.com/yashchimata/judgegate/pull/2).

## Install

```
pip install judgegate
```

Pairs with [statgate](https://github.com/yashchimata/statgate): first prove the judge deserves the job, then gate changes on what it reports.

