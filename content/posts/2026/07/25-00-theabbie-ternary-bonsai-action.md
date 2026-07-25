---
title: Run Ternary Bonsai 27B Locally
date: 2026-07-25 00:17:09 +00:00
tags:
  - theabbie
  - GitHub Actions
draft: false
repo: https://github.com/theabbie/ternary-bonsai-action
marketplace: https://github.com/marketplace/actions/run-ternary-bonsai-27b-locally
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action downloads and runs Ternary Bonsai 27B locally on a GitHub Actions runner, allowing inference without sending prompts or responses to Hugging Face. It caches the model and runtime for subsequent runs, supports local CPU inference, and provides options for prompting through text or file inputs.
---


Version updated for **https://github.com/theabbie/ternary-bonsai-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ternary-bonsai-27b-locally) to find the latest changes.

## Action Summary

This GitHub Action downloads and runs Ternary Bonsai 27B locally on a GitHub Actions runner, allowing inference without sending prompts or responses to Hugging Face. It caches the model and runtime for subsequent runs, supports local CPU inference, and provides options for prompting through text or file inputs.

## What's Changed

Initial local inference release

- Download and verify the pinned 7.17 GB Ternary Bonsai 27B Q2_0 GGUF on the runner.
- Cache the model and pinned PrismML llama.cpp runtime.
- Run inference through a loopback-only local llama-server.
- Return the final answer, reasoning, timings, model path, and response file.
