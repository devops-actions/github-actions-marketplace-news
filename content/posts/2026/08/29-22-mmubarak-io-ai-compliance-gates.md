---
title: AI Compliance Gates
date: 2026-08-29 22:05:16 +00:00
tags:
  - mmubarak-io
  - GitHub Actions
draft: false
repo: https://github.com/mmubarak-io/ai-compliance-gates
marketplace: https://github.com/marketplace/actions/ai-compliance-gates
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates compliance checks for AI models and pipelines, ensuring adherence to UAE PDPL, GDPR, and EU AI Act regulations. It enforces data protection, model documentation completeness, Terraform policy compliance, and auditor-facing artifacts in CI/CD pipelines. The action supports multiple entry points for different use cases and runs on GitHub Actions.
---


Version updated for **https://github.com/mmubarak-io/ai-compliance-gates** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-compliance-gates) to find the latest changes.

## Action Summary

This GitHub Action automates compliance checks for AI models and pipelines, ensuring adherence to UAE PDPL, GDPR, and EU AI Act regulations. It enforces data protection, model documentation completeness, Terraform policy compliance, and auditor-facing artifacts in CI/CD pipelines. The action supports multiple entry points for different use cases and runs on GitHub Actions.

## What's Changed

Reusable GitHub Actions that turn UAE PDPL, GDPR and EU AI Act requirements into blocking CI checks. Every policy is an executable check that fails the build, not a paragraph in a document nobody reads.

## Adopt in one step

```yaml
steps:
  - uses: actions/checkout@v4
  - uses: mmubarak-io/ai-compliance-gates@v1
    with:
      data-path: ./data
      model-cards-path: ./model_cards
      terraform-paths: "infra/*.tf"
```

## The gates

| Gate | Enforces | Regulation |
|------|----------|------------|
| PII scan | Datasets free of PII, including Emirates ID, +971 phones and AE IBANs that generic scanners miss. Reads CSV, TSV, JSON, JSON Lines and Parquet, compressed or not | UAE PDPL Art. 20, GDPR Art. 32 |
| Model card check | AI documentation complete, every missing field citing the article it fails | EU AI Act Annex IV, Art. 9/13/14 |
| Policy check | Terraform satisfies the register via OPA/Conftest: TLS 1.2, no public access, data residency, RBAC, audit logging, retention | UAE PDPL Art. 9, 20, 22-23; GDPR Art. 5, 30, 32 |
| Evidence pack | Auditor-facing artifact per run: what was checked, against which regulation, at which commit, with a sha256 of its own content | GDPR Art. 5(2), EU AI Act Art. 12 |

## How it fails

A gate must never report success for a check it did not perform.

| Exit code | Meaning |
|-----------|---------|
| `0` | Checked something, found nothing wrong |
| `1` | Policy violation, the build blocks |
| `2` | Misconfigured, could not check what it was pointed at |

Code `2` is the load-bearing one. A path matching zero files, unreadable input, a format with no reader, invalid config and a run given no gate at all all exit `2` rather than passing. Partial coverage blocks too: a directory of Parquet shards next to one CSV does not pass on the strength of the CSV. Opt out only deliberately with `allow-empty` or `allow-unscanned`, and the gap stays recorded in the evidence pack as `PARTIAL`, never `PASS`.

Each gate is also available on its own under `.github/actions/`, and the whole pipeline as a reusable workflow at `.github/workflows/gates.yml`.

Full changelog: https://github.com/mmubarak-io/ai-compliance-gates/blob/main/CHANGELOG.md

