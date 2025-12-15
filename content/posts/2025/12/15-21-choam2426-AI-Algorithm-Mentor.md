---
title: AI Algorithm Mentor
date: 2025-12-15 21:23:50 +00:00
tags:
  - choam2426
  - GitHub Actions
draft: false
repo: https://github.com/choam2426/AI-Algorithm-Mentor
marketplace: https://github.com/marketplace/actions/ai-algorithm-mentor
version: v5
dependentsNumber: "3"
---


Version updated for **https://github.com/choam2426/AI-Algorithm-Mentor** to version **v5**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-algorithm-mentor) to find the latest changes.

## Release notes

### 🎯 개요
알고리즘 코드 리뷰 시스템을 CrewAI 기반으로 전면 리팩토링하고, 백준뿐만 아니라 LeetCode와 프로그래머스까지 지원하도록 확장했습니다.

---

### ✨ 주요 변경사항

#### 🏗️ 아키텍처 리팩토링
- **CrewAI 도입**: AI 에이전트 프레임워크로 전환하여 더 정교한 코드 리뷰 수행
- **비동기 처리**: `asyncio` + `httpx`로 여러 파일 병렬 처리
- **코드 정리**: 기존 모듈 삭제 및 역할별 분리
  - ❌ 삭제: `llm_factory.py`, `online_judge.py`, `problem_info_crawler.py`
  - ✅ 추가: `crew.py`, `utils.py`, `scrapers/` 패키지

#### 🌐 다중 플랫폼 스크래퍼
새로운 `scrapers/` 패키지로 3대 온라인 저지 지원:
| 플랫폼 | 구현 방식 |
|--------|----------|
| 백준 (BOJ) | HTML 스크래핑 |
| LeetCode | GraphQL API |
| 프로그래머스 | HTML 스크래핑 |

#### 🔍 스마트 파일 필터링
- 첫 줄이 주석(문제 URL)이 아닌 파일 자동 스킵
- 14개 프로그래밍 언어 지원 (C, C++, Python, Java, JS, TS, Go, Rust, C#, Kotlin, Ruby, Swift)

#### 📝 문서화
- README.md 전면 개편 (실제 구현 상태 반영)
- README_EN.md 영어 버전 추가

#### ⚙️ 환경 변경
- Python 3.11 → **3.13** 업그레이드
- `pip` → **uv** 패키지 매니저
- `GOOGLE_API_KEY` → `GEMINI_API_KEY` 변경

## What's Changed
* Feature/#8 by @choam2426 in https://github.com/choam2426/AI-Algorithm-Mentor/pull/9


**Full Changelog**: https://github.com/choam2426/AI-Algorithm-Mentor/compare/v4...v5
