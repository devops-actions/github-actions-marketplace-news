---
title: VibeSafe Security Scan
date: 2026-03-15 13:31:55 +00:00
tags:
  - vibesafeio
  - GitHub Actions
draft: false
repo: https://github.com/vibesafeio/vibesafe-action
marketplace: https://github.com/marketplace/actions/vibesafe-security-scan
version: v0.1.1
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/vibesafeio/vibesafe-action** to version **v0.1.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibesafe-security-scan) to find the latest changes.

## Action Summary

The **VibeSafe Security Scan GitHub Action** automates security checks for pull requests, identifying vulnerabilities such as SQL injection, XSS, hardcoded secrets, and other OWASP Top 10 risks. It provides domain-specific security rules tailored to various industries (e.g., healthcare, fintech) and posts results directly as comments on PRs, offering actionable insights and security grades. This action streamlines code review processes by proactively detecting critical issues and improving software security workflow.

## Release notes

## VibeSafe Security Scan — Initial Release

PR마다 자동 보안 스캔 + 결과 코멘트를 달아주는 GitHub Action입니다.

### 기능
- SAST (SQL Injection, XSS, SSRF 등 OWASP Top 10)
- 시크릿 탐지 (API 키, 토큰 하드코딩)
- 도메인별 보안 규칙 자동 적용 (ecommerce, fintech, healthcare 등)
- 0-100 점수 + A-F 등급 + Certified 배지

### 사용법
\`\`\`yaml
uses: vibesafeio/vibesafe-action@v0
\`\`\`
