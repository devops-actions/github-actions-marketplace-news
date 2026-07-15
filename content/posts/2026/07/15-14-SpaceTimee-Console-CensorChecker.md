---
title: Console CensorChecker
date: 2026-07-15 14:52:01 +00:00
tags:
  - SpaceTimee
  - GitHub Actions
draft: false
repo: https://github.com/SpaceTimee/Console-CensorChecker
marketplace: https://github.com/marketplace/actions/console-censorchecker
version: 1.1.4.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, Console-CensorChecker, is a PowerShell-based Tcping batch probe and review detection script designed to check the availability of monitoring services and detect network censorship. It supports multiple platforms and can be installed via PowerShell Module or invoked as a command in PowerShell scripts or within a workflow using GitHub Actions.
---


Version updated for **https://github.com/SpaceTimee/Console-CensorChecker** to version **1.1.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/console-censorchecker) to find the latest changes.

## Action Summary

This GitHub Action, Console-CensorChecker, is a PowerShell-based Tcping batch probe and review detection script designed to check the availability of monitoring services and detect network censorship. It supports multiple platforms and can be installed via PowerShell Module or invoked as a command in PowerShell scripts or within a workflow using GitHub Actions.

## What's Changed

1. 添加 App 静态字段 root，点源时赋值为模块目录
2. 修改 Target.txt / Provider.js 路径为基于 [App]::root
3. 修改 Start-Process 参数为数组形式传入
4. 移除 ConvertFrom-Json 上多余的 -ErrorAction Stop
5. 修改进程等待为 Wait-Process
6. 修改部分入口脚本编码风格
7. 移除 Copy-Item 的 -Destination 参数名
