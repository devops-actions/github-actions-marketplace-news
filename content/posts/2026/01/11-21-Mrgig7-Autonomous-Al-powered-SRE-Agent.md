---
title: SRE Agent - Failure Analysis
date: 2026-01-11 21:29:05 +00:00
tags:
  - Mrgig7
  - GitHub Actions
draft: false
repo: https://github.com/Mrgig7/Autonomous-Al-powered-SRE-Agent
marketplace: https://github.com/marketplace/actions/sre-agent-failure-analysis
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Mrgig7/Autonomous-Al-powered-SRE-Agent** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sre-agent-failure-analysis) to find the latest changes.

## Action Summary

The Autonomous AI-powered SRE Agent is a self-healing CI/CD platform designed to detect, diagnose, and resolve build failures automatically. It leverages AI to identify issues in real-time, analyze root causes, generate safe code fixes, and validate them in isolated environments before creating pull requests with detailed explanations. This action streamlines CI/CD processes, reduces manual debugging efforts, and improves development efficiency by minimizing downtime and human intervention.

## Release notes

# 🚀 SRE Agent v1.0.0 - Self-Healing CI/CD Platform

**Autonomous AI-powered SRE Agent** that transforms your CI/CD pipelines into self-healing systems.

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| ✅ **Auto Failure Detection** | Real-time monitoring of all workflow runs |
| 🔍 **AI Root Cause Analysis** | Uses LLMs (Ollama, OpenAI) to analyze failure logs |
| 🔧 **Intelligent Fix Suggestions** | AI-generated code fixes with explanations |
| 🔄 **Auto PR Creation** | Automatically creates PRs with suggested fixes |
| 📢 **Multi-Channel Notifications** | Slack, Teams, Email, PagerDuty, Webhooks |
| 🔐 **Enterprise RBAC** | Role-based access control (Viewer, Operator, Admin) |
| 📊 **Real-time Dashboard** | React-based UI with live SSE updates |
| 📝 **Audit Logging** | Complete audit trail for compliance |

---

## 🔌 Supported CI/CD Platforms

- ✅ GitHub Actions
- ✅ GitLab CI
- ✅ CircleCI
- ✅ Jenkins
- ✅ Azure DevOps

---

## 📦 Installation Options

### Option 1: GitHub Action (Easiest)

Add to any repository in 30 seconds:

```yaml
# .github/workflows/sre-agent.yml
name: SRE Agent
on:
  workflow_run:
    workflows: ["*"]
    types: [completed]

jobs:
  analyze:
    if: ${{ github.event.workflow_run.conclusion == 'failure' }}
    runs-on: ubuntu-latest
    steps:
      - uses: Mrgig7/Autonomous-AI-powered-SRE-Agent@v1.0.0
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

### Option 2: Docker Compose (Self-Hosted)

```bash
git clone https://github.com/Mrgig7/Autonomous-AI-powered-SRE-Agent.git
cd Autonomous-AI-powered-SRE-Agent
cp .env.example .env
docker-compose up -d
```

### Option 3: Local Development

```bash
poetry install
poetry run uvicorn sre_agent.main:app --reload
```

---

## 🏗️ Architecture

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│   CI/CD Event   │────▶│   SRE Agent     │────▶│   LLM Engine    │
│   (Webhook)     │     │   (FastAPI)     │     │   (Ollama/GPT)  │
└─────────────────┘     └────────┬────────┘     └─────────────────┘
                                 │
                    ┌────────────┼────────────┐
                    ▼            ▼            ▼
              ┌──────────┐ ┌──────────┐ ┌──────────┐
              │  Slack   │ │  Teams   │ │ PagerDuty│
              └──────────┘ └──────────┘ └──────────┘
```

---

## 📚 Documentation

- 📖 [Quick Start Guide](https://github.com/Mrgig7/Autonomous-AI-powered-SRE-Agent/blob/main/QUICKSTART.md)
- 📘 [Full README](https://github.com/Mrgig7/Autonomous-AI-powered-SRE-Agent/blob/main/README.md)
- 🔧 [Configuration](https://github.com/Mrgig7/Autonomous-AI-powered-SRE-Agent/blob/main/.env.example)

---

## 🆕 What's New in v1.0.0

- Initial public release
- Multi-platform CI/CD support (GitHub, GitLab, CircleCI, Jenkins, Azure DevOps)
- AI-powered failure analysis and fix generation
- Multi-channel notification system
- Enterprise RBAC and authentication
- React dashboard with real-time updates
- Docker and GitHub Action deployment options

---

## 📄 License

MIT License - Use freely in personal and commercial projects.

---

**Made with ❤️ for DevOps teams everywhere**

