---
title: Pipeline Healer
date: 2026-02-24 13:23:19 +00:00
tags:
  - JAI0705
  - GitHub Actions
draft: false
repo: https://github.com/JAI0705/DevOps_Pipeline_healer_agent
marketplace: https://github.com/marketplace/actions/pipeline-healer
version: v1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/JAI0705/DevOps_Pipeline_healer_agent** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-healer) to find the latest changes.

## Action Summary

The **DevOps Pipeline Healer Agent** is an AI-powered GitHub Action that automates the detection, analysis, and resolution of failed GitHub Actions workflows. It identifies the root cause of failures, generates intelligent fixes, and creates pull requests with the proposed solutions, reducing downtime and manual debugging efforts. This action simplifies maintaining reliable CI/CD pipelines by providing self-healing capabilities for workflow errors.

## Release notes

# 🔧 Pipeline Healer v1.0.0

AI-powered GitHub Action that **automatically fixes failed CI/CD pipelines** and opens pull requests with the fix.

## ✨ What it does

When your GitHub Actions workflow fails, Pipeline Healer:
1. 📥 Fetches the error logs
2. 🔍 Analyzes the root cause using AI (Groq Llama 3.3 70B)
3. 🔧 Generates an intelligent code fix
4. 🌿 Creates a branch and commits the fix
5. 📝 Opens a pull request for your review

## 🚀 Quick Start

**1.** Add `GROQ_API_KEY` to your repo secrets (get one free at [console.groq.com](https://console.groq.com))

**2.** Create `.github/workflows/auto-heal.yml`:

```yaml
name: 🔧 Auto-Heal Pipeline
on:
  workflow_run:
    workflows: ["*"]
    types: [completed]

jobs:
  heal:
    if: ${{ github.event.workflow_run.conclusion == 'failure' }}
    runs-on: ubuntu-latest
    permissions:
      contents: write
      pull-requests: write
    steps:
      - uses: JAI0705/DevOps_Pipeline_healer_agent@v1
        with:
          groq-api-key: ${{ secrets.GROQ_API_KEY }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
