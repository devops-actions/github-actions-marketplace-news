---
title: nogit-action
date: 2025-11-17 17:38:45 +00:00
tags:
  - KangYoungIn
  - GitHub Actions
draft: false
repo: https://github.com/KangYoungIn/nogit-action
marketplace: https://github.com/marketplace/actions/nogit-action
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/KangYoungIn/nogit-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nogit-action) to find the latest changes.

## Release notes

`nogit-action`은 GitHub Actions 환경에서 `git` CLI 없이 Git 기능을 수행할 수 있도록 도와주는 GitHub 액션입니다.

Node.js 기반의 `isomorphic-git` 라이브러리를 사용하여 clone, commit, push 등을 실행합니다.

---

## 주요 특징

- Git CLI 설치 불필요
- 퍼블릭 및 프라이빗 저장소 지원
- GitHub Token(PAT) 인증 지원
- GitHub Actions 워크플로우에 최적화

---

## 주요 사용처

- Git CLI가 설치되지 않은 커스텀 GitHub Actions 러너 환경에서 Git 작업이 필요한 경우
- Docker 이미지나 WASM 기반 런타임 등에서 Git 명령을 CLI 없이 수행해야 할 때
- CI/CD 파이프라인 중 특정 단계에서 `clone`, `commit`, `push` 작업이 필요한 경우
- 보안 상 이유로 git 바이너리를 설치할 수 없는 환경
- GitHub Actions 내에서 Node.js 환경만으로 Git 관련 자동화를 하고자 할 때

---


## 전체 워크플로우 예시

```yaml
name: CI Full Test

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  full-test:
    runs-on: ubuntu-latest

    steps:
      - name: 현재 저장소 체크아웃
        uses: actions/checkout@v4

      - name: Node.js 설정
        uses: actions/setup-node@v4
        with:
          node-version: 22

      - name: 의존성 설치
        run: npm ci

      - name: TypeScript 빌드
        run: npm run build

      # ───── 공개 저장소 ─────
      - name: 공개 저장소 클론
        uses: KangYoungIn/nogit-action@v1
        with:
          action: clone
          repo-url: https://github.com/KangYoungIn/nogit-action.git
          directory: ./test-repo

      - name: 브랜치 체크아웃
        uses: KangYoungIn/nogit-action@v1
        with:
          action: checkout
          directory: ./test-repo
          ref: main

      - name: 테스트 파일 생성
        run: echo "test file" >> ./test-repo/test.txt

      - name: 상태 확인
        uses: KangYoungIn/nogit-action@v1
        with:
          action: status
          directory: ./test-repo

      - name: 파일 스테이징
        uses: KangYoungIn/nogit-action@v1
        with:
          action: add
          directory: ./test-repo
          files: |
            test.txt

      - name: 파일 커밋
        uses: KangYoungIn/nogit-action@v1
        with:
          action: commit
          directory: ./test-repo
          message: "Test commit from nogit-action"
          username: nogit-bot
          email: nogit@localhost

      - name: 커밋 로그 확인
        uses: KangYoungIn/nogit-action@v1
        with:
          action: log
          directory: ./test-repo

      - name: 원격 저장소 fetch
        uses: KangYoungIn/nogit-action@v1
        with:
          action: fetch
          directory: ./test-repo

      # ───── 비공개 저장소 ─────
      - name: 비공개 저장소 클론
        uses: KangYoungIn/nogit-action@v1
        with:
          action: clone
          repo-url: https://github.com/KangYoungIn/nogit-action-private-test.git
          directory: ./private-repo
          username: oauth2
          token: ${{ secrets.GIT_TOKEN }}

      - name: 비공개 파일 생성
        run: echo "private test" >> ./private-repo/secret.txt

      - name: 비공개 파일 스테이징
        uses: KangYoungIn/nogit-action@v1
        with:
          action: add
          directory: ./private-repo
          files: |
            secret.txt

      - name: 비공개 저장소 상태 확인
        uses: KangYoungIn/nogit-action@v1
        with:
          action: status
          directory: ./private-repo

      - name: 비공개 파일 커밋
        uses: KangYoungIn/nogit-action@v1
        with:
          action: commit
          directory: ./private-repo
          message: "Test private commit"
          username: nogit-bot
          email: nogit@localhost

      - name: 비공개 저장소 푸시
        uses: KangYoungIn/nogit-action@v1
        with:
          action: push
          directory: ./private-repo
          username: oauth2
          token: ${{ secrets.GIT_TOKEN }}
          remote: origin
          ref: main
```

