---
title: AI Algorithm Mentor
date: 2026-04-04 13:41:12 +00:00
tags:
  - choam2426
  - GitHub Actions
draft: false
repo: https://github.com/choam2426/AI-Algorithm-Mentor
marketplace: https://github.com/marketplace/actions/ai-algorithm-mentor
version: v6
dependentsNumber: "10"
actionType: Docker
---


Version updated for **https://github.com/choam2426/AI-Algorithm-Mentor** to version **v6**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-algorithm-mentor) to find the latest changes.

## Action Summary

The **AI Algorithm Mentor** GitHub Action provides automated AI-powered code review for algorithm problem solutions. It analyzes code for efficiency, correctness, and quality, gathers problem details from supported platforms (e.g., LeetCode, Codeforces), and posts professional feedback as GitHub commit comments. This action streamlines the code review process, supports multiple programming platforms, offers multilingual feedback, and enables users to choose from various AI providers like OpenAI, Google AI, and Anthropic.

## What's Changed

## What's New

### LangChain LCEL 전환
- CrewAI 제거, LangChain LCEL (`prompt | llm | StrOutputParser()`) 기반 리뷰 체인으로 교체
- `prompt.py`의 프롬프트가 실제 리뷰에 사용되도록 통합
- `init_chat_model()`로 provider별 API 키 명시적 전달

### Codeforces 지원 추가
- HTML 파싱 + **API fallback** (Cloudflare 차단 시 `contest.standings` API로 메타데이터 제공)
- 두 가지 URL 패턴 지원: `/problemset/problem/` 및 `/contest/.../problem/`

### BOJ solved.ac 통합
- solved.ac API로 문제 메타데이터(제목/태그/난이도) 보조 획득
- 구조화된 로깅 및 actionable 에러 메시지 추가

### GitHub API 안정화
- tenacity 기반 지수 백오프 재시도 (5xx/429, 최대 3회)
- 개별 파일 fetch 실패 시 graceful skip (전체 실패 방지)
- 응답 검증 (`raise_for_status`) 추가

### 테스트 도입
- pytest 32개 단위 테스트 (utils, config, scrapers)

### 모델 기본값 최신화
- `MODEL_NAME` 선택사항으로 변경 — provider별 자동 선택
- Google: `gemini-3.1-flash`, OpenAI: `gpt-5.4-mini`, Anthropic: `claude-sonnet-4-6`

### README 재작성
- 초보자 친화적 5분 설정 가이드
- BaekjoonHub / CFPusher 확장 사용 권장 안내
- 아키텍처 다이어그램 및 기술 스택 업데이트

### 보안
- `get_github_config` 필수 환경변수 검증 추가
- LiteLLM 의존성 완전 제거 (공급망 공격 CVE-2026-33634 영향 없음)
- LangChain Core CVE-2025-68664 패치 적용 버전 사용 중

## Breaking Changes
- `crewai[tools]` → `langchain` 생태계로 전환 (Docker 이미지 재빌드 필요)
- `MODEL_NAME` default 제거 — 미지정 시 provider별 자동 선택

## Usage
```yaml
- uses: choam2426/AI-Algorithm-Mentor@v6
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    LLM_PROVIDER: google
    GEMINI_API_KEY: ${{ secrets.GEMINI_API_KEY }}
```
