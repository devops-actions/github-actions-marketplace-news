---
title: AI Test Helper
date: 2026-01-14 21:26:17 +00:00
tags:
  - k1my3ch4n
  - GitHub Actions
draft: false
repo: https://github.com/k1my3ch4n/ai-test-helper
marketplace: https://github.com/marketplace/actions/ai-test-helper
version: v1.0.3
dependentsNumber: "?"
---


Version updated for **https://github.com/k1my3ch4n/ai-test-helper** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-test-helper) to find the latest changes.

## Action Summary

The "AI Test Helper" GitHub Action automates the generation of test code using AI by analyzing changes in a pull request. It identifies areas requiring testing, prioritizes them, and provides test code suggestions or automatically generates test cases across various programming languages and frameworks. This action streamlines the testing process, enhances code quality, and integrates seamlessly with PR workflows by adding comments with testing recommendations.

## Release notes

# AI Test Helper v1.0.3

PR(Pull Request)의 변경된 코드를 AI가 분석하여 테스트 코드를 자동 생성하는 GitHub Action입니다.

## 🆕 v1.0.3 변경 사항

### 개선 사항
- **Gemini 프롬프트 강화**: 한글 응답을 더 확실하게 보장하도록 프롬프트 개선
- **PR 코멘트 형식 개선**: 테스트 코드 예시를 접이식(`<details>`)으로 표시하여 깔끔한 코멘트 유지
- **코멘트 한글화**: PR 코멘트 제목 및 본문을 한글로 변경

### 버그 수정
- **번들링 오류 수정**: `@actions/core` 모듈을 찾을 수 없는 오류 해결
  - `ncc` 번들링이 누락되어 의존성이 포함되지 않던 문제 수정
  - `dist/index.js`에 모든 의존성이 정상적으로 포함됨

### 수정된 파일
- `src/api/gemini.ts` - 프롬프트 강화
- `src/index.ts` - PR 코멘트 형식 개선
- `dist/` - ncc 번들링으로 의존성 포함

---

## ✨ 주요 기능

- **AI 기반 코드 분석**: Claude 또는 Gemini API를 사용하여 변경된 코드 분석
- **테스트 제안 생성**: 테스트해야 할 항목을 우선순위(high/medium/low)와 함께 **한글로** 제공
- **테스트 코드 예시 제공**: 각 제안에 실행 가능한 테스트 코드 예시 포함
- **테스트 코드 자동 생성**: 분석된 코드를 기반으로 테스트 코드 자동 생성
- **PR 코멘트**: 테스트 제안을 PR에 자동으로 코멘트 (접이식 코드 예시 포함)

## 🛠 지원 환경

### AI Provider
- Claude (Anthropic)
- Gemini (Google)

### 테스트 프레임워크
- Jest, Mocha, Vitest (JavaScript/TypeScript)
- Pytest (Python)
- JUnit (Java)
- 자동 감지 모드 (`auto`)

### 프로그래밍 언어
TypeScript, JavaScript, Python, Java, Go, Rust, C/C++, C#, Ruby, PHP, Swift, Kotlin

## 📦 사용법

```yaml
- name: AI Test Helper
  uses: k1my3ch4n/ai-test-helper@v1
  with:
    ai_provider: 'claude'
    ai_api_key: ${{ secrets.CLAUDE_API_KEY }}
    github_token: ${{ secrets.GITHUB_TOKEN }}
```

## 📝 입력 파라미터

| 파라미터 | 필수 | 기본값 | 설명 |
|----------|------|--------|------|
| `ai_provider` | ✅ | - | AI 프로바이더 (`claude` / `gemini`) |
| `ai_api_key` | ✅ | - | AI API 키 |
| `github_token` | ✅ | `github.token` | GitHub 토큰 |
| `ai_model` | ❌ | 프로바이더 기본값 | 사용할 AI 모델 |
| `output_dir` | ❌ | `./generated-tests` | 테스트 파일 출력 디렉토리 |
| `test_framework` | ❌ | `auto` | 테스트 프레임워크 |
| `add_comment` | ❌ | `true` | PR 코멘트 추가 여부 |

## 🔗 Links

- [README](https://github.com/k1my3ch4n/ai-test-helper#readme)
- [사용 예제](https://github.com/k1my3ch4n/ai-test-helper#사용-예제)

