---
title: PRmate — 한국어 AI 코드 리뷰
date: 2026-04-17 21:56:38 +00:00
tags:
  - prmate
  - GitHub Actions
draft: false
repo: https://github.com/prmate/prmate
marketplace: https://github.com/marketplace/actions/prmate-ai
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/prmate/prmate** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prmate-ai) to find the latest changes.

## Action Summary

PRmate is a GitHub Action that automates AI-driven code reviews for pull requests, providing comments in natural Korean based on official coding conventions like Woowa, Naver Hackday, and Toss Frontend Fundamentals. It streamlines the review process by ensuring compliance with established guidelines, optimizing cost through prompt caching, and safeguarding sensitive data with automatic masking. Key features include customizable review levels, support for custom team conventions, and integration with third-party notification tools like Slack and Discord.

## What's Changed

## PRmate v1.3.0

### 변경 사항
- docs: Slack/Discord 알림 섹션 추가 + 네비 스크롤 애니메이션 (2217abb)
- fix: 타임아웃 기본값 90초 → 240초(4분)로 조정 (fb3bd92)
- feat: 토큰 예산 기반 동적 PR 청킹 + truncatePatch 3000줄 확장 (d2d1d7d)
- build: SHA 중복 방지 로직 포함 번들 재빌드 (9dda361)
- feat: SHA 기반 중복 리뷰 방지 로직 추가 (f51620b)
- fix: 기본 favicon.ico 제거 — icon.tsx 커스텀 아이콘 적용 (6a95880)
- fix: Week X 주석 정리 중 발생한 TypeScript 문법 오류 수정 (288d6b9)
- refactor: 소스코드 내부 개발 메모 (Week X) 주석 제거 (fe48c91)
- feat: Vercel Analytics 추가 (e649fde)
