---
title: Logytics
date: 2026-06-19 22:24:02 +00:00
tags:
  - logytics
  - GitHub Actions
draft: false
repo: https://github.com/logytics/action
marketplace: https://github.com/marketplace/actions/logytics
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/logytics/action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/logytics) to find the latest changes.

## What's Changed

# Logytics v1.0.0

  AI-powered GitHub Actions failure analysis. Get instant, developer-friendly explanations for CI failures.

  ## Features

  - 🔍 **Automatic failure detection** - Runs only when steps fail
  - 🧹 **Smart log cleaning** - Removes noise, keeps errors and stack traces
  - 🤖 **AI analysis** - Identifies root cause and suggests fixes
  - 📋 **GitHub Summary output** - Clean, readable results in your workflow summary

  ## Quick Start
  
  ```yaml
  - uses: logytics/action@v1
    if: failure()
    with:
      openai-api-key: ${{ secrets.OPENAI_API_KEY }}

  What You Get

  When a step fails, Logytics provides:
  - Root Cause - What went wrong
  - Key Error - The actual error message
  - Suggested Fix - Actionable solution
  - Confidence Score - How certain the AI is

  Requirements

  - OpenAI API key
  - Node.js 20+ runner

  ---
