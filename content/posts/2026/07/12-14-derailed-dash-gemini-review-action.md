---
title: Dazbos Gemini Review & Triage
date: 2026-07-12 14:49:14 +00:00
tags:
  - derailed-dash
  - GitHub Actions
draft: false
repo: https://github.com/derailed-dash/gemini-review-action
marketplace: https://github.com/marketplace/actions/dazbo-s-gemini-review-triage
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/derailed-dash/gemini-review-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dazbo-s-gemini-review-triage) to find the latest changes.

## What's Changed

## 🔎 Dazbo's Gemini Review & Triage Action

Automated, Google Gemini-based Pull Request reviews and Issue Triaging for all your GitHub repositories and CI/CD pipelines.

> [!IMPORTANT]
> **Migrating from deprecated Gemini tools?** This action is built as a direct, drop-in replacement for **`run-gemini-cli`**, as well as any workflows previously built on the deprecated **Gemini CLI** or **Gemini Agent Assist** products.

### Key Features

* 🚀 **Drop-in Migration:** Fully compatible replacement for legacy `run-gemini-cli` workflows.
* 🧠 **AI-Powered Code Reviews:** Automated, constructive line-specific feedback on Pull Requests using Google Gemini (Gemini 3.5 Flash by default).
* 🌍 **Configurable Language:** Get review comments written in your preferred language (defaults to `English (UK)`).
* 🏷️ **Automated Issue Triage:** Dynamically labels, prioritizes, and categorizes incoming issues based on their title and body context.
* 🔒 **Enterprise-Grade Security:** Supports flexible authentication via either a Gemini API Key (from AI Studio) or Google Cloud Workload Identity Federation (WIF).
* 💬 **Interactive Suggestions:** Formats code recommendations inside native GitHub ` ```suggestion ` blocks for one-click merge applications on Pull Requests.
* 🛠️ **Customisable Prompts:** Supports repository-specific overrides for both reviews and triaging via simple TOML config files.

### Getting Started

To add this Action to your repository workflow, please check the step-by-step setup guides and configuration options in the [project's README](https://github.com/derailed-dash/gemini-review-action#readme).