---

## 공개 저장소 단계별 입력값

| 단계        | 액션         | 필수 입력값      | 설명                          |
| --------- | ---------- | ----------- | --------------------------- |
| 공개 저장소 클론 | `clone`    | `action`    | `clone`으로 설정하여 클론 동작을 지정    |
|           |            | `repo-url`  | 클론할 공개 저장소의 URL             |
|           |            | `directory` | 저장소를 클론할 로컬 디렉토리 경로         |
| 브랜치 체크아웃  | `checkout` | `action`    | `checkout`으로 설정하여 브랜치 변경 지정 |
|           |            | `directory` | 작업 디렉토리 (클론된 저장소 경로)        |
|           |            | `ref`       | 체크아웃할 브랜치 이름 (`main` 등)     |
| 상태 확인     | `status`   | `action`    | `status`로 설정하여 상태 출력 명령 실행  |
|           |            | `directory` | 상태를 확인할 디렉토리 경로             |
| 파일 스테이징   | `add`      | `action`    | `add`로 설정하여 파일 스테이징 지정      |
|           |            | `directory` | Git 작업 디렉토리 경로              |
|           |            | `files`     | 스테이징할 파일 목록 (줄바꿈 구분)        |
| 커밋        | `commit`   | `action`    | `commit`으로 설정하여 커밋 실행       |
|           |            | `directory` | Git 작업 디렉토리 경로              |
|           |            | `message`   | 커밋 메시지                      |
|           |            | `username`  | 커밋 작성자 이름                   |
|           |            | `email`     | 커밋 작성자 이메일                  |
| 로그 확인     | `log`      | `action`    | `log`로 설정하여 커밋 로그 출력        |
|           |            | `directory` | 로그를 출력할 디렉토리                |
| 원격 fetch  | `fetch`    | `action`    | `fetch`로 설정하여 원격 정보 동기화     |
|           |            | `directory` | 작업 디렉토리 경로                  |

---

## 비공개 저장소 단계별 입력값

| 단계          | 액션       | 필수 입력값      | 설명                           |
| ----------- | -------- | ----------- | ---------------------------- |
| 비공개 저장소 클론  | `clone`  | `action`    | `clone`으로 설정하여 클론 수행         |
|             |          | `repo-url`  | 비공개 저장소의 URL                 |
|             |          | `directory` | 저장소를 클론할 로컬 디렉토리             |
|             |          | `username`  | 인증용 사용자 이름 (`oauth2` 권장)     |
|             |          | `token`     | GitHub Personal Access Token |
| 비공개 파일 스테이징 | `add`    | `action`    | `add`로 설정하여 파일 스테이징          |
|             |          | `directory` | 작업 디렉토리                      |
|             |          | `files`     | 스테이징할 파일 목록                  |
| 상태 확인       | `status` | `action`    | `status`로 설정하여 변경 상태 확인      |
|             |          | `directory` | 작업 디렉토리                      |
| 커밋          | `commit` | `action`    | `commit`으로 설정하여 커밋 실행        |
|             |          | `directory` | 작업 디렉토리                      |
|             |          | `message`   | 커밋 메시지                       |
|             |          | `username`  | 커밋 작성자 이름                    |
|             |          | `email`     | 커밋 작성자 이메일                   |
| 푸시          | `push`   | `action`    | `push`로 설정하여 원격 저장소에 푸시      |
|             |          | `directory` | Git 저장소 경로                   |
|             |          | `username`  | 인증용 사용자 이름                   |
|             |          | `token`     | GitHub Token 또는 PAT          |
|             |          | `remote`    | 원격 저장소 이름 (`origin` 권장)      |
|             |          | `ref`       | 푸시할 브랜치 이름 (`main` 등)        |


