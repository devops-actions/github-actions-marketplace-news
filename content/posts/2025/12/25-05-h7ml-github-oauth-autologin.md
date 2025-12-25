---
title: GitHub OAuth Auto Login
date: 2025-12-25 05:24:47 +00:00
tags:
  - h7ml
  - GitHub Actions
draft: false
repo: https://github.com/h7ml/github-oauth-autologin
marketplace: https://github.com/marketplace/actions/github-oauth-auto-login
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/h7ml/github-oauth-autologin** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-oauth-auto-login) to find the latest changes.

## Action Summary

The GitHub OAuth Auto Login Action automates the process of logging into GitHub and other OAuth-enabled sites, handling 2FA authentication methods such as device verification, GitHub Mobile, and TOTP. It simplifies workflows by managing cookies, updating GitHub Secrets, and providing real-time Telegram notifications for authentication. This tool is ideal for streamlining CI/CD pipelines and enabling seamless integration with multiple platforms.

## Release notes

## 🎉 首个正式版本发布

### ✨ 核心功能

- **通用 GitHub OAuth 登录**：支持任意使用 GitHub OAuth 的 SaaS 平台
- **完善的 2FA 处理**：设备验证、GitHub Mobile、TOTP 全面支持
- **Telegram 集成**：实时通知 + 双向通信（接收验证码）
- **Cookie 持久化**：自动更新 GitHub Secret，避免频繁 2FA
- **可复用 GitHub Action**：供其他项目集成使用

### 📦 项目架构

```
核心层（core/）
├── github_auth.py      # GitHub 认证与 2FA
├── oauth_handler.py    # OAuth 流程控制
├── cookie_manager.py   # Cookie 管理
└── types.py            # 类型定义

业务层（sites/）
├── base.py             # 站点适配器基类
└── clawcloud.py        # ClawCloud 实现

通知层（notifiers/）
└── telegram.py         # Telegram 通知器

配置层（config/）
└── sites.yaml          # 站点配置
```

### 🚀 快速开始

#### 方式 1：完整工作流（登录 + 保活）

```bash
export GH_USERNAME="your_username"
export GH_PASSWORD="your_password"
python main.py clawcloud
```

#### 方式 2：作为可复用 Action

```yaml
- uses: h7ml/github-oauth-autologin@v1
  with:
    username: ${{ secrets.GH_USERNAME }}
    password: ${{ secrets.GH_PASSWORD }}
    session_cookie: ${{ secrets.GH_SESSION }}
    repo_token: ${{ secrets.REPO_TOKEN }}
    repository: ${{ github.repository }}
```

### 📚 文档

- [用户指南](https://github.com/h7ml/github-oauth-autologin/blob/master/README.md)
- [技术文档](https://github.com/h7ml/github-oauth-autologin/blob/master/CLAUDE.md)
- [配置示例](https://github.com/h7ml/github-oauth-autologin/blob/master/config/sites.yaml)

### 🙏 致谢

项目灵感来自 [oyz8/ClawCloud-Run](https://github.com/oyz8/ClawCloud-Run)

### 📝 完整变更

详见 [CHANGELOG.md](https://github.com/h7ml/github-oauth-autologin/blob/master/CHANGELOG.md)

---

**作者**: [h7ml](https://github.com/h7ml)  
**许可证**: MIT
