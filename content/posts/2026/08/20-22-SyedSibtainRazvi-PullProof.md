---
title: PullProof
date: 2026-08-20 22:38:11 +00:00
tags:
  - SyedSibtainRazvi
  - GitHub Actions
draft: false
repo: https://github.com/SyedSibtainRazvi/PullProof
marketplace: https://github.com/marketplace/actions/pullproof
version: v2.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PullProof is a GitHub Action that automates the review of blog posts and documentation changes in pull requests. It checks metadata, technical accuracy, writing quality, structure, and blog polish, providing AI-generated feedback as structured comments. The action only reviews added lines and updates the same comment on subsequent pushes, improving efficiency and reducing spam.
---


Version updated for **https://github.com/SyedSibtainRazvi/PullProof** to version **v2.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pullproof) to find the latest changes.

## Action Summary

PullProof is a GitHub Action that automates the review of blog posts and documentation changes in pull requests. It checks metadata, technical accuracy, writing quality, structure, and blog polish, providing AI-generated feedback as structured comments. The action only reviews added lines and updates the same comment on subsequent pushes, improving efficiency and reducing spam.

## What's Changed

**Feature:** the previous review is fed back into the prompt on each run. On updated posts the model stays consistent with its prior feedback, opens with a `Resolved since last review:` list, and raises only new or still-unresolved issues — no more rating flips or re-raised fixed items. Also drops a duplicate comment-list fetch. (#7)
