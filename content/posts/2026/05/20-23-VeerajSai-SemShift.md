---
title: SemShift Check
date: 2026-05-20 23:14:13 +00:00
tags:
  - VeerajSai
  - GitHub Actions
draft: false
repo: https://github.com/VeerajSai/SemShift
marketplace: https://github.com/marketplace/actions/semshift-check
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/VeerajSai/SemShift** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semshift-check) to find the latest changes.

## Action Summary

**SemShift** is a GitHub Action and CLI tool designed to detect semantic changes, such as shifts in meaning, tone, claims, and risks, between versions of text files, documents, or other written content. It addresses the limitations of traditional diff tools by highlighting changes in intent or implications rather than just textual differences. With support for local-first processing and advanced semantic models, it automates the identification of critical changes, enabling faster and more informed content reviews.

## What's Changed

SemShift Check detects meaning-level drift in pull requests.

It helps reviewers catch risky changes in AI-edited docs, prompts, policies, research drafts, resumes, and README files. Normal git diff shows what text changed; SemShift highlights what meaning may have changed.

Highlights:
- Local-first semantic drift checks
- Fast TF-IDF backend by default
- Optional SentenceTransformers support
- Modes for policy, prompt, README, research, resume, and general text
- Markdown report artifact
- Optional pull request comment
- CI fail thresholds: low, medium, high, critical
