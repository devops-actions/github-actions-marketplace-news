---
title: OLIVE Action
date: 2026-07-02 14:57:24 +00:00
tags:
  - kakao
  - GitHub Actions
draft: false
repo: https://github.com/kakao/olive-action
marketplace: https://github.com/marketplace/actions/olive-action
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kakao/olive-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/olive-action) to find the latest changes.

## What's Changed

# 🚀 OLIVE Action v1 - 첫 번째 릴리즈

### 📋 릴리즈 개요

**OLIVE Action**의 첫 번째 공식 릴리즈입니다. 이 Action은 GitHub Actions에서 OLIVE CLI를 사용하여 오픈소스 라이선스 의무사항 준수를 자동화하는 도구입니다.

---

## ✨ 주요 기능

### 🔍 **자동 의존성 분석**
- Pull Request 생성 시 소스코드 의존성을 자동으로 분석
- 다양한 프로그래밍 언어 지원 (Python, Node.js, Java, Rust, Ruby, Dart, Flutter 등)
- ORT (OSS Review Toolkit) 기반의 정확한 의존성 추출

### 💬 **PR 코멘트 자동 작성**
- 분석 결과를 Pull Request에 자동으로 코멘트 작성
- 라이선스 정보, 매핑된 컴포넌트, 매핑되지 않은 의존성 목록 제공
- 실패 시에도 적절한 에러 메시지 자동 작성

### 🔗 **OLIVE Platform 연동**
- 분석 결과를 OLIVE Platform으로 자동 전송
- 오픈소스 라이선스 및 취약점 관리 지원
- 프로젝트별 라이선스 의무사항 추적

### 📦 **분석 결과 저장**
- GitHub Artifacts를 통한 상세 분석 결과 저장
- `dependency.csv`, `dependency.json`, `mapping.csv`, `mapping.json`, `unmapping.csv` 파일 제공
- 설정 파일 (`local-config.yaml`) 보관

---

## 🛠️ 기술적 특징

### **컨테이너 기반 실행**
- Docker 컨테이너 환경에서 격리된 실행
- 다양한 개발 도구가 사전 설치된 통합 환경
- 안정적이고 재현 가능한 실행 환경

### **다중 언어 지원**
- **Python**: 3.11.10, pip, pipenv, poetry, conan
- **Node.js**: 20.14.0, npm, yarn, pnpm, bower
- **Java**: Gradle 8.13, OpenJDK 11
- **Rust**: 1.72.0
- **Ruby**: 3.3.5, bundler, cocoapods
- **Dart/Flutter**: 2.18.4/3.24.4
- **PHP**: 8.3, composer
- **Android**: Android SDK, command-line tools

### **모듈화된 구조**
- 6단계 실행 프로세스로 명확한 워크플로우
- 각 기능별 분리된 스크립트로 유지보수성 향상
- 사용자 정의 설정 파일 지원

---

## 🚀 사용법

### **기본 사용법**

```yaml
name: OLIVE Action

on:
  pull_request:
    types: [opened, synchronize, reopened]
    branches: [main, develop]

permissions:
  contents: read
  issues: write
  pull-requests: write

jobs:
  olive-scan:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Run OLIVE Action
        uses: kakao/olive-action@v1
        with:
          olive-token: ${{ secrets.OLIVE_TOKEN }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

### **고급 설정**

```yaml
- name: Run OLIVE Action with custom settings
  uses: kakao/olive-action@v1
  with:
    olive-project-name: "my-custom-project"
    olive-token: ${{ secrets.OLIVE_TOKEN }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
    source-path: "./src"
    user-config-path: "./user-config.yml"
    artifact-retention-days: "7"
    comment-on-pr: "true"
    analyze-only: "false"
    debug: "false"
```

---

## 🔧 입력 파라미터

| 파라미터 | 설명 | 필수 | 기본값 |
|---------|------|------|--------|
| `olive-token` | OLIVE Platform API 토큰 | ✅ | - |
| `github-token` | PR 코멘트 작성용 GitHub 토큰 | ✅ | - |
| `olive-project-name` | OLIVE Platform 프로젝트 이름 | ❌ | 저장소 이름 |
| `source-path` | 분석할 소스코드 경로 | ❌ | `./` |
| `user-config-path` | 사용자 정의 config 파일 경로 | ❌ | `""` |
| `artifact-retention-days` | 아티팩트 보관 기간 (일) | ❌ | `30` |
| `comment-on-pr` | PR에 코멘트 작성 여부 | ❌ | `true` |
| `analyze-only` | 분석만 수행하고 Platform 연동 생략 | ❌ | `false` |
| `debug` | 디버그 모드 활성화 | ❌ | `false` |

---

## 📊 출력 결과

### **GitHub Artifacts**
- `dependency.csv`, `dependency.json`: 의존성 분석 결과
- `mapping.csv`, `mapping.json`: 컴포넌트 매핑 결과
- `unmapping.csv`: 매핑되지 않은 의존성 목록
- `local-config.yaml`: OLIVE CLI 설정 파일

### **PR 코멘트**
- OLIVE CLI 버전 및 프로젝트 정보
- 라이선스 분석 결과 요약
- 매핑된 컴포넌트 및 매핑되지 않은 의존성 목록
- 아티팩트 다운로드 링크

---

## 🚨 사전 준비사항

### 1. **OLIVE Platform 토큰 발급**
- [OLIVE Platform](https://olive.kakao.com/)에서 API 토큰 발급
- [토큰 발급 가이드](https://olive.kakao.com/docs/my-page/token) 참고

### 2. **GitHub Secrets 설정**
- `OLIVE_TOKEN`: OLIVE Platform API 토큰
- `GITHUB_TOKEN`: GitHub Actions 기본 토큰 (자동 제공)

---

## 🔍 실행 단계

1. **소스 위치 검증** - 분석할 소스코드 경로 확인
2. **OLIVE CLI 초기화** - 프로젝트 설정 및 토큰 검증
3. **의존성 분석** - 소스코드 의존성 추출 및 분석
4. **컴포넌트 분석** - 의존성을 OLIVE 컴포넌트에 매핑
5. **라이선스 분석** - 라이선스 정보 추출 및 분석
6. **OLIVE Platform 연동** - 분석 결과를 Platform으로 전송

---

## 🛡️ 보안 및 안정성

- **격리된 실행 환경**: Docker 컨테이너를 통한 안전한 실행
- **토큰 검증**: 실행 전 필수 토큰들의 유효성 검증
- **에러 처리**: 실패 시 자동 정리 및 에러 리포팅
- **리소스 관리**: 컨테이너 자동 정리로 메모리 누수 방지

---

## 📚 문서 및 지원

- **사용 가이드**: [README.md](README.md)
- **OLIVE Platform**: [https://olive.kakao.com/](https://olive.kakao.com/)
- **OLIVE CLI**: [https://github.com/kakao/olive-cli](https://github.com/kakao/olive-cli)

---

## 📄 라이선스

이 프로젝트는 Apache License 2.0 하에 배포됩니다.

Copyright 2025 Kakao Corp. http://www.kakaocorp.com


