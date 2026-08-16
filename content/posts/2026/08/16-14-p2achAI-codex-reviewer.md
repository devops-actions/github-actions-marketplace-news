---
title: Codex Reviewer
date: 2026-08-16 14:11:50 +00:00
tags:
  - p2achAI
  - GitHub Actions
draft: false
repo: https://github.com/p2achAI/codex-reviewer
marketplace: https://github.com/marketplace/actions/codex-reviewer
version: v2.1.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  **Summary**: This GitHub Action automates the process of reviewing pull requests by leveraging AI-powered models like Claude and OpenAI to generate summaries, improve code quality, detect potential bugs, and provide feedback in multiple languages. It centralizes runner permissions and trigger policies through a reusable workflow, supports both single-agent and multilingual reviews, and integrates with ClickUp for spec compliance checks.
---


Version updated for **https://github.com/p2achAI/codex-reviewer** to version **v2.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-reviewer) to find the latest changes.

## Action Summary

**Summary**: This GitHub Action automates the process of reviewing pull requests by leveraging AI-powered models like Claude and OpenAI to generate summaries, improve code quality, detect potential bugs, and provide feedback in multiple languages. It centralizes runner permissions and trigger policies through a reusable workflow, supports both single-agent and multilingual reviews, and integrates with ClickUp for spec compliance checks.

## What's Changed

## 변경 사항
- self-hosted io-light 기반 중앙 reusable review workflow 추가
- caller repo의 fork/draft/라벨/concurrency 정책 중앙화
- reusable workflow와 nested action의 불변 SHA 실행 경로 적용
- GitHub Actions Dependabot 주간 갱신 및 최소 권한 caller 예시 추가
