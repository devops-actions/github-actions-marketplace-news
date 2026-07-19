---
title: Console CensorChecker
date: 2026-07-19 14:34:52 +00:00
tags:
  - SpaceTimee
  - GitHub Actions
draft: false
repo: https://github.com/SpaceTimee/Console-CensorChecker
marketplace: https://github.com/marketplace/actions/console-censorchecker
version: 1.1.4.55
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Console CensorChecker**: 这是一个基于 PowerShell 的 TCPing 批量拨测脚本，主要用于检查网络是否被审查设备拦截。它适用于任何平台，并且旨在帮助开发者监控和测试服务的可用性，同时遵守相关法律法规。通过该脚本，用户可以自动化检测目标主机的响应时间，以便在潜在的审查环境中进行验证。
---


Version updated for **https://github.com/SpaceTimee/Console-CensorChecker** to version **1.1.4.55**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/console-censorchecker) to find the latest changes.

## Action Summary

**Console CensorChecker**: 这是一个基于 PowerShell 的 TCPing 批量拨测脚本，主要用于检查网络是否被审查设备拦截。它适用于任何平台，并且旨在帮助开发者监控和测试服务的可用性，同时遵守相关法律法规。通过该脚本，用户可以自动化检测目标主机的响应时间，以便在潜在的审查环境中进行验证。

## What's Changed

1. 添加 Test Checker 工作流
2. 添加 Module、Script、MCPB 的发布工作流
3. 添加 Check Censor 工作流
4. 修改 Invoke-Check 输出为 target-latency 键值对
5. 修改 Action 结果聚合为 hashtable 合并
6. 修改 App 结果对象构造为普通 hashtable 属性袋
7. 移除 Action 中的无效依赖
