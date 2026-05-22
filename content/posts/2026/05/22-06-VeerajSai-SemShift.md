---
title: SemShift Check
date: 2026-05-22 06:29:55 +00:00
tags:
  - VeerajSai
  - GitHub Actions
draft: false
repo: https://github.com/VeerajSai/SemShift
marketplace: https://github.com/marketplace/actions/semshift-check
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/VeerajSai/SemShift** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semshift-check) to find the latest changes.

## Action Summary

SemShift is a GitHub Action and Python tool designed to detect and flag semantic changes in text, such as AI-rewritten or human-edited documents, policies, prompts, and other written content. By identifying potential shifts in meaning, tone, or intent that may be missed in traditional Git diffs, it helps mitigate risks and ensures accurate, consistent communication before publishing or approval. Key features include support for various text types, customizable risk levels, and integration with GitHub workflows for automated review processes.

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
