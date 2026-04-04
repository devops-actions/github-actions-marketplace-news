---
title: CodeReview Agent
date: 2026-04-04 06:09:13 +00:00
tags:
  - wanghenan
  - GitHub Actions
draft: false
repo: https://github.com/wanghenan/codereview-agent
marketplace: https://github.com/marketplace/actions/codereview-agent
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wanghenan/codereview-agent** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codereview-agent) to find the latest changes.

## Action Summary

**CodeReview Agent** is an AI-powered GitHub Action and CLI tool designed to automate code reviews by analyzing code changes, identifying security risks, and highlighting quality issues with confidence scores. It supports both human developers and AI agents, offering structured JSON outputs, semantic exit codes, and automated decision-making capabilities, making it ideal for integration into CI/CD pipelines. Key features include multi-LLM support, intelligent code risk detection, automated fixes, and seamless integration with AI agents like GPT and Claude for enhanced efficiency and reliability.

## What's Changed

## v1.1.0 - AI Agent 友好 + 全功能增强

> 🎯 **本版本重点**：CLI 全面适配 AI Agent 调用，Claude、GPT、Cursor 等可直接使用结构化 JSON + 语义退出码进行代码审查和自动修复。

---

### 🤖 AI Agent 友好 CLI（新）

CLI 现已原生支持 AI Agent 调用，提供**双模式**体验：

```bash
# 👨‍💻 人类模式 —— 可读输出，emoji，交互确认
python -m codereview.cli --diff '{"files": [...]}'

# 🤖 Agent 模式 —— 结构化 JSON + 语义退出码
python -m codereview.cli --json --diff '{"files": [...]}'
```

| 特性 | 说明 |
|------|------|
| **结构化 JSON 错误** | 即使出错也输出有效 JSON 到 stderr，Agent 永远不会解析失败 |
| **语义化退出码** | 0=成功, 1=发现问题, 2=配置错误, 3=LLM错误, 4=网络错误, 5=未知错误 |
| **schema_version** | 所有 JSON 输出包含 `"schema_version": "1.1"`，Agent 可适配不同版本 |
| **fix_available** | 每个问题标记是否有可用修复建议，Agent 可自动决策是否修复 |

**JSON 输出示例：**

成功时（stdout）：
```json
{
  "schema_version": "1.1",
  "result": { "files_reviewed": [...], "confidence": 85 },
  "outputs": { ... }
}
```

失败时（stderr，依然是有效 JSON）：
```json
{
  "schema_version": "1.1",
  "success": false,
  "error": { "type": "config_error", "message": "api_key is required", "exit_code": 2 }
}
```

**AI Agent 提示词模板：**

```
你是一个代码审查助手。请执行以下步骤：
1. 运行 `python -m codereview.cli --json --diff '<diff_json>'` 审查代码
2. 如果退出码为 0，报告"代码审查通过"
3. 如果退出码为 1，解析 JSON，筛选 fix_available: true 的问题
4. 对可修复的问题，运行 `python -m codereview.cli fix --apply --yes`
5. 如果退出码为 2-5，根据 error.type 向用户报告具体错误
```

---

### 🔧 CLI 增强

| 标志 | 说明 |
|------|------|
| `--version` | 显示版本号 |
| `--list-rules` | 列出所有 30 条检测规则（表格或 JSON） |
| `--disable-rule <ID>` | 禁用特定规则（支持逗号分隔多个） |
| `--clear-cache [--yes]` | 清除缓存目录 |
| `--verbose / --quiet / --log-level` | 日志级别控制 |
| `--no-cache` | 禁用文件级缓存 |
| `--output / --branch / --base-branch` | 输出和分支控制 |

### 🛡️ LLM 高级功能

- **Fallback Chain** - 主 Provider 失败时自动切换备用（最多 3 次）
- **Rate Limit 检测** - 自动识别 HTTP 429 和速率限制错误
- **指数退避** - 1s → 2s → 4s 自动重试
- **Provider 支持** - OpenAI / Anthropic / 智谱AI / MiniMax / 阿里云 / DeepSeek

### 🧪 测试覆盖

- **508 个测试全部通过**（480 原有 + 28 新增 AI Agent 测试）

### 📝 文档更新

- README 重构 — AI Agent 友好提到首位，突出双模式使用
- 新增 CLI 命令速查和配置选项说明

---

### 📦 升级方式

```bash
# GitHub Action（自动获取最新 v1.x）
- uses: wanghenan/codereview-agent@v1

# CLI
pip install --upgrade codereview-agent

# Docker
docker pull wanghenan/codereview-agent:v1.1.0
```

---

**Full Changelog**: https://github.com/wanghenan/codereview-agent/compare/v1.0.1...v1.1.0

