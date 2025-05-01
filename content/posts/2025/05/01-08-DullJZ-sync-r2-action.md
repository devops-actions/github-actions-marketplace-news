---
title: 通过 rclone 同步文件到 Cloudflare R2
date: 2025-05-01 08:59:15 +00:00
tags:
  - DullJZ
  - GitHub Actions
draft: false
repo: https://github.com/DullJZ/sync-r2-action
marketplace: https://github.com/marketplace/actions/rclone-cloudflare-r2
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/DullJZ/sync-r2-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rclone-cloudflare-r2) to find the latest changes.

## Release notes

# 通过 rclone 同步文件到 Cloudflare R2

这是本 Action 的首个正式版本，提供了一个简单而强大的方式，让你能够将 GitHub 仓库中的文件轻松同步到 Cloudflare R2 存储桶。

## 主要功能

- 使用 `rclone` 进行高效的云存储操作
- 支持配置源目录和目标目录
- 提供 `sync`（镜像源，删除目标中多余文件）和 `copy`（仅添加/更新文件）两种模式
- 支持自定义文件过滤器（默认为常见图片格式）
- 允许传递额外的 `rclone` 标志参数
- 使用提供的 R2 凭证即时配置 `rclone`

