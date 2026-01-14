---
title: AI Code Reviewer by k1my3ch4n
date: 2026-01-14 06:01:22 +00:00
tags:
  - k1my3ch4n
  - GitHub Actions
draft: false
repo: https://github.com/k1my3ch4n/ai-code-reviewer
marketplace: https://github.com/marketplace/actions/ai-code-reviewer-by-k1my3ch4n
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/k1my3ch4n/ai-code-reviewer** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-code-reviewer-by-k1my3ch4n) to find the latest changes.

## Action Summary

The "AI Code Reviewer" GitHub Action is an automated tool that performs AI-driven code reviews for pull requests. It analyzes code changes upon PR creation and provides detailed feedback, including improvement suggestions, best practices, and error detection, directly within the PR interface. This action streamlines the code review process, promotes code quality, and reduces manual review effort while supporting multiple AI providers and customizable configurations.

## Release notes

# AI Code Reviewer v1.0.0

GitHub Actions를 이용한 AI 기반 자동 코드 리뷰어의 첫 번째 릴리즈입니다.

## Features

- **AI 제공자 선택**: Claude, Gemini 지원
- **다국어 리뷰**: 한국어(ko), 영어(en) 지원
- **파일 제외 패턴**: glob 패턴으로 리뷰 제외 파일 설정 가능
- **모델 선택**: 다양한 AI 모델 지정 가능
  - Claude: `claude-sonnet-4-20250514`, `claude-opus-4-20250514`
  - Gemini: `gemini-1.5-flash`, `gemini-1.5-pro`, `gemini-2.0-flash`

## Usage

```yaml
- name: AI Code Review
  uses: k1my3ch4n/ai-code-reviewer@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    ai-provider: 'claude'
    claude-api-key: ${{ secrets.CLAUDE_API_KEY }}
```

## Documentation

자세한 사용법은 [README](https://github.com/k1my3ch4n/ai-code-reviewer#readme)를 참고하세요.

