---
title: Control multi version action
date: 2023-08-15 18:42:21 +00:00
tags:
  - Seungmin-develop
  - GitHub Actions
draft: false
repo: Seungmin-develop/multi-version-control-action
marketplace: https://github.com/marketplace/actions/control-multi-version-action
version: v1.0.0
dependentsNumber: '?'
---


Version updated for **Seungmin-develop/multi-version-control-action** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/control-multi-version-action) to find the latest changes.

## Release notes

안드로이드 멀티 버전 관리 액션 v1.0.0 입니다.

- 빌드 환경별 VersionCode와 VersionName을 관리해야 하는 경우가 있습니다. 이 액션을 이용하면 원하는 빌드 환경(최대 3개까지 지원)의 버전을 선택해 관리할 수 있습니다.
- 기본적으로 VersionName은 SemVer를 따라 major.minor.patch의 형태로 관리하는 경우에 이 액션을 사용할 수 있으며, pull request에서 label을 이용하여 - 버전 증가를 원하는 빌드 환경을 선택하고 major, minor, patch 중 어떠한 버전을 증가시킬지 선택할 수 있습니다.
VersionCode의 경우, 선택한 빌드 스테이지의 VersionCode가 1씩 증가하는 형태로 액션이 동작합니다.