---

## 개발 및 테스트

```bash
npm install
npm run build

```

테스트 시나리오는 `.github/workflows/test.yml`에 포함되어 있습니다.

---

## 라이선스

MIT

---

# nogit-action

`nogit-action` is a GitHub Action that allows you to perform Git operations without requiring the `git` CLI.
It uses the Node.js-based `isomorphic-git` library to execute commands like clone, commit, and push.

---

## Features

- No need for Git CLI
- Supports public and private repositories
- Supports authentication via GitHub Token (PAT)
- Optimized for GitHub Actions workflow

---

## Use Cases

- When Git operations are needed in a custom GitHub Actions runner where the Git CLI is not installed
- When working in Docker images or WASM-based runtimes where using a Git CLI is not possible
- During CI/CD pipelines where steps require `clone`, `commit`, or `push`
- In environments where installing the Git binary is restricted for security or compliance reasons
- To automate Git operations entirely in a Node.js environment within GitHub Actions

---

## Example Usage

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Clone repository using nogit-action
        uses: KangYoungIn/nogit-action@v1
        with:
          action: clone
          repo-url: <https://github.com/KangYoungIn/private-repo.git>
          directory: ./repo
          username: oauth2
          token: ${{ secrets.GIT_TOKEN }}

```

---

## Supported Actions

| Action | Description |
| --- | --- |
| `clone` | Clone a Git repository |
| `checkout` | Switch to or create a branch |
| `add` | Stage files |
| `commit` | Create a commit |
| `push` | Push to remote repository |
| `log` | Display commit logs |
| `status` | Show status of working directory |
| `fetch` | Fetch remote references |

---

## Inputs

| Name | Required | Description |
| --- | --- | --- |
| `action` | Yes | Git command to run (`clone`, `commit`, etc.) |
| `repo-url` | No | Repository URL for cloning |
| `directory` | Yes | Local working directory |
| `username` | No | Username for authentication (`oauth2` default) |
| `token` | No | GitHub Token or Personal Access Token |
| `email` | No | Commit author email address |
| `files` | No | Files to add/commit (newline-separated) |
| `message` | No | Commit message |
| `ref` | No | Branch or tag name |
| `remote` | No | Remote name (`origin` by default) |

---

## Authentication

- Public repositories can be cloned without authentication
- Private repos or push require authentication

```yaml
with:
  username: oauth2
  token: ${{ secrets.GIT_TOKEN }}

```

> Use conventional usernames like oauth2 or x-access-token
> 
> 
> Classic PAT: requires `repo` scope
> Fine-grained PAT: requires repo access + `contents: write` permission
> 

---

## Private Repository Workflow Example

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
      - name: Clone private repository
        uses: KangYoungIn/nogit-action@v1
        with:
          action: clone
          repo-url: <https://github.com/KangYoungIn/private.git>
          directory: ./my-repo
          username: oauth2
          token: ${{ secrets.GIT_TOKEN }}

      - name: Create a file
        run: echo "Hello" > ./my-repo/hello.txt

      - name: Stage file
        uses: KangYoungIn/nogit-action@v1
        with:
          action: add
          directory: ./my-repo
          files: |
            hello.txt

      - name: Commit changes
        uses: KangYoungIn/nogit-action@v1
        with:
          action: commit
          directory: ./my-repo
          message: "Add hello.txt"
          username: nogit-bot
          email: nogit@localhost

      - name: Push changes
        uses: KangYoungIn/nogit-action@v1
        with:
          action: push
          directory: ./my-repo
          username: oauth2
          token: ${{ secrets.GIT_TOKEN }}

```

---

## Development & Testing

```bash
npm install
npm run build

```

Test scenarios are defined in `.github/workflows/test.yml`.

---

## License

MIT
