---
title: Harness Score
date: 2026-08-22 13:59:31 +00:00
tags:
  - paladini
  - GitHub Actions
draft: false
repo: https://github.com/paladini/harness-score
marketplace: https://github.com/marketplace/actions/harness-score
version: v1.6.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Harness Score measures the reliability and robustness of AI coding harnesses across various tools. It provides a detailed maturity level, breakdown of points across six dimensions, and specific suggestions for improvement. The action automates the process of analyzing any repository using AI coding tools, ensuring consistent quality assurance without relying on large LLMs or internet access.
---


Version updated for **https://github.com/paladini/harness-score** to version **v1.6.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harness-score) to find the latest changes.

## Action Summary

Harness Score measures the reliability and robustness of AI coding harnesses across various tools. It provides a detailed maturity level, breakdown of points across six dimensions, and specific suggestions for improvement. The action automates the process of analyzing any repository using AI coding tools, ensuring consistent quality assurance without relying on large LLMs or internet access.

## What's Changed

## Fixed

- Detect non-GitHub CI configuration files at any depth below the scan root, including Jenkins, GitLab CI, Azure Pipelines, CircleCI, and Bitbucket Pipelines.
- Preserve stable evidence ordering and de-duplicate overlapping CI matcher results.
- Document the filesystem-based detection semantics across all guide locales.

## Contributors

Thanks to [@felipecontratres-gupy](https://github.com/felipecontratres-gupy) for reporting #54 and contributing the initial fix in #55.

Thanks to [@dbtorrico](https://github.com/dbtorrico) for catching the guide locale parity gap and providing translation suggestions.

This release resolves #54.


