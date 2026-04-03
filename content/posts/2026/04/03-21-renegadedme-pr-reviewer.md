---
title: PR Security Reviewer
date: 2026-04-03 21:44:33 +00:00
tags:
  - renegadedme
  - GitHub Actions
draft: false
repo: https://github.com/renegadedme/pr-reviewer
marketplace: https://github.com/marketplace/actions/pr-security-reviewer
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/renegadedme/pr-reviewer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-security-reviewer) to find the latest changes.

## Action Summary

The **PR Security Reviewer** GitHub Action automatically scans changes made to Dockerfiles and Kubernetes manifests in pull requests, identifies security risks, and provides clear, actionable feedback through inline comments and summary reports on the PR. Designed to integrate seamlessly into developer workflows, it helps automate security reviews, enforce best practices, and fail CI on high-severity findings, using a rules-based engine with optional AI-powered explanations.

## What's Changed

Initial Marketplace-ready release of PR Security Reviewer.

Highlights:
- reviews changed Dockerfiles and Kubernetes manifests on pull requests
- posts PR comments with rule-based findings and optional AI explanations
- supports OpenAI first with an Ollama fallback
- fails CI on high-severity findings
- includes Marketplace metadata and versioned action usage
