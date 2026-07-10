---
title: Local Mac iOS Build Action
date: 2026-07-10 15:10:30 +00:00
tags:
  - local-mac-ci-cluster
  - GitHub Actions
draft: false
repo: https://github.com/local-mac-ci-cluster/local-mac-runner-action
marketplace: https://github.com/marketplace/actions/local-mac-ios-build-action
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/local-mac-ci-cluster/local-mac-runner-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/local-mac-ios-build-action) to find the latest changes.

## What's Changed

# Local Mac CI Cluster

GitHub Marketplace 一键接入自有本地Mac CI集群工具

## 功能说明

本Action用于组织内部所有业务仓库快速接入自建10台Apple Silicon Mac算力池，**无需修改原有 workflow 的 runs-on: macos-latest 配置**，一行代码即可零成本切换本地自建Mac构建，不再消耗GitHub官方付费云Mac资源。

## 快速接入教程

### 1. workflow顶部引入本Action

无需配置任何密钥、凭证，仅增加一行uses语句即可生效。

### 完整业务workflow参考示例

\`\`\`yaml
name: iOS项目构建测试
on: [push]

jobs:
  build_task:
    runs-on: macos-latest
    steps:
      - uses: local-mac-ci-cluster/local-mac-runner-action@v1
      - uses: actions/checkout@v4
      - name: 本地环境校验
        run: sw_vers && xcodebuild -version
\`\`\`

## 集群硬件信息

| 项目 | 规格 |
|------|------|
| 机器总量 | 10 台 Apple Silicon Mac Mini |
| Runner 标签 | `macos-latest,self-hosted,m4` |
| 调度策略 | GitHub 原生自动负载均衡 |

## 常见问题

**Q：流水线仍跑官方云 Mac？**  
A：检查本地 Mac Runner 是否处于 Idle 空闲状态。

**Q：任务无法调度至本地机器？**  
A：确认 workflow runs-on 标签为 `macos-latest`。

**Full Changelog**: https://github.com/local-mac-ci-cluster/local-mac-runner-action/commits/v1.0.0
