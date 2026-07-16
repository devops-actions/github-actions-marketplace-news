---
title: Droid LLM Hunter
date: 2026-07-16 14:50:10 +00:00
tags:
  - roomkangali
  - GitHub Actions
draft: false
repo: https://github.com/roomkangali/droid-llm-hunter
marketplace: https://github.com/marketplace/actions/droid-llm-hunter
version: 1.1.9
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  Droid LLM Hunter is an automated security analysis tool designed to detect vulnerabilities in Android applications with high precision. It combines traditional static analysis (SAST) with the contextual understanding of Large Language Models (LLMs) to provide intelligent, risk-filtered findings and active Red Team Assistant capabilities through auto-exploit generation.
---


Version updated for **https://github.com/roomkangali/droid-llm-hunter** to version **1.1.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droid-llm-hunter) to find the latest changes.

## Action Summary

Droid LLM Hunter is an automated security analysis tool designed to detect vulnerabilities in Android applications with high precision. It combines traditional static analysis (SAST) with the contextual understanding of Large Language Models (LLMs) to provide intelligent, risk-filtered findings and active Red Team Assistant capabilities through auto-exploit generation.

## What's Changed

Updates the project to v1.1.9, focusing on improving scan UX/robustness (LLM JSON parsing) and restoring cross-reference context injection (call graph) to work reliably in JADX/hybrid modes, alongside accompanying documentation/version text updates.

Changes:

- Make LLM JSON extraction string-aware (ignores braces inside JSON string values) and adjust parsing flow.
- Rework call-graph dependency handling to operate on normalized class names and support JADX/hybrid path mapping.

<img width="1254" height="992" alt="Screenshot from 2026-07-16 11-39-34" src="https://github.com/user-attachments/assets/584c266e-fcfe-4929-b5b5-ef961d50a11f" />

